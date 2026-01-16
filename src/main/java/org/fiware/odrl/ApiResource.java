package org.fiware.odrl;

import com.apicatalog.jsonld.JsonLdError;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.enterprise.inject.Instance;
import jakarta.ws.rs.core.Response;
import lombok.extern.slf4j.Slf4j;
import org.apache.http.HttpStatus;
import org.fiware.odrl.jsonld.JsonLdHandler;
import org.fiware.odrl.mapping.*;
import org.fiware.odrl.persistence.ServiceEntity;
import org.fiware.odrl.persistence.ServiceRepository;
import org.fiware.odrl.rego.OdrlPolicy;
import org.fiware.odrl.persistence.PolicyRepository;
import org.fiware.odrl.rego.PolicyWrapper;
import org.fiware.odrl.rego.RegoPolicy;
import org.fiware.odrl.verification.TypeVerifier;
import org.openapi.quarkus.odrl_yaml.model.Policy;

import java.io.ByteArrayInputStream;
import java.util.Map;
import java.util.Optional;

@Slf4j
public abstract class ApiResource {

    private static final String MAIN_POLICY_ID = "main";
    private static final String LOCATION_HEADER = "Location";
    private static final String POLICY_PACKAGE = "policy";

    protected final ObjectMapper objectMapper;
    protected final JsonLdHandler jsonLdHandler;
    protected final OdrlMapper odrlMapper;
    protected final MappingConfiguration mappingConfiguration;
    protected final PolicyRepository policyRepository;
    protected final ServiceRepository serviceRepository;
    protected final Instance<TypeVerifier> typeVerifiers;
    protected final LeftOperandMapper leftOperandMapper;
    protected final ConstraintMapper constraintMapper;
    protected final OperatorMapper operatorMapper;
    protected final RightOperandMapper rightOperandMapper;


    protected ApiResource(ObjectMapper objectMapper, JsonLdHandler jsonLdHandler, OdrlMapper odrlMapper, MappingConfiguration mappingConfiguration, PolicyRepository policyRepository, ServiceRepository serviceRepository, Instance<TypeVerifier> typeVerifiers, LeftOperandMapper leftOperandMapper, ConstraintMapper constraintMapper, OperatorMapper operatorMapper, RightOperandMapper rightOperandMapper) {
        this.objectMapper = objectMapper;
        this.jsonLdHandler = jsonLdHandler;
        this.odrlMapper = odrlMapper;
        this.mappingConfiguration = mappingConfiguration;
        this.policyRepository = policyRepository;
        this.serviceRepository = serviceRepository;
        this.typeVerifiers = typeVerifiers;
        this.leftOperandMapper = leftOperandMapper;
        this.constraintMapper = constraintMapper;
        this.operatorMapper = operatorMapper;
        this.rightOperandMapper = rightOperandMapper;
    }

    public Response createPolicyWithId(String id, Optional<String> serviceId, Map<String, Object> policy) {
        if (id.equals(MAIN_POLICY_ID)) {
            return Response.status(HttpStatus.SC_CONFLICT).entity("Policy `main` cannot be manually modified.").build();
        }
        byte[] policyBytes;
        try {
            policyBytes = objectMapper.writeValueAsBytes(policy);
        } catch (JsonProcessingException e) {
            throw new IllegalArgumentException("Was not able to serialize the policy.", e);
        }
        try {
            String policyString = jsonLdHandler.handleJsonLd(new ByteArrayInputStream(policyBytes));
            policy = objectMapper.readValue(policyString, new TypeReference<Map<String, Object>>() {
            });
        } catch (JsonLdError e) {
            log.warn("Was not able to compact JSON. Try to handel the request anyways.", e);
        } catch (JsonProcessingException e) {
            throw new IllegalArgumentException("Compacted json is not valid anymore.", e);
        }

        MappingResult mappingResult = odrlMapper.mapOdrl(policy);
        if (mappingResult.isFailed()) {
            throw new IllegalArgumentException(String.join(",", mappingResult.getFailureReasons()));
        }
        String packageName = serviceId.flatMap(serviceRepository::getService).map(ServiceEntity::getPackageName).orElse(POLICY_PACKAGE);

        String packagedId = String.format("%s.%s", packageName, id);
        String regoPolicy = mappingResult.getRego(packagedId);
        try {
            PolicyWrapper thePolicy = new PolicyWrapper(id, mappingResult.getUid(), serviceId, new OdrlPolicy(objectMapper.writeValueAsString(policy)), new RegoPolicy(regoPolicy));
            policyRepository.createPolicy(id, mappingResult.getUid(), serviceId.flatMap(serviceRepository::getService), thePolicy);
        } catch (JsonProcessingException e) {
            throw new IllegalArgumentException("Was not able to persist the odrl representation.", e);
        }
        return Response.ok(regoPolicy).header(LOCATION_HEADER, id).build();
    }

    protected Policy toPolicy(PolicyWrapper policyWrapper) {
        return new Policy()
                .id(policyWrapper.regoId())
                .odrlUid(policyWrapper.odrlUid())
                .odrl(policyWrapper.odrl().policy())
                .rego(policyWrapper.rego().policy());
    }

}
