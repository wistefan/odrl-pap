package org.fiware.odrl.mapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import io.quarkus.runtime.annotations.RegisterForReflection;
import org.fiware.odrl.rego.RegoMethod;

import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

@RegisterForReflection
public class ConstraintMapper extends TypeMapper {

	public ConstraintMapper(ObjectMapper objectMapper, Map<String, RegoMethod> mappings) {
		super(objectMapper, mappings);
	}

	// package private, since it's only to fulfill cdi requirements
	ConstraintMapper() {
		super(null, null);
	}

	public boolean isConstraint(String key) {
		if (key == null) {
			return false;
		}
		if (key.equalsIgnoreCase(OdrlConstants.TYPE_LOGICAL_CONSTRAINT) || key.equalsIgnoreCase(OdrlConstants.TYPE_CONSTRAINT)) {
			return true;
		}
		return mappings.containsKey(key);
	}

	// only constraints are supported, no custom logical constraints
	public Optional<?> getValue(String type, Object constraintObject) {
		// case "odrl:constraint" : "my:customConstraint"
		// or "my:customConstraint": "static-value"
		if (constraintObject instanceof String valueString) {
			if (valueString.equals(type)) {
				return Optional.empty();
			} else {
				return Optional.ofNullable(valueString);
			}
		}

		Map<String, Object> theConstraintMap = convertToMap(constraintObject);
		// case "odrl:constraint" : {"@Value": "something"}
		// or "my:customConstraint": {"@Value": "something"}
		if (theConstraintMap.containsKey(OdrlConstants.VALUE_KEY)) {
			return Optional.ofNullable(theConstraintMap.get(OdrlConstants.VALUE_KEY));
		}
		return Optional.empty();
	}

}