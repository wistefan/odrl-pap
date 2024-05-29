package org.fiware.odrl.mapping;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.slf4j.Slf4j;
import org.fiware.odrl.rego.RegoMethod;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.StringJoiner;

import static org.fiware.odrl.mapping.OdrlConstants.ACTION_KEY;
import static org.fiware.odrl.mapping.OdrlConstants.ASSIGNEE_KEY;
import static org.fiware.odrl.mapping.OdrlConstants.CONSTRAINT_KEY;
import static org.fiware.odrl.mapping.OdrlConstants.DATE_TYPE;
import static org.fiware.odrl.mapping.OdrlConstants.GRAPH_KEY;
import static org.fiware.odrl.mapping.OdrlConstants.ID_KEY;
import static org.fiware.odrl.mapping.OdrlConstants.LEFT_OPERAND_KEY;
import static org.fiware.odrl.mapping.OdrlConstants.OPERATOR_KEY;
import static org.fiware.odrl.mapping.OdrlConstants.PERMISSION_KEY;
import static org.fiware.odrl.mapping.OdrlConstants.REFINEMENT_KEY;
import static org.fiware.odrl.mapping.OdrlConstants.RIGHT_OPERAND_KEY;
import static org.fiware.odrl.mapping.OdrlConstants.STRING_TYPE;
import static org.fiware.odrl.mapping.OdrlConstants.TARGET_KEY;
import static org.fiware.odrl.mapping.OdrlConstants.TYPE_ASSET;
import static org.fiware.odrl.mapping.OdrlConstants.TYPE_ASSET_COLLECTION;
import static org.fiware.odrl.mapping.OdrlConstants.TYPE_CONSTRAINT;
import static org.fiware.odrl.mapping.OdrlConstants.TYPE_KEY;
import static org.fiware.odrl.mapping.OdrlConstants.TYPE_LOGICAL_CONSTRAINT;
import static org.fiware.odrl.mapping.OdrlConstants.TYPE_PARTY;
import static org.fiware.odrl.mapping.OdrlConstants.TYPE_PARTY_COLLECTION;
import static org.fiware.odrl.mapping.OdrlConstants.TYPE_PERMISSION;
import static org.fiware.odrl.mapping.OdrlConstants.TYPE_POLICY;
import static org.fiware.odrl.mapping.OdrlConstants.UID_KEY;
import static org.fiware.odrl.mapping.OdrlConstants.VALUE_KEY;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Slf4j
public class OdrlMapper {

    public static final String STRING_ESCAPE_TEMPLATE = "\"%s\"";
    private final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

    private final ObjectMapper objectMapper;
    private final MappingConfiguration mappingConfiguration;
    private MappingResult mappingResult;

    public OdrlMapper(ObjectMapper objectMapper, MappingConfiguration mappingConfiguration) {
        this.objectMapper = objectMapper;
        this.mappingConfiguration = mappingConfiguration;
    }

    public MappingResult mapOdrl(Map<String, Object> policy) {
        mappingResult = new MappingResult();

        try {
            if (policy.containsKey(GRAPH_KEY) && policy.get(GRAPH_KEY) instanceof List<?> theGraph) {
                List<Map<String, Object>> policyMaps = theGraph.stream()
                        .map(this::convertToMap)
                        .toList();
                for (Map<String, Object> policyMap : policyMaps) {
                    mapPolicy(policyMap);
                }
            } else if (policy.containsKey(TYPE_KEY) && policy.get(TYPE_KEY).equals(TYPE_POLICY)) {
                mapPolicy(policy);
            } else {
                mappingResult.addFailure("The odrl does not contain valid policies.");
            }
        } catch (MappingException e) {
            mappingResult.addFailure(e.getMessage());
        }

        return mappingResult;
    }

    private void mapPolicy(Map<String, Object> thePolicy) throws MappingException {
        if (!thePolicy.containsKey(TYPE_KEY) || !thePolicy.get(TYPE_KEY).equals(TYPE_POLICY)) {
            mappingResult.addFailure("The object is not of a valid type odrl:Policy.");
        }
        if (!thePolicy.containsKey(PERMISSION_KEY)) {
            mappingResult.addFailure("The policy has no permission.");
        }
        if (mappingResult.isFailed()) {
            return;
        }
        Map<String, Object> thePermission = convertToMap(thePolicy.get(PERMISSION_KEY));

        mapPermission(thePermission);
    }

