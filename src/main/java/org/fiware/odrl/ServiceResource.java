package org.fiware.odrl;

import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.enterprise.inject.Instance;
import jakarta.ws.rs.core.Response;
import lombok.extern.slf4j.Slf4j;
import org.apache.http.HttpStatus;
import org.fiware.odrl.api.ServiceApi;
import org.fiware.odrl.mapping.*;
import org.fiware.odrl.model.*;
import org.fiware.odrl.persistence.ServiceEntity;
import org.fiware.odrl.persistence.ServiceRepository;
import org.fiware.odrl.persistence.PolicyRepository;
import org.fiware.odrl.verification.TypeVerifier;

import java.util.List;
import java.util.Map;
import java.util.Optional;

@Slf4j
public class ServiceResource extends ApiResource implements ServiceApi {

    private static final String MAIN_POLICY_ID = "main";

    private static final String POLICY_PACKAGE = "policy";
    private static final String DATA_PACKAGE = "data";
    private static final String METHODS_PACKAGE = "methods";
    private static final int DEFAULT_PAGE_SIZE = 25;

    private static final List<String> RESERVED_NAMES = List.of(POLICY_PACKAGE, DATA_PACKAGE, METHODS_PACKAGE);

    protected ServiceResource(ObjectMapper objectMapper, MappingConfiguration mappingConfiguration, PolicyRepository policyRepository, ServiceRepository serviceRepository, Instance<TypeVerifier> typeVerifiers, LeftOperandMapper leftOperandMapper, ConstraintMapper constraintMapper, OperatorMapper operatorMapper, RightOperandMapper rightOperandMapper) {
        super(objectMapper, mappingConfiguration, policyRepository, serviceRepository, typeVerifiers, leftOperandMapper, constraintMapper, operatorMapper, rightOperandMapper);
    }

    @Override
    public Response createService(ServiceCreate serviceCreate) {
        assureNotReserved(serviceCreate.getId());
        serviceRepository.createService(serviceCreate.getId());
        return Response.ok(new PolicyPath().policyPath(serviceCreate.getId())).build();
    }

    @Override
    public Response createServicePolicy(String serviceId, Map<String, Object> requestBody) {
        return createServicePolicyWithId(serviceId, policyRepository.generatePolicyId(), requestBody);
    }

    @Override
    public Response createServicePolicyWithId(String serviceId, String id, Map<String, Object> requestBody) {
        return checkNotFound(serviceId)
                .orElse(super.createPolicyWithId(id, Optional.of(serviceId), requestBody));
    }

    @Override
    public Response deleteService(String serviceId) {
        assureNotReserved(serviceId);
        serviceRepository.deleteService(serviceId);
        return Response.noContent().build();
    }

    @Override
    public Response deleteServicePolicyById(String serviceId, String id) {
        policyRepository.getPolicy(id)
                .filter(p -> p.serviceId().isPresent() && p.serviceId().get().equals(serviceId))
                .ifPresent(pw -> policyRepository.deletePolicy(id));
        return Response.noContent().build();
    }

    @Override
    public Response deleteServicePolicyByUid(String serviceId, String uid) {

        policyRepository.getPolicyByUid(uid)
                .filter(p -> p.serviceId().isPresent() && p.serviceId().get().equals(serviceId))
                .ifPresent(pw -> policyRepository.deletePolicyByUid(uid));
        return Response.noContent().build();
    }

    @Override
    public Response getService(String serviceId) {
        return serviceRepository.getService(serviceId)
                .map(serviceEntity -> {
                    Service service = new Service().id(serviceId);
                    serviceEntity.getPolicies()
                            .stream()
                            .map(pe -> new Policy()
                                    .odrlColonUid(pe.getUid())
                                    .id(pe.getPolicyId())
                                    .odrl(pe.getOdrl().getPolicy())
                                    .rego(pe.getRego().getPolicy())
                            )
                            .forEach(service::addPoliciesItem);
                    return service;
                })
                .map(Response::ok)
                .map(Response.ResponseBuilder::build)
                .orElse(Response.status(HttpStatus.SC_NOT_FOUND).build());
    }

    @Override
    public Response getServicePolicies(String serviceId, Integer page, Integer pageSize) {
        return checkNotFound(serviceId)
                .orElse(
                        Response.ok(policyRepository.getPoliciesByServiceId(serviceId, Optional.ofNullable(page).orElse(0), Optional.ofNullable(pageSize).orElse(DEFAULT_PAGE_SIZE))
                                .entrySet()
                                .stream()
                                .map(policyEntry -> new Policy()
                                        .id(policyEntry.getKey())
                                        .odrlColonUid(policyEntry.getValue().odrlUid())
                                        .odrl(policyEntry.getValue().odrl().policy())
                                        .rego(policyEntry.getValue().rego().policy()))
                                .toList()).build());
    }

    @Override
    public Response getServicePolicyById(String serviceId, String id) {
        return checkNotFound(serviceId).orElseGet(() -> policyRepository.getPolicy(id)
                .filter(policyWrapper -> policyWrapper.serviceId().isPresent() && policyWrapper.serviceId().get().equals(serviceId))
                .map(super::toPolicy)
                .map(Response::ok)
                .map(Response.ResponseBuilder::build)
                .orElse(Response.status(HttpStatus.SC_NOT_FOUND).build()));
    }

    @Override
    public Response getServicePolicyByUid(String serviceId, String uid) {
        return checkNotFound(serviceId).orElseGet(() -> policyRepository.getPolicyByUid(uid)
                .filter(policyWrapper -> policyWrapper.serviceId().isPresent() && policyWrapper.serviceId().get().equals(serviceId))
                .map(super::toPolicy)
                .map(Response::ok)
                .map(Response.ResponseBuilder::build)
                .orElse(Response.status(HttpStatus.SC_NOT_FOUND).build()));
    }

    @Override
    public Response getServices(Integer page, Integer pageSize) {
        return Response.ok(
                serviceRepository.getServices(Optional.ofNullable(page).orElse(0), Optional.ofNullable(pageSize).orElse(DEFAULT_PAGE_SIZE))
                        .stream()
                        .map(ServiceEntity::getServiceId)
                        .map(serviceId -> new ServiceListInner().id(serviceId).policyPath(String.format("%s/%s", serviceId, MAIN_POLICY_ID)))
                        .toList()).build();
    }

    private Optional<Response> checkNotFound(String serviceId) {
        if (serviceRepository.getService(serviceId).isEmpty()) {
            return Optional.of(Response.status(HttpStatus.SC_NOT_FOUND).entity(String.format(String.format("Service %s does not exist.", serviceId))).build());
        }
        return Optional.empty();
    }

    private void assureNotReserved(String serviceId) {
        if (RESERVED_NAMES.contains(serviceId)) {
            throw new IllegalArgumentException(String.format("%s are reserved names and cannot be used as service id.", RESERVED_NAMES));
        }
    }
}
