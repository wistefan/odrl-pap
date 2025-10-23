package org.fiware.odrl;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.enterprise.inject.Instance;
import jakarta.inject.Inject;
import jakarta.ws.rs.core.Response;
import lombok.extern.slf4j.Slf4j;
import org.apache.http.HttpStatus;
import org.fiware.odrl.api.PolicyApi;
import org.fiware.odrl.mapping.*;
import org.fiware.odrl.model.Policy;
import org.fiware.odrl.rego.OdrlPolicy;
import org.fiware.odrl.rego.PolicyRepository;
import org.fiware.odrl.rego.PolicyWrapper;
import org.fiware.odrl.rego.RegoPolicy;
import org.fiware.odrl.verification.TypeVerifier;
import org.glassfish.jaxb.runtime.v2.runtime.reflect.opt.Const;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Slf4j
public class PolicyResource implements PolicyApi {

    private static final String MAIN_POLICY_ID = "main";
    private static final String LOCATION_HEADER = "Location";

    @Inject
    private ObjectMapper objectMapper;

    @Inject
    private PolicyRepository policyRepository;

    @Inject
    private GeneralConfig generalConfig;

    @Inject
    private OdrlMapper odrlMapper;

    @Override
    public Response createPolicy(Map<String, Object> requestBody) {
        return createPolicyWithId(policyRepository.generatePolicyId(), requestBody);
    }

    @Override
    public Response createPolicyWithId(String id, Map<String, Object> policy) {
        if (id.equals(MAIN_POLICY_ID)) {
            return Response.status(HttpStatus.SC_CONFLICT).entity("Policy `main` cannot be manually modified.").build();
        }

        MappingResult mappingResult = odrlMapper.mapOdrl(policy);
        if (mappingResult.isFailed()) {
            throw new IllegalArgumentException(String.join(",", mappingResult.getFailureReasons()));
        }
        String packagedId = String.format("policy.%s", id);
        String regoPolicy = mappingResult.getRego(packagedId);
        try {
            PolicyWrapper thePolicy = new PolicyWrapper(id, mappingResult.getUid(), new OdrlPolicy(objectMapper.writeValueAsString(policy)), new RegoPolicy(regoPolicy));
            policyRepository.createPolicy(id, mappingResult.getUid(), thePolicy);
        } catch (JsonProcessingException e) {
            throw new IllegalArgumentException("Was not able to persist the odrl representation.", e);
        }
        return Response.ok(regoPolicy).header(LOCATION_HEADER, id).build();
    }

    @Override
    public Response deletePolicyById(String id) {
        policyRepository.deletePolicy(id);
        return Response.noContent().build();
    }

    @Override
    public Response deletePolicyByUid(String uid) {
        policyRepository.deletePolicyByUid(uid);
        return Response.noContent().build();
    }


    @Override
    public Response getPolicies(Integer page, Integer pageSize) {
        List<Policy> policyList = policyRepository
                .getPolicies(Optional.ofNullable(page).orElse(0), Optional.ofNullable(pageSize).orElse(25))
                .entrySet()
                .stream()
                .map(policyEntry -> new Policy()
                        .id(policyEntry.getKey())
                        .odrlColonUid(policyEntry.getValue().odrlUid())
                        .odrl(policyEntry.getValue().odrl().policy())
                        .rego(policyEntry.getValue().rego().policy()))
                .toList();

        return Response.ok(policyList).build();
    }


    @Override
    public Response getPolicyById(String id) {
        return policyWrapperToResponse(policyRepository
                .getPolicy(id));
    }

    @Override
    public Response getPolicyByUid(String id) {
        return policyWrapperToResponse(policyRepository
                .getPolicyByUid(id));

    }

    private Response policyWrapperToResponse(Optional<PolicyWrapper> optionalPolicyWrapper) {
        return optionalPolicyWrapper
                .map(pw -> new Policy()
                        .id(pw.regoId())
                        .odrlColonUid(pw.odrlUid())
                        .odrl(pw.odrl().policy())
                        .rego(pw.rego().policy()))
                .map(Response::ok)
                .map(Response.ResponseBuilder::build)
                .orElse(Response.status(Response.Status.NOT_FOUND).build());
    }

}