    // for now, we only support assignee, target, action
    private void mapPermission(Map<String, Object> thePermission) throws MappingException {
        if (thePermission.containsKey(TYPE_KEY) && !thePermission.get(TYPE_KEY).equals(TYPE_PERMISSION)) {
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
            return;
        }

        mapAction(thePermission.get(ACTION_KEY));
        mapAssignee(thePermission.get(ASSIGNEE_KEY));
        mapTarget(thePermission.get(TARGET_KEY));
        if (thePermission.containsKey(CONSTRAINT_KEY) && thePermission.get(CONSTRAINT_KEY) instanceof List<?> constraints) {
            var constraint = toLogicalConstraintString(new NamespacedValue("odrl", "andSequence"), constraints);
            mappingResult.addRule(constraint.constraint());
            constraint.packagesToImport().forEach(mappingResult::addImport);
        } else if (thePermission.containsKey(CONSTRAINT_KEY)) {
            mapRefinementObject(convertToMap(thePermission.get(CONSTRAINT_KEY)));
        }
    }

    private void mapTarget(Object theTarget) throws MappingException {
        NamespacedValue target = getNamespaced(TARGET_KEY);

        try {
            mapStringTarget(target, getStringOrByKey(theTarget, ID_KEY));
            return;
        } catch (MappingException e) {
            // no-op, it a map
        }
        Map<String, Object> targetMap = convertToMap(theTarget);

        if (!targetMap.containsKey(TYPE_KEY) || !(targetMap.get(TYPE_KEY) instanceof String type)) {
            mappingResult.addFailure("The target does not have a valid @type.");
            return;
        }

        if (type.equals(TYPE_ASSET)) {
            mapTargetAsset(targetMap);
        } else if (type.equals(TYPE_ASSET_COLLECTION)) {
            mapRefinementCollection(targetMap);
        } else {
            mappingResult.addFailure("%s is not a supported target.", type);
        }
    }


    private void mapAssignee(Object theAssignee) throws MappingException {
        NamespacedValue assignee = getNamespaced(ASSIGNEE_KEY);

        try {
            String assigneeString = getStringOrByKey(theAssignee, ID_KEY);
            if(isNamespaced(assigneeString)) {
                assignee = getNamespaced(assigneeString);
            }

            mapStringAssignee(assignee, assigneeString);
            return;
        } catch (MappingException e) {
            // no-op, its a map
        }

        Map<String, Object> assigneeMap = convertToMap(theAssignee);

        if (!assigneeMap.containsKey(TYPE_KEY) || !(assigneeMap.get(TYPE_KEY) instanceof String type)) {
            mappingResult.addFailure("The assignee does not have a valid @type.");
            return;
        }

        if (type.equals(TYPE_PARTY)) {
            mapAssigneeParty(assigneeMap);
        } else if (type.equals(TYPE_PARTY_COLLECTION)) {
            mapRefinementCollection(assigneeMap);
        } else {
            mappingResult.addFailure("%s is not a supported assignee.", type);
        }
    }

    private void mapRefinementCollection(Map<String, Object> theRefinementCollection) throws MappingException {
        if (!theRefinementCollection.containsKey(REFINEMENT_KEY)) {
            mappingResult.addFailure("No refinement contained in the collection.");
            return;
        }
        if (theRefinementCollection.get(REFINEMENT_KEY) instanceof List<?> constraintsList) {
            // list of constraints -> and_sequence
            var constraint = toLogicalConstraintString(new NamespacedValue("odrl", "andSequence"), constraintsList);
            mappingResult.addRule(constraint.constraint());
            constraint.packagesToImport().forEach(mappingResult::addImport);
            return;
        }

        Map<String, Object> refinement = convertToMap(theRefinementCollection.get(REFINEMENT_KEY));
        mapRefinementObject(refinement);
    }

