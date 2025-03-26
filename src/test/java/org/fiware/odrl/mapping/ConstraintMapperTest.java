package org.fiware.odrl.mapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.fiware.odrl.model.TestContent;
import org.fiware.odrl.model.ValueObject;
import org.fiware.odrl.rego.RegoMethod;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;
import org.testcontainers.shaded.org.checkerframework.checker.units.qual.N;

import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

import static org.junit.jupiter.api.Assertions.*;

public class ConstraintMapperTest {

	private static final ObjectMapper OBJECT_MAPPER = new ObjectMapper();

	@DisplayName("A valid constraint type should be identified as such.")
	@MethodSource("validConstraints")
	@ParameterizedTest
	public void test_isConstraint_true(String keyToTest, MappingConfiguration mappingConfiguration) {
		ConstraintMapper constraintMapper = new ConstraintMapper(OBJECT_MAPPER, mappingConfiguration);
		assertTrue(constraintMapper.isConstraint(keyToTest), "The requested key should be identified as a constraint");
	}

	@DisplayName("A type that is not a default or mapped constraint should not be identified as such.")
	@MethodSource("invalidConstraints")
	@ParameterizedTest
	public void test_isConstraint_false(String keyToTest, MappingConfiguration mappingConfiguration) {
		ConstraintMapper constraintMapper = new ConstraintMapper(OBJECT_MAPPER, mappingConfiguration);
		assertFalse(constraintMapper.isConstraint(keyToTest), "The requested key should not be identified as a constraint");
	}

	@DisplayName("The value of a constraint should be extracted.")
	@MethodSource("constraintsWithValues")
	@ParameterizedTest
	public void test_getValue_success(String type, Object theConstraint, Optional<Object> theExpectedOptionalValue) {
		ConstraintMapper constraintMapper = new ConstraintMapper(OBJECT_MAPPER, new MappingConfiguration());
		Optional<?> optionalConstraintValue = constraintMapper.getValue(type, theConstraint);
		assertEquals(theExpectedOptionalValue, optionalConstraintValue, "The value of the constraint should be extracted.");

	}

	public static Stream<Arguments> constraintsWithValues() {
		return Stream.of(
				Arguments.of("my:customConstraint", "my:customConstraint", Optional.empty()),
				Arguments.of("my:customConstraint", "something-static", Optional.of("\"something-static\"")),
				Arguments.of("my:customConstraint", Map.of("@value", "something-static"),
						Optional.of("\"something-static\"")),
				Arguments.of("my:customConstraint", new ValueObject("something-static"),
						Optional.of("\"something-static\"")),
				Arguments.of("my:customConstraint", new ValueObject(new TestContent("test", true)),
						Optional.of(Map.of("testString", "test", "test", true))),
				Arguments.of("my:customConstraint", new TestContent("test", true),
						Optional.empty()),
				Arguments.of("odrl:constraint", Map.of("@value", "something-static"),
						Optional.of("\"something-static\"")),
				Arguments.of("odrl:constraint", new ValueObject("something-static"),
						Optional.of("\"something-static\"")),
				Arguments.of("odrl:constraint", new ValueObject(new TestContent("test", true)),
						Optional.of(Map.of("testString", "test", "test", true)))
		);
	}

	public static Stream<Arguments> validConstraints() {
		return Stream.of(
				Arguments.of("odrl:constraint", new MappingConfiguration()),
				Arguments.of("odrl:Constraint", new MappingConfiguration()),
				Arguments.of("odrl:logicalConstraint", new MappingConfiguration()),
				Arguments.of("odrl:logicalconstraint", new MappingConfiguration()),
				Arguments.of("odrl:LogicalConstraint", new MappingConfiguration()),
				Arguments.of("my:constraint", getMappingConfiguration(OdrlAttribute.CONSTRAINT, "my", Map.of("constraint", new RegoMethod("my", "constraint")))),
				Arguments.of("my:constraint",
						getMappingConfiguration(OdrlAttribute.CONSTRAINT, "my",
								Map.of("constraint", new RegoMethod("my", "constraint"),
										"constraint-2", new RegoMethod("my", "constraint"),
										"constraint-3", new RegoMethod("my", "constraint")))));
	}

	public static MappingConfiguration getMappingConfiguration(OdrlAttribute theAttribute, String namespace, Map<String, RegoMethod> methodMap) {
		MappingConfiguration mappingConfiguration = new MappingConfiguration();
		NamespacedMap namespacedMap = new NamespacedMap();
		RegoMap regoMap = new RegoMap();
		regoMap.putAll(methodMap);
		namespacedMap.put(namespace, regoMap);
		mappingConfiguration.put(theAttribute, namespacedMap);
		return mappingConfiguration;
	}

	public static Stream<Arguments> invalidConstraints() {
		return Stream.of(
				Arguments.of("odrl:no-constraint", new MappingConfiguration(),
						Arguments.of("odrl:no-logicalConstraint", new MappingConfiguration()),
						Arguments.of("my:constraint", new MappingConfiguration()),
						Arguments.of("my:constraint", getMappingConfiguration(OdrlAttribute.CONSTRAINT, "my", Map.of("constraint", new RegoMethod("my", "constraint")))),
						Arguments.of("my:constraint",
								getMappingConfiguration(OdrlAttribute.CONSTRAINT, "my",
										Map.of("constraint-1", new RegoMethod("my", "constraint"),
												"constraint-2", new RegoMethod("my", "constraint"),
												"constraint-3", new RegoMethod("my", "constraint"))))));
	}

}
