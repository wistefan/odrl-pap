package org.fiware.odrl;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import io.agroal.api.AgroalDataSource;
import io.quarkiverse.mockserver.runtime.MockServerConfig;
import io.quarkiverse.mockserver.test.InjectMockServerClient;
import io.quarkiverse.mockserver.test.MockServerTestResource;
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
import org.fiware.odrl.model.Headers;
import org.fiware.odrl.model.Http;
import org.fiware.odrl.model.OpaInput;
import org.fiware.odrl.model.Request;
import org.fiware.odrl.model.RolesAndDuties;
import org.fiware.odrl.persistence.PolicyEntity;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;
import org.keycloak.common.util.KeyUtils;
import org.keycloak.crypto.AsymmetricSignatureSignerContext;
import org.keycloak.crypto.KeyUse;
import org.keycloak.crypto.KeyWrapper;
import org.keycloak.crypto.SignatureSignerContext;
import org.keycloak.jose.jws.JWSBuilder;
import org.keycloak.protocol.oid4vc.issuance.signing.JwtSigningService;
import org.keycloak.protocol.oid4vc.model.CredentialSubject;
import org.keycloak.protocol.oid4vc.model.VerifiableCredential;
import org.keycloak.representations.JsonWebToken;
import org.mockserver.client.MockServerClient;
import org.mockserver.model.JsonBody;
import org.openapi.quarkus.opa_yaml.api.HealthApiApi;
import org.openapi.quarkus.opa_yaml.api.PolicyApiApi;
import org.openapi.quarkus.opa_yaml.api.QueryApiApi;
import org.testcontainers.containers.GenericContainer;

import java.io.IOException;
import java.net.URI;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.stream.Stream;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.junit.jupiter.api.Assertions.fail;
import static org.mockserver.model.HttpRequest.request;
import static org.mockserver.model.HttpResponse.response;


/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Slf4j
@QuarkusTest
@QuarkusTestResource(OpenPolicyAgentTestResource.class)
@QuarkusTestResource(H2DatabaseTestResource.class)
@QuarkusTestResource(MockServerTestResource.class)
public class OdrlTest {

    @InjectOpa
    private GenericContainer opaContainer;

    @InjectMockServerClient
    public MockServerClient mockServerClient;

