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
import org.apache.http.HttpStatus;
import org.awaitility.Awaitility;
import org.eclipse.microprofile.rest.client.inject.RestClient;
import org.fiware.odrl.model.*;
import org.fiware.odrl.persistence.PolicyEntity;
import org.fiware.odrl.persistence.ServiceEntity;
import org.fiware.odrl.resources.InjectMockServerClient;
import org.fiware.odrl.resources.InjectOpa;
import org.fiware.odrl.resources.MockServerTestResource;
import org.fiware.odrl.resources.OpenPolicyAgentTestResource;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.MethodSource;
import org.junit.jupiter.params.provider.ValueSource;
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

import static org.fiware.odrl.mapping.OdrlConstants.GRAPH_KEY;
import static org.fiware.odrl.mapping.OdrlConstants.ODRL_UID_KEY;
import static org.junit.jupiter.api.Assertions.*;


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
    private ServiceResource serviceResource;

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
        ServiceEntity.deleteAll();
    }

    @ParameterizedTest
    @ValueSource(strings = {"test-service", "1", "TestService", "test_service", "!=$&"})
    public void testInvalidServiceId(String invalidId) throws IOException {
        assertThrows(IllegalArgumentException.class, () -> serviceResource.createService(new ServiceCreate().id(invalidId)), "Ids with invalid contents should be rejected.");
    }

    @ParameterizedTest
    @MethodSource("odrlPolicyPath")
    public void testCreationOfValidPolicyForService(String policyPath) throws IOException {
        String serviceId = "myservice";
        Response response = serviceResource.createService(new ServiceCreate().id(serviceId));
        assertEquals(200, response.getStatus());

        Map<String, Object> theOdrl = getJsonFromResource(objectMapper, policyPath);
        Response serviceResponse = serviceResource.createServicePolicyWithId("myservice", "test", theOdrl);

        assertValidPolicy(serviceId, serviceResponse);
    }

    @ParameterizedTest
    @MethodSource("odrlPolicyPath")
    public void testCreationOfValidPolicy(String policyPath) throws IOException {
        Map<String, Object> theOdrl = getJsonFromResource(objectMapper, policyPath);
        Response policyResponse = policyResource.createPolicyWithId("test", theOdrl);
        assertValidPolicy(policyResponse);
    }

    private String getIdFromPolicy(Map<String, Object> thePolicy) {
        if (thePolicy.containsKey(ODRL_UID_KEY) && thePolicy.get(ODRL_UID_KEY) instanceof String uidString) {
            return uidString;
        }
        if (thePolicy.containsKey(GRAPH_KEY) && thePolicy.get(GRAPH_KEY) instanceof List<?> theGraph) {
            // as of now, we dont have multi-policy graph examples.
            return getIdFromPolicy((Map<String, Object>) theGraph.get(0));
        }
        throw new IllegalArgumentException("No id in policy.");
    }

    @ParameterizedTest
    @MethodSource("odrlPolicyPath")
    public void testPolicyRetrieval(String policyPath) throws IOException {
        Map<String, Object> theOdrl = getJsonFromResource(objectMapper, policyPath);
        String regoId = "test";
        String odrlId = getIdFromPolicy(theOdrl);

        policyResource.createPolicyWithId(regoId, theOdrl);

        Response policyByIdResponse = policyResource.getPolicyById(regoId);
        assertEquals(policyByIdResponse.getStatus(), HttpStatus.SC_OK, "The request should have been successfully responded.");
        Policy policyById = policyByIdResponse.readEntity(Policy.class);
        assertEquals(regoId, policyById.getId(), "The correct policy should have been returned.");
        assertEquals(odrlId, policyById.getOdrlColonUid(), "The correct policy should have been returned.");
        assertNotNull(policyById.getOdrl(), "The odrl should be contained");
        assertNotNull(policyById.getRego(), "The rego should be contained");

        Response policyByOdrlIdResponse = policyResource.getPolicyById(regoId);
        assertEquals(policyByOdrlIdResponse.getStatus(), HttpStatus.SC_OK, "The request should have been successfully responded.");
        Policy policyByOdrlId = policyByIdResponse.readEntity(Policy.class);
        assertEquals(regoId, policyByOdrlId.getId(), "The correct policy should have been returned.");
        assertEquals(odrlId, policyByOdrlId.getOdrlColonUid(), "The correct policy should have been returned.");
        assertNotNull(policyByOdrlId.getOdrl(), "The odrl should be contained");
        assertNotNull(policyByOdrlId.getRego(), "The rego should be contained");
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
        return assertValidPolicy("policy", policyResponse);
    }

    public String assertValidPolicy(String packageName, Response policyResponse) {
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
                            Response r = opaPolicyApi.getPolicyModule(String.format("policies/%s/%s.rego", packageName, locationString), true);
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

