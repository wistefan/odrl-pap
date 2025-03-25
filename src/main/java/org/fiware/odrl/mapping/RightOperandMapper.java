package org.fiware.odrl.mapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.fiware.odrl.rego.RegoMethod;

import java.util.List;
import java.util.Map;
import java.util.Optional;

public class RightOperandMapper extends TypeMapper {

	public RightOperandMapper(ObjectMapper objectMapper, Map<String, RegoMethod> mappings) {
		super(objectMapper, mappings);
	}

	// package private, since it's only to fulfill cdi requirements
	RightOperandMapper() {
		super(null, null);
	}

	public boolean isRightOperand(String key) {
		if (key.equalsIgnoreCase(OdrlConstants.RIGHT_OPERAND_KEY)) {
			return true;
		}
		return mappings.containsKey(key);
	}

	public String getRightOperandKey(Map<String, Object> theConstraint) throws MappingException {
		return theConstraint.keySet().stream().filter(this::isRightOperand).findFirst()
				.orElseThrow(() -> new MappingException("The provided constraint does not contain a right operand."));
	}

	public String getType(String key, Object rightOperandObject) {
		// case "my:customOperand": {}
		if (!key.equalsIgnoreCase(OdrlConstants.RIGHT_OPERAND_KEY)) {
			return key;
		}

		// case "odrl:rightOperand" : "my:customOperand"
		if (rightOperandObject instanceof String typeString) {
			// it's a mapping
			if (isRightOperand(typeString)) {
				return typeString;
			} else {
				// it's only a value
				return OdrlConstants.RIGHT_OPERAND_KEY;
			}
		}

		//  case "odrl:rightOperand" : [..,]
		if (rightOperandObject instanceof List<?>) {
			return OdrlConstants.RIGHT_OPERAND_KEY;
		}

		Map<String, Object> theRightOperandMap = convertToMap(rightOperandObject);
		// case "odrl:rightOperand": {"@value":"somethingStatic"}
		if (!theRightOperandMap.containsKey(OdrlConstants.ID_KEY)) {
			return OdrlConstants.RIGHT_OPERAND_KEY;
		} else
		// case "odrl:rightOperand": {"@id":"my:customOperand"}
		{
			return (String) theRightOperandMap.get(OdrlConstants.ID_KEY);
		}
	}

	public Optional<?> getValue(String type, Object rightOperandObject) {
		// case "odrl:rightOperand" : "my:customOperand"
		// or "my:customOperand": "static-value"
		if (rightOperandObject instanceof String valueString) {
			if (valueString.equals(type)) {
				return Optional.empty();
			} else {
				return Optional.ofNullable(valueString);
			}
		}

		if (rightOperandObject instanceof List<?> valueList) {
			return Optional.of(valueList);
		}

		Map<String, Object> theRightOperandMap = convertToMap(rightOperandObject);
		// case "odrl:leftOperand" : {"@Value": "something"}
		// or "my:customOperand": {"@Value": "something"}
		if (theRightOperandMap.containsKey(OdrlConstants.VALUE_KEY)) {
			return Optional.ofNullable(theRightOperandMap.get(OdrlConstants.VALUE_KEY));
		}
		return Optional.empty();
	}

}
