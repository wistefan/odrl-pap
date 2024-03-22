package org.fiware.odrl.validation;

import java.util.Map;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
public interface Validator {

    ValidationResult validate(ValidationResult validationResult, Map<String, Object> policyMap);
}
