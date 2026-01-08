package org.fiware.odrl;

import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.inject.Inject;
import jakarta.ws.rs.core.Response;
import lombok.extern.slf4j.Slf4j;
import org.eclipse.microprofile.rest.client.inject.RestClient;
import org.fiware.odrl.api.ValidateApi;
import org.fiware.odrl.mapping.MappingResult;
import org.fiware.odrl.mapping.OdrlMapper;
import org.fiware.odrl.model.ValidationRequest;
import org.fiware.odrl.model.ValidationResponse;
import org.fiware.odrl.persistence.PolicyRepository;
import org.fiware.odrl.rego.DataResponse;
import org.openapi.quarkus.opa_yaml.api.DataApiApi;
import org.openapi.quarkus.opa_yaml.api.PolicyApiApi;

import java.util.HashMap;
import java.util.Map;

/**
 * Implementation of the validation api to support testing of policies
 */
@Slf4j
public class ValidationResource implements ValidateApi {

    @RestClient
    public PolicyApiApi opaPolicyApi;

    @RestClient
    private DataApiApi dataApiApi;

    @Inject
    private PolicyRepository policyRepository;

    @Inject
    private OdrlMapper odrlMapper;

    @Override
    public Response validatePolicy(ValidationRequest validationRequest) {
        if (dataApiApi == null) {
            throw new UnsupportedOperationException("Policy validation is not enabled.");
        }
        String tempId = PolicyRepository.generatePolicyId();
        try {
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
        } finally {
            Response deletionResponse = opaPolicyApi.deletePolicyModule(tempId, false);
            if (deletionResponse.getStatus() != 200) {
                log.warn("Was not able to delete the policy {}. Reason: {}", tempId, deletionResponse.readEntity(String.class));
            }
        }
    }
}
