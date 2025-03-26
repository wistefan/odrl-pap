package org.fiware.odrl.mapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import io.quarkus.runtime.annotations.RegisterForReflection;
import lombok.extern.slf4j.Slf4j;
import org.fiware.odrl.rego.RegoMethod;

import java.text.ParseException;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import static org.fiware.odrl.mapping.RightOperandMapper.DATE_FORMAT;

@Slf4j
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

	public String getTypeFromConstraint(Map<String, Object> theConstraint) {
		if (theConstraint.containsKey(OdrlConstants.TYPE_KEY)) {
			return (String) theConstraint.get(OdrlConstants.TYPE_KEY);
		}
		return OdrlConstants.TYPE_CONSTRAINT;
	}

	public String getType(String key, Object theObject) {
		// case "my:customConstraint": {}
		if (!key.equalsIgnoreCase(OdrlConstants.CONSTRAINT_KEY) && !key.equalsIgnoreCase(OdrlConstants.TYPE_LOGICAL_CONSTRAINT) && !key.equalsIgnoreCase(OdrlConstants.REFINEMENT_KEY)) {
			return key;
		}
		if (theObject instanceof List<?>) {
			return OdrlConstants.TYPE_LOGICAL_CONSTRAINT;
		}
		Map<String, Object> theObjectMap = convertToMap(theObject);
		if (theObjectMap.containsKey(OdrlConstants.TYPE_KEY)) {
			return (String) theObjectMap.get(OdrlConstants.TYPE_KEY);
		} else {
			return OdrlConstants.TYPE_CONSTRAINT;
		}
	}

	// only constraints are supported, no custom logical constraints
	public Optional<?> getValue(String type, Object constraintObject) {
		// case "odrl:constraint" : "my:customConstraint"
		// or "my:customConstraint": "static-value"
		if (constraintObject instanceof String valueString) {
			if (valueString.equals(type)) {
				return Optional.empty();
			} else {
				return Optional.ofNullable(String.format(STRING_ESCAPE_TEMPLATE, valueString));
			}
		}

		Map<String, Object> theConstraintMap = convertToMap(constraintObject);
		// case "odrl:constraint" : {"@Value": "something"}
		// or "my:customConstraint": {"@Value": "something"}
		if (theConstraintMap.containsKey(OdrlConstants.VALUE_KEY)) {
			Optional<String> optionalType = Optional.ofNullable(theConstraintMap.get(OdrlConstants.TYPE_KEY)).map(String.class::cast);

			return Optional.ofNullable(theConstraintMap.get(OdrlConstants.VALUE_KEY)).map(v -> {

				if (v instanceof String valueString) {
					if (optionalType.isPresent() && optionalType.get().equals(OdrlConstants.DATE_TYPE)) {
						try {
							Date parsedDate = DATE_FORMAT.parse(valueString);
							return parsedDate.getTime();
						} catch (ParseException e) {
							log.warn("The date {} is not valid", valueString, e);
						}
					}
					return String.format(STRING_ESCAPE_TEMPLATE, valueString);
				}
				return v;
			});
		}
		return Optional.empty();
	}

}