package org.fiware.odrl.mapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.fiware.odrl.model.OperandObject;
import org.fiware.odrl.model.TestContent;
import org.fiware.odrl.rego.RegoMethod;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

import static org.junit.jupiter.api.Assertions.*;
import static org.junit.jupiter.api.Assertions.assertThrows;

public class RightOperandMapperTest {

	private static final ObjectMapper OBJECT_MAPPER = new ObjectMapper();

	@DisplayName("A valid rightOperand type should be identified as such.")
	@MethodSource("validRightOperands")
	@ParameterizedTest
	public void test_isRightOperand_true(String keyToTest, MappingConfiguration mappings) {
		RightOperandMapper rightOperandMapper = new RightOperandMapper(OBJECT_MAPPER, mappings);
		assertTrue(rightOperandMapper.isRightOperand(keyToTest), "The requested key should be identified as a rightOperand.");
	}

	@DisplayName("A type that is not a default or mapped rightOperand should not be identified as such.")
	@MethodSource("invalidRightOperands")
	@ParameterizedTest
	public void test_isRightOperand_false(String keyToTest, MappingConfiguration mappings) {
		RightOperandMapper rightOperandMapper = new RightOperandMapper(OBJECT_MAPPER, mappings);
		assertFalse(rightOperandMapper.isRightOperand(keyToTest), "The requested key should not be identified as a rightOperand.");
	}


	@DisplayName("The correct key identifying the rightOperand should be returned.")
	@MethodSource("validRightOperandKeys")
	@ParameterizedTest
	public void test_getLeftOperandKey_success(Map<String, Object> theConstraint, MappingConfiguration mappings, String expectedKey) throws MappingException {
		RightOperandMapper rightOperandMapper = new RightOperandMapper(OBJECT_MAPPER, mappings);
		assertEquals(expectedKey, rightOperandMapper.getRightOperandKey(theConstraint), "The correct rightOperand key should be extracted.");
	}

	@DisplayName("If no rightOperand is contained, an expection need to be thrown.")
	@MethodSource("invalidRightOperandKeys")
	@ParameterizedTest
	public void test_getLeftOperandKey_failure(Map<String, Object> theConstraint, MappingConfiguration mappings) {
		RightOperandMapper rightOperandMapper = new RightOperandMapper(OBJECT_MAPPER, mappings);
		assertThrows(MappingException.class, () -> rightOperandMapper.getRightOperandKey(theConstraint), "A mapping exception should be thrown if no rightOperand is contained.");
	}

	@DisplayName("If the key to a rightOperand is provided, the concrete type should be returned.")
	@MethodSource("validTypes")
	@ParameterizedTest
	public void test_getType(String rightOperandKey, Object theRightOperand, MappingConfiguration mappings, String expectedType) {
		RightOperandMapper rightOperandMapper = new RightOperandMapper(OBJECT_MAPPER, mappings);
		assertEquals(expectedType, rightOperandMapper.getType(rightOperandKey, theRightOperand), "The type of the rightOperand should be returned");
	}

	@DisplayName("If the key to a rightOperand is provided, the concrete type should be returned.")
	@MethodSource("operandsWithValues")
	@ParameterizedTest
	public void test_getValue(String rightOperandType, Object theRightOperand, MappingConfiguration mappings, Optional<Object> theExpectedOptionalValue) throws MappingException {
		RightOperandMapper rightOperandMapper = new RightOperandMapper(OBJECT_MAPPER, mappings);
		Optional<?> optionalRightOperandValue = rightOperandMapper.getValue(rightOperandType, theRightOperand);
		assertEquals(theExpectedOptionalValue, optionalRightOperandValue, "The value of the rightOperand should be extracted.");
	}

