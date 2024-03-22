package org.fiware.odrl.validation;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.util.List;
import java.util.Map;

import static org.fiware.odrl.validation.OdrlConstants.*;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
public class PolicyValidator implements Validator {

    public static final String EXPECTED_PROFILE = "https://github.com/DOME-Marketplace/dome-odrl-profile/blob/main/dome-op.ttl";
    private static final ObjectMapper OBJECT_MAPPER = new ObjectMapper();

    @Override
    public ValidationResult validate(ValidationResult validationResult, Map<String, Object> policyMap) {
        List<?> graphList = GraphValidator.getGraph(policyMap);

        return null;
    }

    private ValidationResult validatePolicy(ValidationResult validationResult, Object thePolicy) {
        Map<String, Object> policyAsMap = OBJECT_MAPPER.convertValue(
                thePolicy,
                new TypeReference<Map<String, Object>>() {
                }
        );
        if (!policyAsMap.containsKey(TYPE_KEY)) {
            validationResult.addReason("The policy object does not have a @type.");
            return validationResult;
        }
        if (!policyAsMap.get(TYPE_KEY).equals(TYPE_POLICY)) {
            validationResult.addReason(String.format("The object is not of type policy, the type is %s.", policyAsMap.get(TYPE_KEY)));
            return validationResult;
        }
        return validationResult;
    }
}
