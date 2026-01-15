package org.fiware.odrl;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.ws.rs.client.ClientBuilder;
import jakarta.ws.rs.client.ClientRequestContext;
import jakarta.ws.rs.client.ClientRequestFilter;
import jakarta.ws.rs.core.Response;
import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import org.fiware.odrl.model.HttpRequest;
import org.fiware.odrl.model.MockEntity;
import org.fiware.tmforum.api.ProductOfferingApi;
import org.jboss.resteasy.client.jaxrs.ResteasyClient;
import org.jboss.resteasy.client.jaxrs.ResteasyWebTarget;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.MethodSource;
import org.mockserver.client.MockServerClient;
import org.openapi.quarkus.odrl_yaml.api.PolicyApi;

import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Slf4j
public class OdrlTestIT extends OdrlTest {

    private static final ObjectMapper OBJECT_MAPPER = new ObjectMapper();
    private static PolicyApi policyApi;
    private static ProductOfferingApi productOfferingApi;
    private static MockServerClient mockServerClient = new MockServerClient("localhost", 1080);

    private final TokenProvider tokenProvider = new TokenProvider();

    @BeforeEach
    public void prepare() {
        ResteasyClient resteasyClient = (ResteasyClient) ClientBuilder.newClient();
        ResteasyWebTarget policyTarget = resteasyClient.target("http://localhost:8080");
        policyApi = policyTarget.proxy(PolicyApi.class);

        ResteasyWebTarget productOfferingTarget = resteasyClient.target("http://localhost:8082");
        productOfferingTarget.register(new BearerTokenFilter(tokenProvider));
        productOfferingApi = productOfferingTarget.proxy(ProductOfferingApi.class);
    }


    @ParameterizedTest
    @MethodSource("validCombinations")
    public void test(List<String> policyPaths, HttpRequest theRequest, MockEntity mockEntity) throws IOException {
        for (String path : policyPaths) {
            Map<String, Object> theOdrl = getJsonFromResource(OBJECT_MAPPER, path);
            Assertions.assertEquals(200, policyApi.createPolicy(theOdrl).getStatus(), "Policy should have been created successfully.");
        }
        mockEntity(mockServerClient, mockEntity);

        tokenProvider.setToken(theRequest.getHeaders().getAuthorization());
        Response offeringResponse = productOfferingApi.retrieveProductOffering(mockEntity.id(), null);
        Assertions.assertEquals(200, offeringResponse.getStatus());
    }

    public Map<String, Object> getJsonFromResource(ObjectMapper objectMapper, String path) throws IOException {
        return objectMapper.readValue(this.getClass().getResourceAsStream(path), new TypeReference<Map<String, Object>>() {
        });
    }

    class BearerTokenFilter implements ClientRequestFilter {

        private final TokenProvider tokenProvider;

        BearerTokenFilter(TokenProvider tokenProvider) {
            this.tokenProvider = tokenProvider;
        }


        @Override
        public void filter(ClientRequestContext clientRequestContext) throws IOException {
            clientRequestContext.getHeaders().putSingle("Authorization", tokenProvider.getToken());
        }
    }

    @Data
    class TokenProvider {
        private String token;
    }
}
