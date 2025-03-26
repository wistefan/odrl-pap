package org.fiware.odrl.mapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import io.quarkus.runtime.annotations.RegisterForReflection;
import org.fiware.odrl.rego.RegoMethod;

import java.util.Map;
import java.util.Optional;

/**
 * Provides capabilities for mapping odrl:leftOperand
 */
@RegisterForReflection
public class LeftOperandMapper extends TypeMapper {

	public LeftOperandMapper(ObjectMapper objectMapper, MappingConfiguration mappingConfiguration) {
		super(objectMapper, getMappings(mappingConfiguration, OdrlAttribute.LEFT_OPERAND));
	}

	// package private, since it's only to fulfill cdi requirements
	LeftOperandMapper() {
		super(null, null);
	}

	/**
	 * Is the given key a sub-class of odrl:leftOperand?
	 */
	public boolean isLeftOperand(String key) {
		if (key.equalsIgnoreCase(OdrlConstants.LEFT_OPERAND_KEY)) {
			return true;
		}
		return mappings.containsKey(key);
	}

	/**
	 * is the given type just the base-type, e.g. odrl:leftOperand?
	 */
	public boolean isBaseType(String type) {
		return type.equalsIgnoreCase(OdrlConstants.LEFT_OPERAND_KEY);
	}

	/**
	 * Retrieves the key of the leftOperand from the given constraint. Throws an exception if none is found
	 */
	public String getLeftOperandKey(Map<String, Object> theConstraint) throws MappingException {
		return theConstraint.keySet().stream().filter(this::isLeftOperand).findFirst()
				.orElseThrow(() -> new MappingException("The provided constraint does not contain a left operand."));
	}

	/**
	 * Get the type of the leftOperand at the given key in the provided object.
	 */
	public String getType(String key, Object leftOperandObject) {
		// case "my:customOperand": {}
		if (!key.equalsIgnoreCase(OdrlConstants.LEFT_OPERAND_KEY)) {
			return key;
		}

		// case "odrl:leftOperand" : "my:customOperand"
		if (leftOperandObject instanceof String typeString) {
			// it's a mapping
			if (isLeftOperand(typeString)) {
				return typeString;
			} else {
				// it's only a value
				return OdrlConstants.LEFT_OPERAND_KEY;
			}
		}

		Map<String, Object> theLeftOperandMap = convertToMap(leftOperandObject);
		// case "odrl:leftOperand": {"@value":"somethingStatic"}
		if (!theLeftOperandMap.containsKey(OdrlConstants.ID_KEY)) {
			return OdrlConstants.LEFT_OPERAND_KEY;
		} else
		// case "odrl:leftOperand": {"@id":"my:customOperand"}
		{
			return (String) theLeftOperandMap.get(OdrlConstants.ID_KEY);
		}
	}

	/**
	 * Get the value of the leftOperand with the given type and object.
	 */
	public Optional<?> getValue(String type, Object leftOperandObject) {
		// case "odrl:leftOperand" : "my:customOperand"
		// or "my:customOperand": "static-value"
		if (leftOperandObject instanceof String valueString) {
			if (valueString.equals(type)) {
				return Optional.empty();
			} else {
				return Optional.ofNullable(valueString);
			}
		}

		Map<String, Object> theLeftOperandMap = convertToMap(leftOperandObject);
		// case "odrl:leftOperand" : {"@Value": "something"}
		// or "my:customOperand": {"@Value": "something"}
		if (theLeftOperandMap.containsKey(OdrlConstants.VALUE_KEY)) {
			return Optional.ofNullable(theLeftOperandMap.get(OdrlConstants.VALUE_KEY));
		}
		return Optional.empty();
	}

}
