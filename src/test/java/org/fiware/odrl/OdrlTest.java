package org.fiware.odrl;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import io.quarkus.test.common.QuarkusTestResource;
import io.quarkus.test.junit.QuarkusTest;
import jakarta.inject.Inject;
import jakarta.ws.rs.WebApplicationException;
import jakarta.ws.rs.core.Response;
import lombok.extern.slf4j.Slf4j;
import org.awaitility.Awaitility;
import org.eclipse.microprofile.rest.client.inject.RestClient;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;
import org.openapi.quarkus.opa_yaml.api.HealthApiApi;
import org.openapi.quarkus.opa_yaml.api.PolicyApiApi;
import org.testcontainers.containers.GenericContainer;

import java.io.IOException;
import java.time.Duration;
import java.util.List;
import java.util.Map;
import java.util.stream.Stream;


/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Slf4j
@QuarkusTest
@QuarkusTestResource(OpenPolicyAgentTestResource.class)
public class OdrlTest {

    @InjectOpa
    private GenericContainer opaContainer;

    @Inject
    private ObjectMapper objectMapper;
    @Inject
    private PolicyResource policyResource;

    @RestClient
    public PolicyApiApi opaPolicyApi;

    @RestClient
    public HealthApiApi healthApiApi;

    @BeforeEach
    public void resetOpa() {
        opaContainer.stop();
        opaContainer.start();
        Awaitility.await()
                .pollInterval(Duration.ofSeconds(2l))
                .atMost(Duration.ofSeconds(30l))
                .until(this::checkOpaHealth);
    }

    @ParameterizedTest
    @MethodSource("odrlPolicies")
    public void testCreationOfValidPolicy(String policyPath) throws IOException {
        Map<String, Object> theOdrl = getPolicyFromResource(policyPath);
        String theRego = policyResource.createPolicyWithId("test", theOdrl);
        Assertions.assertNotNull(theRego, "The policy should have been returned as rego.");
        log.info("The rego: {}", theRego);
        Awaitility.await()
                .pollInterval(Duration.ofSeconds(2l))
                .atMost(Duration.ofSeconds(30L))
                .until(() -> {
                    try {
                        Response r = opaPolicyApi.getPolicyModule("policies/policy/test.rego", true);
                        return r.getStatus() == 200;
                    } catch (RuntimeException e) {
                        return false;
                    }
                });
    }

    private boolean checkOpaHealth() throws JsonProcessingException {
        try {
            Response response = healthApiApi.getHealth(true, false, List.of());
            return response.getStatus() == 200;
        } catch (RuntimeException e) {
            if (e instanceof WebApplicationException wae) {
                log.warn("{}", wae.getResponse().readEntity(String.class));
            }
            return false;
        }
    }

    public static Stream<Arguments> odrlPolicies() {
        return Stream.of(
                Arguments.of("/examples/dome/1000/_1000.json"),
                Arguments.of("/examples/dome/1001/_1001.json"),
                Arguments.of("/examples/dome/1001-2/_1001-2.json"),
                Arguments.of("/examples/dome/1002/_1002.json"),
                Arguments.of("/examples/dome/1003/_1003.json"),
                Arguments.of("/examples/dome/1004/_1004.json"),
                Arguments.of("/examples/dome/1005/_1005.json"),
                Arguments.of("/examples/dome/2001/_2001.json"),
                Arguments.of("/examples/dome/2001-2/_2001-2.json"),
                Arguments.of("/examples/dome/2001-3/_2001-3.json"),
                Arguments.of("/examples/dome/2002/_2002.json"),
                Arguments.of("/examples/dome/2003/_2003.json")
        );
    }

    public Map<String, Object> getPolicyFromResource(String path) throws IOException {
        return objectMapper.readValue(this.getClass().getResourceAsStream(path), new TypeReference<Map<String, Object>>() {
        });
    }

}

