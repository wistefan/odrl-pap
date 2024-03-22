package org.fiware.odrl.validation;

import java.util.Map;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
public class ContextValidator implements Validator {

    private static final String CONTEXT_KEY = "@context";

    @Override
    public ValidationResult validate(ValidationResult validationResult, Map<String, Object> policyMap) {
        if (!policyMap.containsKey(CONTEXT_KEY)) {
            validationResult.addReason("Policy does not contain a @context.");
        }
        return validationResult;
    }
}
