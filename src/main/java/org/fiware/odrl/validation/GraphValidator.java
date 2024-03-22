package org.fiware.odrl.validation;

import javax.management.ObjectName;
import java.util.List;
import java.util.Map;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
public class GraphValidator implements Validator {

    private static final String GRAPH_KEY = "@graph";

    @Override
    public ValidationResult validate(ValidationResult validationResult, Map<String, Object> policyMap) {

        if (!policyMap.containsKey(GRAPH_KEY)) {
            validationResult.addReason("Policy does not contain an @graph element.");
            return validationResult;
        }

        Object theGraph = policyMap.get(GRAPH_KEY);
        if (theGraph == null) {
            validationResult.addReason("The @graph is null.");
            return validationResult;
        }

        if (!(theGraph instanceof List<?>)) {
            validationResult.addReason("The @graph is not a list.");
        }
        return validationResult;
    }

    public static List<?> getGraph(Map<String, Object> policyMap) {
        return (List) policyMap.get(GRAPH_KEY);
    }

}
