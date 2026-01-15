package org.fiware.odrl;

import jakarta.inject.Inject;
import jakarta.ws.rs.core.Response;
import lombok.extern.slf4j.Slf4j;
import org.eclipse.microprofile.rest.client.inject.RestClient;
import org.fiware.odrl.mapping.*;
import org.fiware.odrl.persistence.PolicyRepository;
import org.fiware.odrl.rego.DataResponse;
import org.openapi.quarkus.odrl_yaml.api.UiApi;
import org.openapi.quarkus.odrl_yaml.model.Mapping;
import org.openapi.quarkus.odrl_yaml.model.Mappings;
import org.openapi.quarkus.odrl_yaml.model.ValidationRequest;
import org.openapi.quarkus.odrl_yaml.model.ValidationResponse;
import org.openapi.quarkus.opa_yaml.api.DataApiApi;
import org.openapi.quarkus.opa_yaml.api.PolicyApiApi;

import java.util.*;

/**
 * Implementation of the validation api to support testing of policies
 */
@Slf4j
public class ValidationResource implements UiApi {

    @RestClient
    public PolicyApiApi opaPolicyApi;

    @RestClient
    private DataApiApi dataApiApi;

    @Inject
    private PolicyRepository policyRepository;

    @Inject
    private OdrlMapper odrlMapper;

    @Inject
    private MappingConfiguration mappingConfiguration;

    @Override
    public Response validatePolicy(ValidationRequest validationRequest) {
        if (dataApiApi == null) {
            throw new UnsupportedOperationException("Policy validation is not enabled.");
        }
        String tempId = PolicyRepository.generatePolicyId();
        try {
            log.info("incoming req is {}", validationRequest);
            MappingResult mappingResult = odrlMapper.mapOdrl(validationRequest.getPolicy());
            if (mappingResult.isFailed()) {
                throw new IllegalArgumentException(String.format("Was not able to map the policy. Reason: %s", mappingResult.getFailureReasons()));
            }
            Response creation = opaPolicyApi.putPolicyModule(tempId, mappingResult.getRego(tempId), false, false);
            if (creation.getStatus() != 200) {
                throw new IllegalArgumentException(String.format("Cannot create policy. Reason: %s", creation.readEntity(String.class)));
            }
            Map<String, Object> request = new HashMap<>();
            request.put("request", validationRequest.getTestRequest());
            Map<String, Object> input = new HashMap<>();
            input.put("input", request);
            Response dataResponse = dataApiApi.getDocumentWithPath(String.format("%s/is_allowed", tempId), input, true, false, "full", false, false);
            DataResponse dataResponseObject = dataResponse.readEntity(DataResponse.class);
            ValidationResponse validationResponse = new ValidationResponse().allow(dataResponseObject.result());
            if (!dataResponseObject.result()) {
                // it failed
                validationResponse.explanation(dataResponseObject.explanation());
            }
            return Response.ok(validationResponse).build();
        } catch (Exception e) {
            log.warn("Error", e);
            throw new RuntimeException(e);
        } finally {
            Response deletionResponse = opaPolicyApi.deletePolicyModule(tempId, false);
            if (deletionResponse.getStatus() != 200) {
                log.warn("Was not able to delete the policy {}. Reason: {}", tempId, deletionResponse.readEntity(String.class));
            }
        }
    }

    @Override
    public Response getMappings() {
        return Response.ok(getMappingsFromConfig()).build();
    }

    private Mappings getMappingsFromConfig() {
        Mappings mappings = new Mappings();
        Arrays.stream(OdrlAttribute.values())
                .forEach(attribute -> {
                    List<Mapping> mappingList = toMappingList(mappingConfiguration.get(attribute));
                    switch (attribute) {
                        case LEFT_OPERAND -> mappings.leftOperands(mappingList);
                        case RIGHT_OPERAND -> mappings.rightOperands(mappingList);
                        case OPERATOR -> mappings.operators(mappingList);
                        case CONSTRAINT -> mappings.constraints(mappingList);
                        case OPERAND -> mappings.operands(mappingList);
                        case ASSIGNEE -> mappings.assignees(mappingList);
                        case ACTION -> mappings.actions(mappingList);
                        case TARGET -> mappings.targets(mappingList);
                    }

                });
        return mappings;
    }

    private List<Mapping> toMappingList(NamespacedMap namespacedMap) {
        List<Mapping> mappings = new ArrayList<>();
        namespacedMap.forEach((namespace, value) -> value.entrySet()
                .stream()
                .map(regoMapEntry -> new Mapping()
                        .description(regoMapEntry.getValue().description())
                        .name(String.format("%s:%s", namespace, regoMapEntry.getKey())))
                .forEach(mappings::add));
        return mappings;
    }

}
