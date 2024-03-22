package org.fiware.odrl.validation;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
public class ValidationService {

    private static final List<Validator> VALIDATORS = List.of(
            new ContextValidator(),
            new GraphValidator());

    public ValidationResult validateOdrl(Map<String, Object> policyMap) {
        ValidationResult validationResult = new ValidationResult();
        VALIDATORS.stream().forEach(
                validator -> validator.validate(validationResult, policyMap)
        );
        return validationResult;
    }
}
