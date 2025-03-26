package org.fiware.odrl.mapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.fiware.odrl.rego.RegoMethod;

import java.util.Map;

/**
 * Provides capabilites for mapping odrl:operator
 */
public class OperatorMapper extends TypeMapper {

	public OperatorMapper(ObjectMapper objectMapper, MappingConfiguration mappingConfiguration) {
		super(objectMapper, getMappings(mappingConfiguration, OdrlAttribute.OPERATOR));
	}

	// package private, since it's only to fulfill cdi requirements
	OperatorMapper() {
		super(null, null);
	}

	/**
	 * Is the given key a sub-class of odrl:operator?
	 */
	public boolean isOperator(String key) {
		if (key.equalsIgnoreCase(OdrlConstants.OPERATOR_KEY)) {
			return true;
		}
		return mappings.containsKey(key);
	}

	/**
	 * Retrieves the key of the operator from the given constraint. Throws an exception if none is found
	 */
	public String getOperatorKey(Map<String, Object> theConstraint) throws MappingException {
		return theConstraint.keySet().stream().filter(this::isOperator).findFirst()
				.orElseThrow(() -> new MappingException("The provided constraint does not contain an operator."));
	}

	/**
	 * Get the type of the operator at the given key in the provided object.
	 */
	public String getType(String key, Object operatorObject) throws MappingException {
		// case "my:customOperator": {}
		if (!key.equalsIgnoreCase(OdrlConstants.OPERATOR_KEY)) {
			return key;
		}

		// case "odrl:operator": "my:customOperator"
		if (operatorObject instanceof String typeString) {
			return typeString;
		}

		Map<String, Object> theOperatorMap = convertToMap(operatorObject);
		if (theOperatorMap.containsKey(OdrlConstants.ID_KEY)) {
			return (String) theOperatorMap.get(OdrlConstants.ID_KEY);
		}
		throw new MappingException("The constraint does not contain a valid operator.");
	}
}