	public static Stream<Arguments> operandsWithValues() {
		return Stream.of(
				Arguments.of("odrl:rightOperand", "theValue", new MappingConfiguration(), Optional.of("theValue")),
				Arguments.of("odrl:rightoperand", "theValue", new MappingConfiguration(), Optional.of("theValue")),
				Arguments.of("odrl:RightOperand", "theValue", new MappingConfiguration(), Optional.of("theValue")),
				Arguments.of("my:operand", "my:operand", ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.RIGHT_OPERAND, "my", Map.of("operand", new RegoMethod("my", "operand"))), Optional.empty()),
				Arguments.of("odrl:rightOperand", new OperandObject("theValue", null), new MappingConfiguration(), Optional.of("theValue")),
				Arguments.of("odrl:rightOperand", new OperandObject(null, "my:operand"), new MappingConfiguration(), Optional.empty()),
				Arguments.of("odrl:rightOperand", new OperandObject("theValue", "my:operand"),
						ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.RIGHT_OPERAND, "my", Map.of("operand", new RegoMethod("my", "operand"))), Optional.of("theValue")),
				Arguments.of("my:operand", "theValue",
						ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.RIGHT_OPERAND, "my", Map.of("operand", new RegoMethod("my", "operand"))), Optional.of("theValue")),
				Arguments.of("my:operand", new OperandObject("theValue", null),
						ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.RIGHT_OPERAND, "my", Map.of("operand", new RegoMethod("my", "operand"))), Optional.of("theValue")),
				Arguments.of("my:operand", new OperandObject(new TestContent("test", true), null),
						ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.RIGHT_OPERAND, "my", Map.of("operand", new RegoMethod("my", "operand"))), Optional.of(Map.of("testString", "test", "test", true)))
		);
	}

	public static Stream<Arguments> validTypes() {
		return Stream.of(
				Arguments.of("odrl:rightOperand", "something", new MappingConfiguration(), "odrl:rightOperand"),
				Arguments.of("odrl:rightoperand", "something", new MappingConfiguration(), "odrl:rightOperand"),
				Arguments.of("odrl:RightOperand", "something", new MappingConfiguration(), "odrl:rightOperand"),
				Arguments.of("odrl:RightOperand", List.of("a", "b"), new MappingConfiguration(), "odrl:rightOperand"),
				Arguments.of("my:rightOperand", List.of("a", "b"), new MappingConfiguration(), "my:rightOperand"),
				Arguments.of("odrl:rightOperand", new OperandObject("myValue", null), new MappingConfiguration(), "odrl:rightOperand"),
				Arguments.of("my:rightOperand", new OperandObject("myValue", null), ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.RIGHT_OPERAND, "my", Map.of("rightOperand", new RegoMethod("my", "rightOperand"))), "my:rightOperand"),
				Arguments.of("my:rightOperand", "myValue", ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.RIGHT_OPERAND, "my", Map.of("rightOperand", new RegoMethod("my", "rightOperand"))), "my:rightOperand"),
				Arguments.of("odrl:rightOperand", new OperandObject("myValue", "my:rightOperand"), ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.RIGHT_OPERAND, "my", Map.of("rightOperand", new RegoMethod("my", "rightOperand"))), "my:rightOperand"),
				Arguments.of("odrl:rightOperand", new OperandObject(null, "my:rightOperand"), ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.RIGHT_OPERAND, "my", Map.of("rightOperand", new RegoMethod("my", "rightOperand"))), "my:rightOperand"));
	}

	public static Stream<Arguments> invalidRightOperandKeys() {
		return Stream.of(
				Arguments.of(
						Map.of("odrl:operator", "odrl:eq", "odrl:leftOperand", "something"),
						new MappingConfiguration()),
				Arguments.of(
						Map.of("my:customRightOperand", "custom", "odrl:operator", "odrl:eq", "odrl:leftOperand", "something"),
						new MappingConfiguration()),
				Arguments.of(
						Map.of("my:customRightOperand", "custom", "odrl:operator", "odrl:eq", "odrl:leftOperand", "something"),
						ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.RIGHT_OPERAND, "my", Map.of("rightOperand", new RegoMethod("my", "rightOperand")))));
	}

	public static Stream<Arguments> validRightOperandKeys() {
		return Stream.of(
				Arguments.of(
						Map.of("odrl:rightOperand", "something", "odrl:operator", "odrl:eq", "odrl:leftOperand", "something"),
						new MappingConfiguration(),
						"odrl:rightOperand"),
				Arguments.of(
						Map.of("odrl:rightoperand", "something", "odrl:operator", "odrl:eq", "odrl:leftOperand", "something"),
						new MappingConfiguration(),
						"odrl:rightoperand"),
				Arguments.of(
						Map.of("odrl:RightOperand", "something", "odrl:operator", "odrl:eq", "odrl:leftOperand", "something"),
						new MappingConfiguration(),
						"odrl:RightOperand"),
				Arguments.of(
						Map.of("my:customOperand", "something", "odrl:operator", "odrl:eq", "odrl:leftOperand", "something"),
						ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.RIGHT_OPERAND, "my", Map.of("customOperand", new RegoMethod("my", "rightOperand"))),
						"my:customOperand"));
	}

	public static Stream<Arguments> validRightOperands() {
		return Stream.of(
				Arguments.of("odrl:rightOperand", new MappingConfiguration()),
				Arguments.of("odrl:rightoperand", new MappingConfiguration()),
				Arguments.of("odrl:RightOperand", new MappingConfiguration()),
				Arguments.of("my:rightOperand", ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.RIGHT_OPERAND, "my", Map.of("rightOperand", new RegoMethod("my", "rightOperand")))),
				Arguments.of("my:rightOperand",
						ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.RIGHT_OPERAND, "my",
								Map.of("rightOperand-1", new RegoMethod("my", "operand"),
										"rightOperand-2", new RegoMethod("my", "operand"),
										"rightOperand", new RegoMethod("my", "operand"))))
		);
	}

	public static Stream<Arguments> invalidRightOperands() {
		return Stream.of(
				Arguments.of("odrl:no-rightOperand", new MappingConfiguration()),
				Arguments.of("my:rightOperand", new MappingConfiguration()),
				Arguments.of("my:rightOperand", ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.RIGHT_OPERAND, "my", Map.of("rightOperand-1", new RegoMethod("my", "rightOperand")))),
				Arguments.of("my:rightOperand",
						ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.RIGHT_OPERAND, "my",
								Map.of("rightOperand-1", new RegoMethod("my", "operand"),
										"rightOperand-2", new RegoMethod("my", "operand"),
										"rightOperand-3", new RegoMethod("my", "operand"))))
		);
	}
}