    @Inject
    public MockServerConfig msc;

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
        entityManager.createQuery(String.format("DELETE FROM %s", PolicyEntity.TABLE_NAME)).executeUpdate();
        opaContainer.stop();
        log.info(opaContainer.getLogs());
        opaContainer.start();
        Awaitility.await()
                .pollInterval(Duration.ofSeconds(2l))
                .atMost(Duration.ofSeconds(300l))
                .until(this::checkOpaHealth);
    }

    @ParameterizedTest
    @MethodSource("odrlPolicyPath")
    public void testCreationOfValidPolicy(String policyPath) throws IOException {
        Map<String, Object> theOdrl = getJsonFromResource(policyPath);
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
            Map<String, Object> theOdrl = getJsonFromResource(policyPath);
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

    @ParameterizedTest
    @MethodSource("validCombinations")
    public void testSuccessfullRequest(List<String> policyPaths, OpaInput theRequest) throws IOException, InterruptedException {
        createAndAssertPolicies(policyPaths);
        Map<String, Object> opaInputRequest = objectMapper.convertValue(theRequest, new TypeReference<Map<String, Object>>() {
        });
        log.info("Query");
        Map<String, Object> theOffering = Map.of("id", "urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6", "relatedParty",
                List.of(Map.of("id", "urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2", "role", "Owner")));
        mockServerClient
                .when(
                        request()
                                .withPath("/productCatalogManagement/v4/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6")
                                .withMethod("GET"))
                .respond(httpRequest -> {
                            log.info("{}", httpRequest);
                            return response().withStatusCode(200)
                                    .withHeader("Content-Type", "application/json")
                                    .withBody(JsonBody.json(theOffering));
                        }
                );
        Response response = queryApi.postSimpleQuery(opaInputRequest, true);
        assertEquals(200, response.getStatus(), "The query should have been successfully evaluated.");
        assertTrue(response.readEntity(Boolean.class), "The request should have succeeded.");
    }

    public static Stream<Arguments> validCombinations() {
        return Stream.of(
                Arguments.of(
                        List.of("/examples/dome/1000/_1000.json"),
                        getOpaInput("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2",
                                "/productCatalogManagement/v4/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6",
                                "GET")),
                Arguments.of(
                        List.of("/examples/dome/1000/_1000.json"),
                        getOpaInput("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2",
                                "/productCatalogManagement/v4/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6",
                                "PUT")),
                Arguments.of(
                        List.of("/examples/dome/1000/_1000.json"),
                        getOpaInput("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2",
                                "/productCatalogManagement/v4/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6",
                                "PATCH")),
                Arguments.of(
                        List.of("/examples/dome/1001/_1001.json"),
                        getOpaInput("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2",
                                "/productCatalogManagement/v4/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6",
                                "GET")),
                Arguments.of(
                        List.of("/examples/dome/1001/_1001.json"),
                        getOpaInput("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2",
                                "/productCatalogManagement/v4/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6",
                                "PUT")),
                Arguments.of(
                        List.of("/examples/dome/1001/_1001.json"),
                        getOpaInput("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2",
                                "/productCatalogManagement/v4/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6",
                                "PATCH")),
                Arguments.of(
                        List.of("/examples/dome/1002/_1002.json"),
                        getOpaInput("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2",
                                "/productCatalogManagement/v4/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6",
                                "GET")),
                Arguments.of(
                        List.of("/examples/dome/1003/_1003.json"),
                        getOpaInput("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2",
                                "/urn:ngsi-ld:button:onboard",
                                "GET")),
                Arguments.of(
                        List.of("/examples/dome/1003/_1003.json"),
                        getOpaInput("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2",
                                "/urn:ngsi-ld:button:onboard",
                                "GET",
                                List.of("onboarder"))),
                Arguments.of(
                        List.of("/examples/dome/1003/_1003.json"),
                        getOpaInput("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2",
                                "/urn:ngsi-ld:button:onboard",
                                "GET",
                                List.of("onboarder"))),
                Arguments.of(
                        List.of("/examples/dome/1005/_1005.json"),
                        getOpaInput("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2",
                                "/productCatalogManagement/v4/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6?q=something",
                                "PUT"))
        );
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

    public static Stream<Arguments> odrlPolicies() {
        return Stream.of(
                Arguments.of(List.of("/examples/dome/1000/_1000.json", "/examples/dome/1001/_1001.json", "/examples/dome/1001-2/_1001-2.json", "/examples/dome/1002/_1002.json")),
                Arguments.of(List.of("/examples/dome/1000/_1000.json", "/examples/dome/1001/_1001.json", "/examples/dome/2001/_2001.json", "/examples/dome/2001-2/_2001-2.json", "/examples/dome/1001-2/_1001-2.json", "/examples/dome/1002/_1002.json")),
                Arguments.of(List.of("/examples/dome/1000/_1000.json", "/examples/dome/1002/_1002.json", "/examples/dome/1005/_1005.json", "/examples/dome/1004/1004.json")),
                Arguments.of(List.of("/examples/dome/2001/_2001.json", "/examples/dome/1001/_1001.json", "/examples/dome/1001-2/_1001-2.json", "/examples/dome/1002/_1002.json"))
        );
    }

    public static Stream<Arguments> odrlPolicyPath() {
        return Stream.of(
                Arguments.of("/examples/dome/1000/_1000.json"),
                Arguments.of("/examples/dome/1001/_1001.json"),
                Arguments.of("/examples/dome/1001-2/_1001-2.json"),
                Arguments.of("/examples/dome/1002/_1002.json"),
                Arguments.of("/examples/dome/1003/_1003.json"),
                Arguments.of("/examples/dome/1004/1004.json"),
                Arguments.of("/examples/dome/1005/_1005.json"),
                Arguments.of("/examples/dome/2001/_2001.json"),
                Arguments.of("/examples/dome/2001-2/_2001-2.json"),
                Arguments.of("/examples/dome/2001-3/_2001-3.json"),
                Arguments.of("/examples/dome/2002/_2002.json"),
                Arguments.of("/examples/dome/2003/_2003.json")
        );
    }


    public Map<String, Object> getJsonFromResource(String path) throws IOException {
        return objectMapper.readValue(this.getClass().getResourceAsStream(path), new TypeReference<Map<String, Object>>() {
        });
    }

    public static OpaInput getOpaInput(String issuer, String path, String method) {
        return getOpaInput(issuer, path, method, List.of("reader", "onboarder"));
    }

    public static OpaInput getOpaInput(String issuer, String path, String method, List<String> roles) {
        Headers headers = new Headers();
        headers.setAuthorization(String.format("Bearer %s", getTestJwt(issuer, roles)));
        Http http = new Http();
        http.setHeaders(headers);
        http.setId(UUID.randomUUID().toString());
        http.setMethod(method);
        http.setPath(path);
        // we set the host to the current application, in order to allow mocking of responses
        http.setHost(MockServerConfig.HOST);
        Request request = new Request();
        request.setHttp(http);
        OpaInput opaInput = new OpaInput();
        opaInput.setRequest(request);
        return opaInput;
    }

    public static String getTestJwt(String organization, List<String> roles) {
        RolesAndDuties rolesAndDuties = new RolesAndDuties();
        rolesAndDuties.setRoleNames(roles);
        rolesAndDuties.setTarget(organization);
        CredentialSubject credentialSubject = new CredentialSubject();
        credentialSubject.setClaims("rolesAndDuties", List.of(rolesAndDuties));
        VerifiableCredential verifiableCredential = new VerifiableCredential();
        verifiableCredential.setId(URI.create("urn:my-id"));
        verifiableCredential.setIssuer(URI.create(organization));
        verifiableCredential.setCredentialSubject(credentialSubject);
        JsonWebToken jwt = new JsonWebToken()
                .id("myTestToken")
                .issuer(organization);
        jwt.setOtherClaims("verifiableCredential", verifiableCredential);
        SignatureSignerContext signatureSignerContext = new AsymmetricSignatureSignerContext(getRsaKey());
        return new JWSBuilder().type("JWT").jsonContent(jwt).sign(signatureSignerContext);
    }

    public static KeyWrapper getRsaKey() {
        try {
            KeyPairGenerator kpg = KeyPairGenerator.getInstance("RSA");
            kpg.initialize(2048);
            var keyPair = kpg.generateKeyPair();
            KeyWrapper kw = new KeyWrapper();
            kw.setPrivateKey(keyPair.getPrivate());
            kw.setPublicKey(keyPair.getPublic());
            kw.setUse(KeyUse.SIG);
            kw.setKid(KeyUtils.createKeyId(keyPair.getPublic()));
            kw.setType("RSA");
            kw.setAlgorithm("RS256");
            return kw;
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }
}