    private void mapRefinementObject(Map<String, Object> refinementObject) throws MappingException {
        if (!refinementObject.containsKey(TYPE_KEY) || !(refinementObject.get(TYPE_KEY) instanceof String type)) {
            mappingResult.addFailure("The refinement does not contain a @type.");
            return;
        }
        if (type.equals(TYPE_CONSTRAINT)) {
            var constraint = getConstraint(refinementObject);
            mappingResult.addRule(constraint.constraint());
            constraint.packagesToImport().forEach(mappingResult::addImport);
        } else if (type.equals(TYPE_LOGICAL_CONSTRAINT)) {
            var constraint = getLogicalConstraint(refinementObject);
            mappingResult.addRule(constraint.constraint());
            constraint.packagesToImport().forEach(mappingResult::addImport);
        } else {
            mappingResult.addFailure("The type %s is not supported for refinements.", type);
        }
    }

    private Constraint getLogicalConstraint(Map<String, Object> logicalConstraint) throws MappingException {
        String operand = getSupportedOperands().stream()
                .filter(logicalConstraint::containsKey)
                .findAny()
                .orElseThrow(() -> new MappingException("The logical constraint does not contain a supported operand."));
        NamespacedValue namespacedOperand = getNamespaced(operand);
        Object operandObject = logicalConstraint.get(operand);
        if (operandObject instanceof List<?> constraintList) {
            return toLogicalConstraintString(namespacedOperand, constraintList);
        } else {
            Map<String, Object> operandMap = convertToMap(logicalConstraint.get(operand));
            if (operandMap.containsKey(OdrlConstants.LIST_KEY) && operandMap.get(OdrlConstants.LIST_KEY) instanceof List<?> constraintList) {
                return toLogicalConstraintString(namespacedOperand, constraintList);
            }
            throw new MappingException("Only @list is supported as a key in an operand.");
        }
    }

    private Constraint toLogicalConstraintString(NamespacedValue namespacedOperand, List<?> constraints) throws MappingException {
        StringJoiner constraintListStringJoiner = new StringJoiner(",");
        List<Map<String, Object>> constraintMaps = constraints
                .stream()
                .map(this::convertToMap).toList();
        List<String> packagesToImport = new ArrayList<>();
        for (Map<String, Object> constraintMap : constraintMaps) {
            var constraint = getConstraint(constraintMap);
            packagesToImport.addAll(constraint.packagesToImport());
            constraintListStringJoiner.add(constraint.constraint());
        }
        String constraintsParameter = String.format("[%s]", constraintListStringJoiner);
        RegoMethod regoOperand = getFromConfig(OdrlAttribute.OPERAND, namespacedOperand);
        packagesToImport.add(regoOperand.regoPackage());
        return new Constraint(String.format(regoOperand.regoMethod(), constraintsParameter), packagesToImport);
    }

    private Map<String, Object> convertToMap(Object theObject) {
        return objectMapper.convertValue(theObject, new TypeReference<Map<String, Object>>() {
        });
    }

    private List<String> getSupportedOperands() {
        return mappingConfiguration.get(OdrlAttribute.OPERAND)
                .entrySet()
                .stream()
                .flatMap(namespaceEntry -> {
                    String namespace = namespaceEntry.getKey();
                    return namespaceEntry.getValue().keySet()
                            .stream()
                            .map(operand -> String.format("%s:%s", namespace, operand));
                })
                .toList();
    }

    private void checkValidConstraing(Map<String, Object> constraint) throws MappingException {
        if (!constraint.containsKey(LEFT_OPERAND_KEY)) {
            throw new MappingException("The constraint does not contain a left-operand");
        }
        if (!constraint.containsKey(RIGHT_OPERAND_KEY)) {
            throw new MappingException("The constraint does not contain a right-operand");
        }
        if (!constraint.containsKey(OPERATOR_KEY)) {
            throw new MappingException("The constraint does not contain an operator");
        }
    }

    private String getLeftOperandFromConstraint(Map<String, Object> constraint) throws MappingException {
        try {
            return getStringOrByKey(constraint.get(LEFT_OPERAND_KEY), ID_KEY);
        } catch (MappingException e) {
            return getStringOrByKey(constraint.get(LEFT_OPERAND_KEY), VALUE_KEY);
        }
    }

