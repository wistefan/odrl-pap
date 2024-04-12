package org.fiware.odrl;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.inject.Inject;
import jakarta.ws.rs.core.Response;
import lombok.extern.slf4j.Slf4j;
import org.fiware.odrl.api.PolicyApi;
import org.fiware.odrl.mapping.MappingConfiguration;
import org.fiware.odrl.mapping.MappingResult;
import org.fiware.odrl.mapping.OdrlMapper;
import org.fiware.odrl.model.Policy;
import org.fiware.odrl.rego.OdrlPolicy;
import org.fiware.odrl.rego.PolicyRepository;
import org.fiware.odrl.rego.PolicyWrapper;
import org.fiware.odrl.rego.RegoPolicy;

import java.util.Map;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Slf4j
public class PolicyResource implements PolicyApi {

    @Inject
    private ObjectMapper objectMapper;

    @Inject
    private MappingConfiguration mappingConfiguration;

    @Inject
    private PolicyRepository policyRepository;

    @Override
    public Response createPolicy(Map<String, Object> requestBody) {
        return createPolicyWithId(policyRepository.generatePolicyId(), requestBody);
    }

    @Override
    public Response createPolicyWithId(String id, Map<String, Object> policy) {
        if (id.equals("main")) {
            throw new IllegalArgumentException("Policy `main` cannot be manually modified.");
        }
        OdrlMapper odrlMapper = new OdrlMapper(objectMapper, mappingConfiguration);
        MappingResult mappingResult = odrlMapper.mapOdrl(policy);
        if (mappingResult.isFailed()) {
            throw new IllegalArgumentException(String.join(",", mappingResult.getFailureReasons()));
        }
        String packagedId = String.format("policy.%s", id);
        String regoPolicy = mappingResult.getRego(packagedId);
        try {
            PolicyWrapper thePolicy = new PolicyWrapper(new OdrlPolicy(objectMapper.writeValueAsString(policy)), new RegoPolicy(regoPolicy));
            policyRepository.createPolicy(id, thePolicy);
        } catch (JsonProcessingException e) {
            throw new RuntimeException("Was not able to persist the odrl representation.", e);
        }
        return Response.ok(regoPolicy).header("Location", id).build();
    }

    @Override
    public Response getPolicyById(String id) {
        return policyRepository
                .getPolicy(id)
                .map(pw -> new Policy()
                        .id(id)
                        .odrl(pw.odrl().policy())
                        .rego(pw.rego().policy()))
                .map(Response::ok)
                .map(Response.ResponseBuilder::build)
                .orElse(Response.status(Response.Status.NOT_FOUND).build());
    }
}
