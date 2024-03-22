package org.fiware.odrl;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import org.fiware.odrl.validation.ContextValidator;
import org.fiware.odrl.validation.GraphValidator;
import org.fiware.odrl.validation.OdrlConstants;
import org.fiware.odrl.validation.ValidationResult;
import org.fiware.odrl.validation.Validator;
import org.yaml.snakeyaml.events.Event;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.fiware.odrl.validation.OdrlConstants.ACTION_KEY;
import static org.fiware.odrl.validation.OdrlConstants.ASSIGNEE_KEY;
import static org.fiware.odrl.validation.OdrlConstants.ASSIGNER_KEY;
import static org.fiware.odrl.validation.OdrlConstants.GRAPH_KEY;
import static org.fiware.odrl.validation.OdrlConstants.ID_KEY;
import static org.fiware.odrl.validation.OdrlConstants.PERMISSION_KEY;
import static org.fiware.odrl.validation.OdrlConstants.TARGET_KEY;
import static org.fiware.odrl.validation.OdrlConstants.TYPE_KEY;
import static org.fiware.odrl.validation.OdrlConstants.TYPE_PERMISSION;
import static org.fiware.odrl.validation.OdrlConstants.TYPE_POLICY;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@ApplicationScoped
public class MappingService {

    @Inject
    private ObjectMapper objectMapper;
    private static final List<Validator> VALIDATORS = List.of(new ContextValidator(), new GraphValidator());


    public MappingResult mapOdrl(Map<String, Object> policy) {
        MappingResult mappingResult = new MappingResult();
        ValidationResult validationResult = new ValidationResult();
        VALIDATORS.forEach(validator -> {
            validator.validate(validationResult, policy);
        });
        if (!validationResult.isValid()) {
            validationResult.getReasons().forEach(mappingResult::addFailure);
            return mappingResult;
        }

        List<?> graphObject = (List<?>) policy.get(GRAPH_KEY);
        if (graphObject.size() != 1) {
            mappingResult.addFailure("Multiple policies are not supported at the moment.");
            return mappingResult;
        }

        Map<String, Object> policyMap = objectMapper.convertValue(graphObject.get(0), new TypeReference<Map<String, Object>>() {
        });
        return mapPolicy(mappingResult, policyMap);
    }

    private MappingResult mapPolicy(MappingResult mappingResult, Map<String, Object> thePolicy) {
        if (!thePolicy.containsKey(TYPE_KEY) || !thePolicy.get(TYPE_KEY).equals(TYPE_POLICY)) {
            mappingResult.addFailure("The object is not of a valid type odrl:Policy.");
        }
        if (!thePolicy.containsKey(ASSIGNER_KEY)) {
            mappingResult.addFailure("The policy has no assigner.");
        }
        if (!thePolicy.containsKey(PERMISSION_KEY)) {
            mappingResult.addFailure("The policy has no permission.");
        }
        if (mappingResult.isFailed()) {
            return mappingResult;
        }
        Map<String, Object> thePermission = objectMapper.convertValue(thePolicy.get(PERMISSION_KEY), new TypeReference<Map<String, Object>>() {
        });

        return mapPermission(mappingResult, thePermission);
    }

    // for now, we only support assignee, target, action
    private MappingResult mapPermission(MappingResult mappingResult, Map<String, Object> thePermission) {
        if (!thePermission.containsKey(TYPE_KEY) || !thePermission.get(TYPE_KEY).equals(TYPE_PERMISSION)) {
            mappingResult.addFailure("The object is not of a valid type odrl:Permission.");
        }
        if (!thePermission.containsKey(ACTION_KEY)) {
            mappingResult.addFailure("The permission does not contain an action.");
        }
        if (!thePermission.containsKey(TARGET_KEY)) {
            mappingResult.addFailure("The permission does not contain a target.");
        }
        if (!thePermission.containsKey(ASSIGNEE_KEY)) {
            mappingResult.addFailure("The permission does not contain an assignee.");
        }
        if (mappingResult.isFailed()) {
            return mappingResult;
        }

        mappingResult = mapAction(mappingResult, objectMapper.convertValue(thePermission.get(ACTION_KEY), new TypeReference<Map<String, Object>>() {
        }));

        return mappingResult;
    }

    private MappingResult mapAction(MappingResult mappingResult, Map<String, Object> theAction) {
        if (!theAction.containsKey(ID_KEY)) {
            return mappingResult.addFailure("The action does not contain an @id");
        }
        if (theAction.get(ID_KEY) instanceof String actionId) {
            NamespacedValue id = getNamespace(actionId);
            // TODO: take from mapping maps
            switch (id.namespace) {
                case "dome" -> mappingResult.addImport("dome.action");
                case "odrl" -> mappingResult.addImport("odrl.action");
                default ->
                        mappingResult.addFailure(String.format("%s is not a supported action namespace.", id.namespace));
            }
            switch (id.value) {
                case "modify" -> mappingResult.addRule("allow if action.is_modification(req.request())");
                case "use" -> mappingResult.addRule("allow if action.is_use(req.request())");
                case "delete" -> mappingResult.addRule("allow if action.is_deletion(req.request())");
                case "read" -> mappingResult.addRule("allow if action.is_read(req.request())");
                case "create" -> mappingResult.addRule("allow if action.is_creation(req.request())");
            }
        }
        return mappingResult;
    }

    private NamespacedValue getNamespace(String namespacedValue) {
        String[] splitted = namespacedValue.split(":");
        if (splitted.length != 2) {
            throw new IllegalArgumentException(String.format("%s is not a namespaced value.", namespacedValue));
        }
        return new NamespacedValue(splitted[0], splitted[1]);
    }

    private record NamespacedValue(String namespace, String value) {
    }

    ;
}
