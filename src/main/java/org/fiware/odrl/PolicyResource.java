package org.fiware.odrl;

import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.enterprise.inject.Instance;
import jakarta.inject.Inject;
import jakarta.ws.rs.core.Response;
import lombok.extern.slf4j.Slf4j;
import org.fiware.odrl.jsonld.JsonLdEndpoint;
import org.fiware.odrl.mapping.*;

import org.fiware.odrl.persistence.ServiceRepository;
import org.fiware.odrl.persistence.PolicyRepository;
import org.fiware.odrl.rego.PolicyWrapper;
import org.fiware.odrl.verification.TypeVerifier;
import org.openapi.quarkus.odrl_yaml.api.PolicyApi;
import org.openapi.quarkus.odrl_yaml.model.Policy;

import java.util.List;
import java.util.Map;
import java.util.Optional;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Slf4j
public class PolicyResource extends ApiResource implements PolicyApi {

    @Inject
    private GeneralConfig generalConfig;

    protected PolicyResource(ObjectMapper objectMapper, OdrlMapper odrlMapper, MappingConfiguration mappingConfiguration, PolicyRepository policyRepository, ServiceRepository serviceRepository, Instance<TypeVerifier> typeVerifiers, LeftOperandMapper leftOperandMapper, ConstraintMapper constraintMapper, OperatorMapper operatorMapper, RightOperandMapper rightOperandMapper) {
        super(objectMapper, odrlMapper, mappingConfiguration, policyRepository, serviceRepository, typeVerifiers, leftOperandMapper, constraintMapper, operatorMapper, rightOperandMapper);
    }

    @JsonLdEndpoint
    @Override
    public Response createPolicy(Map<String, Object> requestBody) {
        return super.createPolicyWithId(PolicyRepository.generatePolicyId(), Optional.empty(), requestBody);
    }

    @JsonLdEndpoint
    @Override
    public Response createPolicyWithId(String id, Map<String, Object> policy) {
        return super.createPolicyWithId(id, Optional.empty(), policy);
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
                        .odrlUid(policyEntry.getValue().odrlUid())
                        .odrl(policyEntry.getValue().odrl().policy())
                        .rego(policyEntry.getValue().rego().policy()))
                .toList();

        return Response.ok(policyList).build();
    }


    @Override
    public Response getPolicyById(String id) {
        return policyWrapperToResponse(policyRepository.getPolicy(id));
    }

    @Override
    public Response getPolicyByUid(String id) {
        return policyWrapperToResponse(policyRepository.getPolicyByUid(id));

    }

    private Response policyWrapperToResponse(Optional<PolicyWrapper> optionalPolicyWrapper) {
        return optionalPolicyWrapper
                .map(super::toPolicy)
                .map(Response::ok)
                .map(Response.ResponseBuilder::build)
                .orElse(Response.status(Response.Status.NOT_FOUND).build());
    }

}
