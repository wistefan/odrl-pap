package org.fiware.odrl.mapping;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.fiware.odrl.rego.RegoMethod;

import java.text.SimpleDateFormat;
import java.util.Map;
import java.util.stream.Collectors;

@Slf4j
@RequiredArgsConstructor
public abstract class TypeMapper {

	public static final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd");
	public static final String STRING_ESCAPE_TEMPLATE = "\"%s\"";
	protected final ObjectMapper objectMapper;
	protected final Map<String, RegoMethod> mappings;

	protected Map<String, Object> convertToMap(Object theObject) {
		return objectMapper.convertValue(theObject, new TypeReference<Map<String, Object>>() {
		});
	}

	public RegoMethod getMethod(String type) {
		log.warn(String.format("Get %s from %s", type, mappings));
		return mappings.get(type);
	}

	protected static Map<String, RegoMethod> getMappings(MappingConfiguration mappingConfiguration, OdrlAttribute key) {
		if (!mappingConfiguration.containsKey(key)) {
			return Map.of();
		}
		return mappingConfiguration.get(key)
				.entrySet()
				.stream()
				.flatMap(entry -> entry
						.getValue()
						.entrySet()
						.stream()
						.map(e -> Map.entry(String.format("%s:%s", entry.getKey(), ((Map.Entry<?, ?>) e).getKey()), e.getValue()))
				).collect(Collectors.toMap(Map.Entry::getKey, Map.Entry::getValue));
	}

}