    private Constraint handleRightOperandList(List<?> rightOperand, String leftOperand, RegoMethod operatorMethod) {
        List<?> rightOperands = rightOperand.stream().map(operand -> {
            if (operand instanceof String stringOperand) {
                return String.format(STRING_ESCAPE_TEMPLATE, stringOperand);
            } else {
                return operand;
            }
        }).toList();
        return new Constraint(String.format(operatorMethod.regoMethod(), leftOperand, rightOperands), List.of(operatorMethod.regoPackage()));
    }

    /* Extracts the rego method from an rightOperand in that is in form of an object
     * Potential objects:
     * "odrl:rightOperand": {
     *        "@id": "odrl:policyUsage"
     * }
     *  "odrl:rightOperand": {
     *        "@value": "SomeOperandValue"
     * }
     *  "odrl:rightOperand": {
     *        "@type": "xsd:string",
     *        "@value": "myString"
     * }
     *  "odrl:rightOperand": {
     *        "@type": "xsd:date",
     *        "@value": "2023-12-31"
     * }
     */
    private Object handleRightOperandMap(Map<?, ?> operandMap) throws MappingException {
        if (operandMap.containsKey(TYPE_KEY) && operandMap.get(TYPE_KEY).equals(STRING_TYPE)) {
            return String.format(STRING_ESCAPE_TEMPLATE, operandMap.get(VALUE_KEY));
        } else if (operandMap.containsKey(TYPE_KEY) && operandMap.get(TYPE_KEY).equals(DATE_TYPE)) {
            String dateString = (String) operandMap.get(VALUE_KEY);
            try {
                Date parsedDate = dateFormat.parse(dateString);
                return parsedDate.getTime();
            } catch (ParseException e) {
                throw new MappingException(String.format("The date %s is not valid", dateString), e);
            }
        } else if (operandMap.containsKey(VALUE_KEY)) {
            return operandMap.get(VALUE_KEY);
        } else if (operandMap.containsKey(ID_KEY)) {
            return operandMap.get(ID_KEY);
        }
        log.debug("The given operandMap is not in a supported format: {}", operandMap);
        throw new MappingException("The given operandMap is not in a supported format.");
    }

    private Constraint getConstraint(Map<String, Object> constraint) throws MappingException {
        if (constraint.containsKey(TYPE_KEY) && constraint.get(TYPE_KEY).equals(TYPE_LOGICAL_CONSTRAINT)) {
            return getLogicalConstraint(constraint);
        }

        checkValidConstraing(constraint);
        String leftOperand = getLeftOperandFromConstraint(constraint);

        if (isNamespaced(leftOperand)) {
            RegoMethod leftOperandMethod = getFromConfig(OdrlAttribute.LEFT_OPERAND, getNamespaced(leftOperand));
            mappingResult.addImport(leftOperandMethod.regoPackage());
            leftOperand = String.format(leftOperandMethod.regoMethod());
        }

        String operator = getStringOrByKey(constraint.get(OPERATOR_KEY), ID_KEY);
        RegoMethod operatorMethod = getFromConfig(OdrlAttribute.OPERATOR, getNamespaced(operator));
        if (constraint.get(RIGHT_OPERAND_KEY) instanceof List<?> operandList) {
            return handleRightOperandList(operandList, leftOperand, operatorMethod);
        } else {
            Object operandObject = constraint.get(RIGHT_OPERAND_KEY);
            Object rightOperand;
            if (operandObject instanceof Map<?, ?> operandMap) {
                rightOperand = handleRightOperandMap(operandMap);
            } else if (operandObject instanceof String) {
                rightOperand = String.format(STRING_ESCAPE_TEMPLATE, operandObject);
            } else {
                rightOperand = operandObject;
            }

            if (rightOperand instanceof String rightOperandString && isNamespaced(rightOperandString)) {
                RegoMethod ro = getFromConfig(OdrlAttribute.RIGHT_OPERAND, getNamespaced(rightOperandString));
                rightOperand = ro.regoMethod();
                mappingResult.addImport(ro.regoPackage());
            }

            return new Constraint(String.format(operatorMethod.regoMethod(), leftOperand, rightOperand), List.of(operatorMethod.regoPackage()));
        }
    }

