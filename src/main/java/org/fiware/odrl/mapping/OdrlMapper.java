package org.fiware.odrl.mapping;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.enterprise.context.RequestScoped;
import jakarta.enterprise.inject.Instance;
import lombok.extern.slf4j.Slf4j;
import org.fiware.odrl.rego.RegoMethod;
import org.fiware.odrl.verification.TypeVerifier;
import org.fiware.odrl.verification.VerificationException;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.StringJoiner;

import static org.fiware.odrl.mapping.OdrlConstants.ACTION_KEY;
import static org.fiware.odrl.mapping.OdrlConstants.ASSIGNEE_KEY;
import static org.fiware.odrl.mapping.OdrlConstants.ASSIGNER_KEY;
import static org.fiware.odrl.mapping.OdrlConstants.GRAPH_KEY;
import static org.fiware.odrl.mapping.OdrlConstants.ID_KEY;
import static org.fiware.odrl.mapping.OdrlConstants.ODRL_UID_KEY;
import static org.fiware.odrl.mapping.OdrlConstants.PERMISSION_KEY;
import static org.fiware.odrl.mapping.OdrlConstants.REFINEMENT_KEY;
import static org.fiware.odrl.mapping.OdrlConstants.SUPPORTED_POLICY_TYPES;
import static org.fiware.odrl.mapping.OdrlConstants.TARGET_KEY;
import static org.fiware.odrl.mapping.OdrlConstants.TYPE_ASSET;
import static org.fiware.odrl.mapping.OdrlConstants.TYPE_ASSET_COLLECTION;
import static org.fiware.odrl.mapping.OdrlConstants.TYPE_KEY;
import static org.fiware.odrl.mapping.OdrlConstants.TYPE_LOGICAL_CONSTRAINT;
import static org.fiware.odrl.mapping.OdrlConstants.TYPE_PARTY;
import static org.fiware.odrl.mapping.OdrlConstants.TYPE_PARTY_COLLECTION;
import static org.fiware.odrl.mapping.OdrlConstants.TYPE_PERMISSION;
import static org.fiware.odrl.mapping.OdrlConstants.VALUE_KEY;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Slf4j
@RequestScoped
public class OdrlMapper {

    public static final String STRING_ESCAPE_TEMPLATE = "\"%s\"";
    private static final NamespacedValue ODRL_AND_SEQUENCE = new NamespacedValue("odrl", "andSequence");
    private final ObjectMapper objectMapper;
    private final MappingConfiguration mappingConfiguration;
    private final List<TypeVerifier> typeVerifiers;
    private final LeftOperandMapper leftOperandMapper;
    private final ConstraintMapper constraintMapper;
    private final OperatorMapper operatorMapper;
    private final RightOperandMapper rightOperandMapper;

    private final TopLevelElements topLevelElements = new TopLevelElements();


    private MappingResult mappingResult;

