package org.fiware.odrl.mapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.fiware.odrl.rego.RegoMethod;

import java.util.Map;

public class OperatorMapper extends TypeMapper {

	public OperatorMapper(ObjectMapper objectMapper, Map<String, RegoMethod> mappings) {
		super(objectMapper, mappings);
	}

	// package private, since it's only to fulfill cdi requirements
	OperatorMapper() {
		super(null, null);
	}

	public boolean isOperator(String key) {
		if (key.equalsIgnoreCase(OdrlConstants.OPERATOR_KEY)) {
			return true;
		}
		return mappings.containsKey(key);
	}

	public String getOperatorKey(Map<String, Object> theConstraint) throws MappingException {
		return theConstraint.keySet().stream().filter(this::isOperator).findFirst()
				.orElseThrow(() -> new MappingException("The provided constraint does not contain an operator."));
	}

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
