package org.fiware.odrl;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.inject.Inject;
import jakarta.transaction.Transactional;
import jakarta.ws.rs.core.Response;
import lombok.extern.slf4j.Slf4j;
import org.apache.http.HttpStatus;
import org.fiware.odrl.api.PolicyApi;
import org.fiware.odrl.mapping.MappingConfiguration;
import org.fiware.odrl.mapping.MappingResult;
import org.fiware.odrl.mapping.OdrlMapper;
import org.fiware.odrl.model.Policy;
import org.fiware.odrl.rego.OdrlPolicy;
import org.fiware.odrl.rego.PolicyRepository;
import org.fiware.odrl.rego.PolicyWrapper;
import org.fiware.odrl.rego.RegoPolicy;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

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

    @Transactional
    @Override
    public Response createPolicy(Map<String, Object> requestBody) {
        return createPolicyWithId(policyRepository.generatePolicyId(), requestBody);
    }

    @Transactional
    @Override
    public Response createPolicyWithId(String id, Map<String, Object> policy) {
        if (id.equals("main")) {
            return Response.status(HttpStatus.SC_CONFLICT).entity("Policy `main` cannot be manually modified.").build();
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
            throw new IllegalArgumentException("Was not able to persist the odrl representation.", e);
        }
        return Response.ok(regoPolicy).header("Location", id).build();
    }

    @Override
    public Response deletePolicyById(String id) {
        policyRepository.deletePolicy(id);
        return Response.noContent().build();
    }


    @Transactional
    @Override
    public Response getPolicies(Integer page, Integer pageSize) {
        List<Policy> policyList = policyRepository
                .getPolicies(Optional.ofNullable(page).orElse(0), Optional.ofNullable(pageSize).orElse(25))
                .entrySet()
                .stream()
                .map(policyEntry -> new Policy()
                        .id(policyEntry.getKey())
                        .odrl(policyEntry.getValue().odrl().policy())
                        .rego(policyEntry.getValue().rego().policy())).toList();
        try {
            log.warn(new ObjectMapper().writeValueAsString(policyList));
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }

        return Response.ok(policyList).build();
    }


    @Transactional
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