    public OdrlMapper(ObjectMapper objectMapper, MappingConfiguration mappingConfiguration, Instance<TypeVerifier> typeVerifiers, LeftOperandMapper leftOperandMapper, ConstraintMapper constraintMapper, OperatorMapper operatorMapper, RightOperandMapper rightOperandMapper) {
        this.objectMapper = objectMapper;
        this.mappingConfiguration = mappingConfiguration;
        this.typeVerifiers = typeVerifiers.stream().toList();
        this.leftOperandMapper = leftOperandMapper;
        this.constraintMapper = constraintMapper;
        this.operatorMapper = operatorMapper;
        this.rightOperandMapper = rightOperandMapper;
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
            } else if (policy.containsKey(TYPE_KEY) && isSupportedType(policy.get(TYPE_KEY))) {
                mapPolicy(policy);
            } else {
                mappingResult.addFailure("The odrl does not contain valid policies.");
            }
        } catch (MappingException e) {
            mappingResult.addFailure(e.getMessage());
        }

        return mappingResult;
    }

    private boolean isSupportedType(Object policyType) {
        if (policyType instanceof String policyTypeString) {
            return SUPPORTED_POLICY_TYPES.contains(policyTypeString);
        }
        return false;
    }

    private Optional<String> getUid(Map<String, Object> thePolicy) {
        if (thePolicy.containsKey(ODRL_UID_KEY) && thePolicy.get(ODRL_UID_KEY) instanceof String uidString) {
            return Optional.of(uidString);
        }
        if (thePolicy.containsKey(ID_KEY) && thePolicy.get(ID_KEY) instanceof String uidString) {
            return Optional.of(uidString);
        }
        return Optional.empty();
    }

    private void mapPolicy(Map<String, Object> thePolicy) throws MappingException {
        Optional<String> optionalId = getUid(thePolicy);
        if (optionalId.isPresent()) {
            mappingResult.setUid(optionalId.get());
        } else {
            log.info("The policy {} does not contain a valid uid.", thePolicy);
            mappingResult.addFailure("The policy does not contain a valid UID.");
        }
        if (!thePolicy.containsKey(TYPE_KEY) || !isSupportedType(thePolicy.get(TYPE_KEY))) {
            mappingResult.addFailure("The object is not of a valid type odrl:Policy.");
        }
        if (!thePolicy.containsKey(PERMISSION_KEY)) {
            mappingResult.addFailure("The policy has no permission.");
        }

        if (mappingResult.isFailed()) {
            log.info("Error validation policy: {}", mappingResult.getFailureReasons());
            return;
        }
        // prepare the top-level elements(if present) for later use
        fillTopLevel(thePolicy);

        Object permissionObject = thePolicy.get(PERMISSION_KEY);
        if (permissionObject instanceof List<?> permissionList) {
            for (Object o : permissionList) {
                mapPermission(convertToMap(o));
            }
        } else {
            mapPermission(convertToMap(permissionObject));
        }
    }

    /**
     * In certain cases(f.e. policies in the edc) certain elements(e.g. target, assigner, assignee) are created at the top-level of the policy and
     * then be relevant for all sub-elements(f.e. permissions). Therefor we store them for later use.
     */
    private void fillTopLevel(Map<String, Object> thePolicy) {
        Optional.ofNullable(thePolicy.get(ASSIGNER_KEY)).ifPresent(topLevelElements::setAssigner);
        Optional.ofNullable(thePolicy.get(ASSIGNEE_KEY)).ifPresent(topLevelElements::setAssignee);
        Optional.ofNullable(thePolicy.get(TARGET_KEY)).ifPresent(topLevelElements::setTarget);
    }

    private void verifyObject(Map<String, Object> theObject) throws MappingException {
        for (TypeVerifier typeVerifier : typeVerifiers) {
            for (String type : typeVerifier.verifiableTypes()) {
                try {
                    if (theObject.containsKey(type)) {
                        typeVerifier.verify(theObject.get(type));
                    } else if (theObject.containsKey(TYPE_KEY) && theObject.get(TYPE_KEY).equals(type)) {
                        typeVerifier.verify(theObject);
                    }
                } catch (VerificationException e) {
                    log.debug(String.format("The object %s is not valid.", theObject));
                    throw new MappingException(e.getMessage(), e);
                }
            }
        }
    }

    // for now, we only support assignee, target, action and constraints
    private void mapPermission(Map<String, Object> thePermission) throws MappingException {
        if (thePermission.containsKey(TYPE_KEY) && !thePermission.get(TYPE_KEY).equals(TYPE_PERMISSION)) {
            mappingResult.addFailure("The object is not of a valid type odrl:Permission.");
        }
        if (!thePermission.containsKey(ACTION_KEY)) {
            mappingResult.addFailure("The permission does not contain an action.");
        }
        if (!thePermission.containsKey(TARGET_KEY) && topLevelElements.getTarget().isEmpty()) {
            mappingResult.addFailure("The permission does not contain a target.");
        }
        if (!thePermission.containsKey(ASSIGNEE_KEY) && topLevelElements.getAssignee().isEmpty()) {
            mappingResult.addFailure("The permission does not contain an assignee.");
        }

        if (mappingResult.isFailed()) {
            log.info("Error validation permission: {}", mappingResult.getFailureReasons());
            return;
        }

        verifyObject(thePermission);

        mapAction(thePermission.get(ACTION_KEY));
        mapAssignee(Optional.ofNullable(thePermission.get(ASSIGNEE_KEY)).orElseGet(() -> topLevelElements.getAssignee().get()));
        mapTarget(Optional.ofNullable(thePermission.get(TARGET_KEY)).orElseGet(() -> topLevelElements.getTarget().get()));

        for (Map.Entry<String, Object> entry : thePermission.entrySet()) {
            boolean isConstraint = constraintMapper.isConstraint(entry.getKey());
            if (isConstraint) {
                String constraintType = constraintMapper.getType(entry.getKey(), entry.getValue());
                if (entry.getValue() instanceof List<?> constraints) {
                    var constraint = toLogicalConstraintString(constraintType, ODRL_AND_SEQUENCE, constraints);
                    mappingResult.addRule(constraint.constraint());
                    constraint.packagesToImport().forEach(mappingResult::addImport);
                } else {
                    mapRefinementObject(constraintType, convertToMap(entry.getValue()));
                }
            }
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
        if (mapStringAssignee(theAssignee)) {
            return;
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

        verifyObject(theRefinementCollection);

        if (!theRefinementCollection.containsKey(REFINEMENT_KEY)) {
            mappingResult.addFailure("No refinement contained in the collection.");
            return;
        }
        if (theRefinementCollection.get(REFINEMENT_KEY) instanceof List<?> constraintsList) {
            // list of constraints -> and_sequence
            var constraint = toLogicalConstraintString(OdrlConstants.TYPE_LOGICAL_CONSTRAINT, ODRL_AND_SEQUENCE, constraintsList);
            mappingResult.addRule(constraint.constraint());
            constraint.packagesToImport().forEach(mappingResult::addImport);
            return;
        }

        Map<String, Object> refinement = convertToMap(theRefinementCollection.get(REFINEMENT_KEY));
        mapRefinementObject(constraintMapper.getType(REFINEMENT_KEY, refinement), refinement);
    }

    private void mapRefinementObject(String type, Map<String, Object> refinementObject) throws MappingException {

        verifyObject(refinementObject);

        if (type.equals(TYPE_LOGICAL_CONSTRAINT)) {
            var constraint = getLogicalConstraint(TYPE_LOGICAL_CONSTRAINT, refinementObject);
            mappingResult.addRule(constraint.constraint());
            constraint.packagesToImport().forEach(mappingResult::addImport);
        } else if (constraintMapper.isConstraint(type)) {
            var constraint = getConstraint(type, refinementObject);
            mappingResult.addRule(constraint.constraint());
            constraint.packagesToImport().forEach(mappingResult::addImport);
        } else {
            mappingResult.addFailure("The type %s is not supported for refinements.", type);
        }
    }

    private Constraint getLogicalConstraint(String type, Map<String, Object> logicalConstraint) throws MappingException {

        verifyObject(logicalConstraint);

        String operand = getSupportedOperands().stream()
                .filter(logicalConstraint::containsKey)
                .findAny()
                .orElseThrow(() -> new MappingException("The logical constraint does not contain a supported operand."));
        NamespacedValue namespacedOperand = getNamespaced(operand);
        Object operandObject = logicalConstraint.get(operand);
        if (operandObject instanceof List<?> constraintList) {
            return toLogicalConstraintString(type, namespacedOperand, constraintList);
        } else {
            Map<String, Object> operandMap = convertToMap(logicalConstraint.get(operand));
            if (operandMap.containsKey(OdrlConstants.LIST_KEY) && operandMap.get(OdrlConstants.LIST_KEY) instanceof List<?> constraintList) {
                return toLogicalConstraintString(type, namespacedOperand, constraintList);
            }
            throw new MappingException("Only @list is supported as a key in an operand.");
        }
    }

    private Constraint toLogicalConstraintString(String type, NamespacedValue namespacedOperand, List<?> constraints) throws MappingException {
        StringJoiner constraintListStringJoiner = new StringJoiner(",");
        List<Map<String, Object>> constraintMaps = constraints
                .stream()
                .map(this::convertToMap).toList();
        List<String> packagesToImport = new ArrayList<>();
        for (Map<String, Object> constraintMap : constraintMaps) {
            String concreteType = type;
            // if it's not a specific logical constraint, we need to check the concrete type of the sub elements
            if (type.equalsIgnoreCase(TYPE_LOGICAL_CONSTRAINT)) {
                concreteType = constraintMapper.getTypeFromConstraint(constraintMap);
            }
            var constraint = getConstraint(concreteType, constraintMap);
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

    private Constraint getConstraint(String type, Map<String, Object> constraint) throws MappingException {
        if (type.equals(TYPE_LOGICAL_CONSTRAINT)) {
            return getLogicalConstraint(type, constraint);
        }

        String leftOperandKey = leftOperandMapper.getLeftOperandKey(constraint);
        String leftOperandType = leftOperandMapper.getType(leftOperandKey, constraint.get(leftOperandKey));
        Optional<?> leftOperandValue = leftOperandMapper.getValue(leftOperandType, constraint.get(leftOperandKey));

        Object leftOperand;
        if (leftOperandMapper.isBaseType(leftOperandType)) {
            leftOperand = leftOperandValue.orElseGet(null);
        } else {
            RegoMethod leftOperandMethod = getFromConfig(OdrlAttribute.LEFT_OPERAND, getNamespaced(leftOperandType));
            mappingResult.addImport(leftOperandMethod.regoPackage());
            leftOperand = leftOperandValue.map(v -> {
                if (v instanceof String) {
                    return String.format(leftOperandMethod.regoMethod(), String.format(STRING_ESCAPE_TEMPLATE, v));
                }
                return String.format(leftOperandMethod.regoMethod(), v);
            }).orElseGet(leftOperandMethod::regoMethod);
        }

        String operatorKey = operatorMapper.getOperatorKey(constraint);
        String operatorType = operatorMapper.getType(operatorKey, constraint.get(operatorKey));
        RegoMethod operatorMethod = getFromConfig(OdrlAttribute.OPERATOR, getNamespaced(operatorType));

        String rightOperandKey = rightOperandMapper.getRightOperandKey(constraint);
        String rightOperandType = rightOperandMapper.getType(rightOperandKey, constraint.get(rightOperandKey));
        Optional<?> rightOperandValue = rightOperandMapper.getValue(rightOperandType, constraint.get(rightOperandKey));


        String mappedConstraint;

        List<String> regoPackages = new ArrayList<>();

        if (rightOperandValue.isPresent() && rightOperandValue.get() instanceof List<?> valueList) {
            mappedConstraint = String.format(operatorMethod.regoMethod(), leftOperand, valueList.stream().map(operand -> {
                if (operand instanceof String stringOperand) {
                    return String.format(STRING_ESCAPE_TEMPLATE, stringOperand);
                } else {
                    return operand;
                }
            }).toList());
            regoPackages.add(operatorMethod.regoPackage());
        } else {
            Object rightOperand;
            if (rightOperandValue.isEmpty()) {
                RegoMethod ro = rightOperandMapper.getMethod(rightOperandType);
                rightOperand = ro.regoMethod();
                mappingResult.addImport(ro.regoPackage());
            } else if (rightOperandValue.get() instanceof String) {
                rightOperand = String.format(STRING_ESCAPE_TEMPLATE, rightOperandValue.get());
            } else {
                rightOperand = rightOperandValue.get();
            }

            mappedConstraint = String.format(operatorMethod.regoMethod(), leftOperand, rightOperand);
            regoPackages.add(operatorMethod.regoPackage());
        }

        List<String> additionalConstraints = constraint.keySet()
                .stream()
                .filter(constraintMapper::isConstraint)
                .toList();

        List<String> additionalMappedConstraints = new ArrayList<>();
        for (String additionalConstraint : additionalConstraints) {
            RegoMethod additionalConstraintRegoMethod = constraintMapper.getMethod(additionalConstraint);
            additionalMappedConstraints.add(constraintMapper.getValue(additionalConstraint, constraint.get(additionalConstraint))
                    .map(v -> String.format(additionalConstraintRegoMethod.regoMethod(), v)).orElseGet(additionalConstraintRegoMethod::regoMethod));
            regoPackages.add(additionalConstraintRegoMethod.regoPackage());
        }

        if (additionalMappedConstraints.isEmpty()) {
            return new Constraint(mappedConstraint, regoPackages);
        } else {
            RegoMethod mappedConstraintMethod = constraintMapper.getMethod(type);
            StringJoiner constraintListStringJoiner = new StringJoiner(",");
            constraintListStringJoiner.add(mappedConstraint);
            additionalMappedConstraints.forEach(constraintListStringJoiner::add);
            String constraintsParameter = String.format("[%s]", constraintListStringJoiner);
            regoPackages.add(mappedConstraintMethod.regoPackage());
            return new Constraint(String.format(mappedConstraintMethod.regoMethod(), constraintsParameter), regoPackages);
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

    private boolean mapStringAssignee(Object theAssignee) throws MappingException {
        boolean result = false;
        var assigneeString = "";

        if (theAssignee instanceof String theString) {
            assigneeString = theString;
            result = true;
        } else {
            Map<String, Object> assigneeMap = convertToMap(theAssignee);
            verifyObject(assigneeMap);
            if (assigneeMap.containsKey(VALUE_KEY) && assigneeMap.get(VALUE_KEY) instanceof String theString) {
                assigneeString = theString;
                result = true;
            } else if (assigneeMap.containsKey(ID_KEY) && assigneeMap.get(ID_KEY) instanceof String theString) {
                assigneeString = theString;
                result = true;
            }
        }

        if (result) {
            NamespacedValue namespacedAssignee = null;
            var assigneeId = "";
            try {
                getFromConfig(OdrlAttribute.ASSIGNEE, getNamespaced(assigneeString));
                namespacedAssignee = getNamespaced(assigneeString);
            } catch (MappingException mappingException) {
                namespacedAssignee = getNamespaced(ASSIGNEE_KEY);
                assigneeId = assigneeString;
            }
            RegoMethod regoMethod = getFromConfig(OdrlAttribute.ASSIGNEE, namespacedAssignee);
            mappingResult.addImport(regoMethod.regoPackage());
            mappingResult.addRule(String.format(regoMethod.regoMethod(), String.format(STRING_ESCAPE_TEMPLATE, assigneeId)));
        }

        return result;
    }

    private void mapStringTarget(NamespacedValue target, String targetId) throws MappingException {
        RegoMethod regoMethod = getFromConfig(OdrlAttribute.TARGET, target);
        mappingResult.addImport(regoMethod.regoPackage());
        // either the issuer or the concrete subject are ok
        mappingResult.addRule(String.format(regoMethod.regoMethod(), String.format(STRING_ESCAPE_TEMPLATE, targetId)));
    }

    private void mapAssigneeParty(Map<String, Object> theParty) throws MappingException {
        verifyObject(theParty);

        Optional<Object> optionalUid = Optional.ofNullable(theParty.get(ODRL_UID_KEY));
        if (optionalUid.isPresent() && optionalUid.get() instanceof String uid) {
            mapStringAssignee(uid);
        } else {
            mappingResult.addFailure("The party does not contain a valid uid.");
        }
    }

    private void mapTargetAsset(Map<String, Object> theAsset) throws MappingException {
        verifyObject(theAsset);
        Optional<Object> optionalUid = Optional.ofNullable(theAsset.get(ODRL_UID_KEY));
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

    private class TopLevelElements {
        private Object target;
        private Object assignee;
        private Object assigner;

        public TopLevelElements setTarget(Object target) {
            this.target = target;
            return this;
        }

        public TopLevelElements setAssignee(Object assignee) {
            this.assignee = assignee;
            return this;
        }

        public TopLevelElements setAssigner(Object assigner) {
            this.assigner = assigner;
            return this;
        }

        public Optional<Object> getTarget() {
            return Optional.ofNullable(target);
        }

        public Optional<Object> getAssignee() {
            return Optional.ofNullable(assignee);
        }

        public Optional<Object> getAssigner() {
            return Optional.ofNullable(assigner);
        }
    }
}
