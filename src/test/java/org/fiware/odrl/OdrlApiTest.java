package org.fiware.odrl;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import io.agroal.api.AgroalDataSource;
import io.quarkus.test.common.QuarkusTestResource;
import io.quarkus.test.h2.H2DatabaseTestResource;
import io.quarkus.test.junit.QuarkusTest;
import jakarta.inject.Inject;
import jakarta.persistence.EntityManager;
import jakarta.transaction.Transactional;
import jakarta.ws.rs.WebApplicationException;
import jakarta.ws.rs.core.MultivaluedMap;
import jakarta.ws.rs.core.Response;
import lombok.extern.slf4j.Slf4j;
import org.awaitility.Awaitility;
import org.eclipse.microprofile.rest.client.inject.RestClient;
import org.fiware.odrl.model.HttpRequest;
import org.fiware.odrl.model.KongOpaInput;
import org.fiware.odrl.model.MockEntity;
import org.fiware.odrl.model.Request;
import org.fiware.odrl.persistence.PolicyEntity;
import org.fiware.odrl.resources.InjectMockServerClient;
import org.fiware.odrl.resources.InjectOpa;
import org.fiware.odrl.resources.MockServerTestResource;
import org.fiware.odrl.resources.OpenPolicyAgentTestResource;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.MethodSource;
import org.mockserver.client.MockServerClient;
import org.openapi.quarkus.opa_yaml.api.HealthApiApi;
import org.openapi.quarkus.opa_yaml.api.PolicyApiApi;
import org.openapi.quarkus.opa_yaml.api.QueryApiApi;
import org.testcontainers.containers.GenericContainer;

import java.io.IOException;
import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.junit.jupiter.api.Assertions.fail;


/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Slf4j
@QuarkusTest
@QuarkusTestResource(OpenPolicyAgentTestResource.class)
@QuarkusTestResource(H2DatabaseTestResource.class)
@QuarkusTestResource(MockServerTestResource.class)
public class OdrlApiTest extends OdrlTest {

    @InjectOpa
    private GenericContainer opaContainer;

    @InjectMockServerClient
    public MockServerClient mockServerClient;

    @Inject
    private EntityManager entityManager;

    @Inject
    private ObjectMapper objectMapper;
    @Inject
    private PolicyResource policyResource;

    @Inject
    private AgroalDataSource dataSource;

    @RestClient
    public PolicyApiApi opaPolicyApi;

    @RestClient
    public QueryApiApi queryApi;

    @RestClient
    public HealthApiApi healthApi;

    @BeforeEach
    @Transactional
    public void reset() {
        opaContainer.stop();
        log.info(opaContainer.getLogs());
        opaContainer.start();
        Awaitility.await()
                .pollInterval(Duration.ofSeconds(2l))
                .atMost(Duration.ofSeconds(30l))
                .until(this::checkOpaHealth);
    }

    @AfterEach
    @Transactional
    public void clean() {
        PolicyEntity.deleteAll();
    }

    @ParameterizedTest
    @MethodSource("odrlPolicyPath")
    public void testCreationOfValidPolicy(String policyPath) throws IOException {
        Map<String, Object> theOdrl = getJsonFromResource(objectMapper, policyPath);
        Response policyResponse = policyResource.createPolicyWithId("test", theOdrl);
        assertValidPolicy(policyResponse);
    }


    @ParameterizedTest
    @MethodSource("odrlPolicies")
    public void testCreationOfMultiplePolicies(List<String> policyPaths) throws IOException {
        createAndAssertPolicies(policyPaths);
    }

    private void createAndAssertPolicies(List<String> policyPaths) throws IOException {
        List<String> policyIds = new ArrayList<>();
        for (String policyPath : policyPaths) {
            Map<String, Object> theOdrl = getJsonFromResource(objectMapper, policyPath);
            Response policyResponse = policyResource.createPolicy(theOdrl);
            policyIds.add(assertValidPolicy(policyResponse));
        }
        assertMainPolicy(policyIds);
    }

    private void assertMainPolicy(List<String> expectedPolicies) {
        Awaitility.await()
                .pollInterval(Duration.ofSeconds(1l))
                .atMost(Duration.ofSeconds(30L))
                .until(() -> {
                    try {
                        Response r = opaPolicyApi.getPolicyModule("policies/policy/main.rego", true);
                        if (r.getStatus() != 200) {
                            return false;
                        }
                        String mainPolicy = r.readEntity(String.class);
                        boolean mainIsReady = expectedPolicies.stream().filter(pid -> !mainPolicy.contains(pid)).findAny().isEmpty();
                        if (mainIsReady) {
                            log.info("Current main policy: {}", mainPolicy);
                        }
                        return mainIsReady;
                    } catch (RuntimeException e) {
                        return false;
                    }
                });
    }

    public Map<String, Object> getJsonFromResource(ObjectMapper objectMapper, String path) throws IOException {
        return objectMapper.readValue(this.getClass().getResourceAsStream(path), new TypeReference<Map<String, Object>>() {
        });
    }
    @ParameterizedTest
    @MethodSource("validCombinations")
    public void testSuccessfullRequest(List<String> policyPaths, HttpRequest theRequest, MockEntity mockEntity) throws IOException, InterruptedException {
        Request request = new Request();
        request.setHttp(theRequest);
        KongOpaInput kongOpaInput = new KongOpaInput();
        kongOpaInput.setRequest(request);

        createAndAssertPolicies(policyPaths);
        Map<String, Object> opaInputRequest = objectMapper.convertValue(kongOpaInput, new TypeReference<Map<String, Object>>() {
        });

        mockEntity(mockServerClient, mockEntity);
        Response response = queryApi.postSimpleQuery(opaInputRequest, true);
        assertEquals(200, response.getStatus(), "The query should have been successfully evaluated.");
        assertTrue(response.readEntity(Boolean.class), "The request should have succeeded.");
    }


    public String assertValidPolicy(Response policyResponse) {
        Assertions.assertEquals(200, policyResponse.getStatus());
        MultivaluedMap<String, Object> headers = policyResponse.getHeaders();
        Assertions.assertNotNull(headers.get("Location"), "The location header should have been set.");
        Object headerObject = policyResponse.getHeaders().get("Location").get(0);
        if (headerObject instanceof String locationString) {
            String theRego = policyResponse.readEntity(String.class);
            Assertions.assertNotNull(theRego, "The policy should have been returned as rego.");
            log.info("The rego: {}", theRego);
            Awaitility.await()
                    .pollInterval(Duration.ofSeconds(1l))
                    .atMost(Duration.ofSeconds(30L))
                    .until(() -> {
                        try {
                            Response r = opaPolicyApi.getPolicyModule(String.format("policies/policy/%s.rego", locationString), true);
                            return r.getStatus() == 200;
                        } catch (RuntimeException e) {
                            return false;
                        }
                    });
            return locationString;
        } else {
            fail("No valid location header was set.");
            return null;
        }
    }

    private boolean checkOpaHealth() throws JsonProcessingException {
        try {
            Response response = healthApi.getHealth(true, false, List.of());
            return response.getStatus() == 200;
        } catch (RuntimeException e) {
            if (e instanceof WebApplicationException wae) {
                log.warn("{}", wae.getResponse().readEntity(String.class));
            }
            return false;
        }
    }

}

