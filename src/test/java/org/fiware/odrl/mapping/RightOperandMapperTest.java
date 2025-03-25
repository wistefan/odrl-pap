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
	public void test_isRightOperand_true(String keyToTest, Map<String, RegoMethod> mappings) {
		RightOperandMapper rightOperandMapper = new RightOperandMapper(OBJECT_MAPPER, mappings);
		assertTrue(rightOperandMapper.isRightOperand(keyToTest), "The requested key should be identified as a rightOperand.");
	}

	@DisplayName("A type that is not a default or mapped rightOperand should not be identified as such.")
	@MethodSource("invalidRightOperands")
	@ParameterizedTest
	public void test_isRightOperand_false(String keyToTest, Map<String, RegoMethod> mappings) {
		RightOperandMapper rightOperandMapper = new RightOperandMapper(OBJECT_MAPPER, mappings);
		assertFalse(rightOperandMapper.isRightOperand(keyToTest), "The requested key should not be identified as a rightOperand.");
	}


	@DisplayName("The correct key identifying the rightOperand should be returned.")
	@MethodSource("validRightOperandKeys")
	@ParameterizedTest
	public void test_getLeftOperandKey_success(Map<String, Object> theConstraint, Map<String, RegoMethod> mappings, String expectedKey) throws MappingException {
		RightOperandMapper rightOperandMapper = new RightOperandMapper(OBJECT_MAPPER, mappings);
		assertEquals(expectedKey, rightOperandMapper.getRightOperandKey(theConstraint), "The correct rightOperand key should be extracted.");
	}

	@DisplayName("If no rightOperand is contained, an expection need to be thrown.")
	@MethodSource("invalidRightOperandKeys")
	@ParameterizedTest
	public void test_getLeftOperandKey_failure(Map<String, Object> theConstraint, Map<String, RegoMethod> mappings) {
		RightOperandMapper rightOperandMapper = new RightOperandMapper(OBJECT_MAPPER, mappings);
		assertThrows(MappingException.class, () -> rightOperandMapper.getRightOperandKey(theConstraint), "A mapping exception should be thrown if no rightOperand is contained.");
	}

	@DisplayName("If the key to a rightOperand is provided, the concrete type should be returned.")
	@MethodSource("validTypes")
	@ParameterizedTest
	public void test_getType(String rightOperandKey, Object theRightOperand, Map<String, RegoMethod> mappings, String expectedType) {
		RightOperandMapper rightOperandMapper = new RightOperandMapper(OBJECT_MAPPER, mappings);
		assertEquals(expectedType, rightOperandMapper.getType(rightOperandKey, theRightOperand), "The type of the rightOperand should be returned");
	}

	@DisplayName("If the key to a rightOperand is provided, the concrete type should be returned.")
	@MethodSource("operandsWithValues")
	@ParameterizedTest
	public void test_getValue(String rightOperandType, Object theRightOperand, Map<String, RegoMethod> mappings, Optional<Object> theExpectedOptionalValue) {
		RightOperandMapper rightOperandMapper = new RightOperandMapper(OBJECT_MAPPER, mappings);
		Optional<?> optionalRightOperandValue = rightOperandMapper.getValue(rightOperandType, theRightOperand);
		assertEquals(theExpectedOptionalValue, optionalRightOperandValue, "The value of the rightOperand should be extracted.");
	}

	public static Stream<Arguments> operandsWithValues() {
		return Stream.of(
				Arguments.of("odrl:rightOperand", "theValue", Map.of(), Optional.of("theValue")),
				Arguments.of("odrl:rightoperand", "theValue", Map.of(), Optional.of("theValue")),
				Arguments.of("odrl:RightOperand", "theValue", Map.of(), Optional.of("theValue")),
				Arguments.of("my:operand", "my:operand", Map.of("my:operand", new RegoMethod("my", "operand")), Optional.empty()),
				Arguments.of("odrl:rightOperand", new OperandObject("theValue", null), Map.of(), Optional.of("theValue")),
				Arguments.of("odrl:rightOperand", new OperandObject(null, "my:operand"), Map.of(), Optional.empty()),
				Arguments.of("odrl:rightOperand", new OperandObject("theValue", "my:operand"),
						Map.of("my:operand", new RegoMethod("my", "operand")), Optional.of("theValue")),
				Arguments.of("my:operand", "theValue",
						Map.of("my:operand", new RegoMethod("my", "operand")), Optional.of("theValue")),
				Arguments.of("my:operand", new OperandObject("theValue", null),
						Map.of("my:operand", new RegoMethod("my", "operand")), Optional.of("theValue")),
				Arguments.of("my:operand", new OperandObject(new TestContent("test", true), null),
						Map.of("my:operand", new RegoMethod("my", "operand")), Optional.of(Map.of("testString", "test", "test", true)))
		);
	}

	public static Stream<Arguments> validTypes() {
		return Stream.of(
				Arguments.of("odrl:rightOperand", "something", Map.of(), "odrl:rightOperand"),
				Arguments.of("odrl:rightoperand", "something", Map.of(), "odrl:rightOperand"),
				Arguments.of("odrl:RightOperand", "something", Map.of(), "odrl:rightOperand"),
				Arguments.of("odrl:RightOperand", List.of("a", "b"), Map.of(), "odrl:rightOperand"),
				Arguments.of("my:rightOperand", List.of("a", "b"), Map.of(), "my:rightOperand"),
				Arguments.of("odrl:rightOperand", new OperandObject("myValue", null), Map.of(), "odrl:rightOperand"),
				Arguments.of("my:rightOperand", new OperandObject("myValue", null), Map.of("my:rightOperand", new RegoMethod("my", "rightOperand")), "my:rightOperand"),
				Arguments.of("my:rightOperand", "myValue", Map.of("my:rightOperand", new RegoMethod("my", "rightOperand")), "my:rightOperand"),
				Arguments.of("odrl:rightOperand", new OperandObject("myValue", "my:rightOperand"), Map.of("my:rightOperand", new RegoMethod("my", "rightOperand")), "my:rightOperand"),
				Arguments.of("odrl:rightOperand", new OperandObject(null, "my:rightOperand"), Map.of("my:rightOperand", new RegoMethod("my", "rightOperand")), "my:rightOperand"));
	}

	public static Stream<Arguments> invalidRightOperandKeys() {
		return Stream.of(
				Arguments.of(
						Map.of("odrl:operator", "odrl:eq", "odrl:leftOperand", "something"),
						Map.of()),
				Arguments.of(
						Map.of("my:customRightOperand", "custom", "odrl:operator", "odrl:eq", "odrl:leftOperand", "something"),
						Map.of()),
				Arguments.of(
						Map.of("my:customRightOperand", "custom", "odrl:operator", "odrl:eq", "odrl:leftOperand", "something"),
						Map.of("my:rightOperand", new RegoMethod("my", "rightOperand"))));
	}

	public static Stream<Arguments> validRightOperandKeys() {
		return Stream.of(
				Arguments.of(
						Map.of("odrl:rightOperand", "something", "odrl:operator", "odrl:eq", "odrl:leftOperand", "something"),
						Map.of(),
						"odrl:rightOperand"),
				Arguments.of(
						Map.of("odrl:rightoperand", "something", "odrl:operator", "odrl:eq", "odrl:leftOperand", "something"),
						Map.of(),
						"odrl:rightoperand"),
				Arguments.of(
						Map.of("odrl:RightOperand", "something", "odrl:operator", "odrl:eq", "odrl:leftOperand", "something"),
						Map.of(),
						"odrl:RightOperand"),
				Arguments.of(
						Map.of("my:customOperand", "something", "odrl:operator", "odrl:eq", "odrl:leftOperand", "something"),
						Map.of("my:customOperand", new RegoMethod("my", "rightOperand")),
						"my:customOperand"));
	}

	public static Stream<Arguments> validRightOperands() {
		return Stream.of(
				Arguments.of("odrl:rightOperand", Map.of()),
				Arguments.of("odrl:rightoperand", Map.of()),
				Arguments.of("odrl:RightOperand", Map.of()),
				Arguments.of("my:rightOperand", Map.of("my:rightOperand", new RegoMethod("my", "rightOperand"))),
				Arguments.of("my:rightOperand",
						Map.of("my:rightOperand-1", new RegoMethod("my", "rightOperand"),
								"my:rightOperand-2", new RegoMethod("my", "rightOperand"),
								"my:rightOperand", new RegoMethod("my", "rightOperand")))
		);
	}

	public static Stream<Arguments> invalidRightOperands() {
		return Stream.of(
				Arguments.of("odrl:no-rightOperand", Map.of()),
				Arguments.of("my:rightOperand", Map.of()),
				Arguments.of("my:rightOperand", Map.of("my:rightOperand-1", new RegoMethod("my", "rightOperand"))),
				Arguments.of("my:rightOperand",
						Map.of("my:rightOperand-1", new RegoMethod("my", "rightOperand"),
								"my:rightOperand-2", new RegoMethod("my", "rightOperand"),
								"my:rightOperand-3", new RegoMethod("my", "rightOperand")))
		);
	}
}