    /*
     * Get the id value from objects that could be either a plain string, containing the id or an object with the @id attribute.
     * Example:
     * "leftOperand": "dome-op:role"
     * "leftOperand": {
     *  "@id":"dome-op:role"
     * }
     */
    private String getStringOrByKey(Object theObject, String theKey) throws MappingException {
        if (theObject instanceof String value) {
            return value;
        }
        Map<String, Object> objectMap = convertToMap(theObject);
        if (objectMap.containsKey(theKey) && objectMap.get(theKey) instanceof String value) {
            return value;
        }
        throw new MappingException(String.format("Was not able to extract a valid %s.", theKey));
    }

    private void mapStringAssignee(NamespacedValue assignee, String assigneeId) throws MappingException {
        RegoMethod regoMethod = getFromConfig(OdrlAttribute.ASSIGNEE, assignee);
        mappingResult.addImport(regoMethod.regoPackage());
        mappingResult.addRule(String.format(regoMethod.regoMethod(), String.format(STRING_ESCAPE_TEMPLATE, assigneeId)));
    }

    private void mapStringTarget(NamespacedValue target, String targetId) throws MappingException {
        RegoMethod regoMethod = getFromConfig(OdrlAttribute.TARGET, target);
        mappingResult.addImport(regoMethod.regoPackage());
        // either the issuer or the concrete subject are ok
        mappingResult.addRule(String.format(regoMethod.regoMethod(), String.format(STRING_ESCAPE_TEMPLATE, targetId)));
    }

    private void mapAssigneeParty(Map<String, Object> theParty) throws MappingException {
        Optional<Object> optionalUid = Optional.ofNullable(theParty.get(UID_KEY));
        if (optionalUid.isPresent() && optionalUid.get() instanceof String uid) {
            mapStringAssignee(getNamespaced(ASSIGNEE_KEY), uid);
        } else {
            mappingResult.addFailure("The party does not contain a valid uid.");
        }
    }

    private void mapTargetAsset(Map<String, Object> theAsset) throws MappingException {
        Optional<Object> optionalUid = Optional.ofNullable(theAsset.get(UID_KEY));
        if (optionalUid.isPresent() && optionalUid.get() instanceof String uid) {
            mapStringTarget(getNamespaced(TARGET_KEY), uid);
        } else {
            mappingResult.addFailure("The asset does not contain a valid uid.");
        }
    }


    private RegoMethod getFromConfig(OdrlAttribute odrlAttribute, NamespacedValue namespacedValue) throws MappingException {
        NamespacedMap namespacedMap = Optional.ofNullable(mappingConfiguration.get(odrlAttribute))
                .orElseThrow(() -> new MappingException((String.format("No mapping for `%s` configured", odrlAttribute))));
        RegoMap regoMap = Optional.ofNullable(namespacedMap.get(namespacedValue.namespace()))
                .orElseThrow(() -> new MappingException(String.format("No mapping for `%s:%s` configured", odrlAttribute, namespacedValue.namespace())));
        return Optional.ofNullable(regoMap.get(namespacedValue.value()))
                .orElseThrow(() -> new MappingException(String.format("No mapping for `%s:%s:%s` configured", odrlAttribute, namespacedValue.namespace(), namespacedValue.value())));
    }

    private void mapAction(Object theAction) throws MappingException {
        RegoMethod regoMethod = getFromConfig(OdrlAttribute.ACTION, getNamespaced(getStringOrByKey(theAction, ID_KEY)));
        mappingResult.addImport(regoMethod.regoPackage());
        mappingResult.addRule(regoMethod.regoMethod());
    }

    private boolean isNamespaced(String namespacedValue) {
        return namespacedValue.split(":").length == 2;
    }

    private NamespacedValue getNamespaced(String namespacedValue) throws MappingException {
        String[] splitted = namespacedValue.split(":");
        if (splitted.length != 2) {
            throw new MappingException(String.format("%s is not a namespaced value.", namespacedValue));
        }
        return new NamespacedValue(splitted[0], splitted[1]);
    }

    private record NamespacedValue(String namespace, String value) {
    }

    private record Constraint(String constraint, List<String> packagesToImport) {
    }
}
