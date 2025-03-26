package org.fiware.odrl.mapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.fiware.odrl.model.OperandObject;
import org.fiware.odrl.model.TestContent;
import org.fiware.odrl.rego.RegoMethod;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;

import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

import static org.junit.jupiter.api.Assertions.*;

public class LeftOperandMapperTest {

	private static final ObjectMapper OBJECT_MAPPER = new ObjectMapper();

	@DisplayName("A valid leftOperand type should be identified as such.")
	@MethodSource("validLeftOperands")
	@ParameterizedTest
	public void test_isLeftOperand_true(String keyToTest, MappingConfiguration mappings) {
		LeftOperandMapper leftOperandMapper = new LeftOperandMapper(OBJECT_MAPPER, mappings);
		assertTrue(leftOperandMapper.isLeftOperand(keyToTest), "The requested key should be identified as a leftOperand.");
	}

	@DisplayName("A type that is not a default or mapped leftOperand should not be identified as such.")
	@MethodSource("invalidLeftOperands")
	@ParameterizedTest
	public void test_isLeftOperand_false(String keyToTest, MappingConfiguration mappings) {
		LeftOperandMapper leftOperandMapper = new LeftOperandMapper(OBJECT_MAPPER, mappings);
		assertFalse(leftOperandMapper.isLeftOperand(keyToTest), "The requested key should not be identified as a leftOperand.");
	}

	@DisplayName("A odrl:leftOperand should be valid identified as a baseType.")
	@MethodSource("validBaseTypes")
	@ParameterizedTest
	public void test_isBaseType_true(String keyToTest) {
		LeftOperandMapper leftOperandMapper = new LeftOperandMapper(OBJECT_MAPPER, new MappingConfiguration());
		assertTrue(leftOperandMapper.isBaseType(keyToTest), "The requested key should be identified as a base type.");
	}

	@DisplayName("Anything else then odrl:leftOperand should be identified as not being a baseType.")
	@MethodSource("inValidBaseTypes")
	@ParameterizedTest
	public void test_isBaseType_false(String keyToTest) {
		LeftOperandMapper leftOperandMapper = new LeftOperandMapper(OBJECT_MAPPER, new MappingConfiguration());
		assertFalse(leftOperandMapper.isBaseType(keyToTest), "The requested key should not be identified as a base type.");
	}

	@DisplayName("The correct key identifying the leftOperand should be returned.")
	@MethodSource("validLeftOperandKeys")
	@ParameterizedTest
	public void test_getLeftOperandKey_success(Map<String, Object> theConstraint, MappingConfiguration mappings, String expectedKey) throws MappingException {
		LeftOperandMapper leftOperandMapper = new LeftOperandMapper(OBJECT_MAPPER, mappings);
		assertEquals(expectedKey, leftOperandMapper.getLeftOperandKey(theConstraint), "The correct leftOperand key should be extracted.");
	}

	@DisplayName("If no leftOperand is contained, an expection need to be thrown.")
	@MethodSource("invalidLeftOperandKeys")
	@ParameterizedTest
	public void test_getLeftOperandKey_failure(Map<String, Object> theConstraint, MappingConfiguration mappings) {
		LeftOperandMapper leftOperandMapper = new LeftOperandMapper(OBJECT_MAPPER, mappings);
		assertThrows(MappingException.class, () -> leftOperandMapper.getLeftOperandKey(theConstraint), "A mapping exception should be thrown if no leftOperand is contained.");
	}

	@DisplayName("If the key to a leftOperand is provided, the concrete type should be returned.")
	@MethodSource("validTypes")
	@ParameterizedTest
	public void test_getType(String leftOperandKey, Object theLeftOperand, MappingConfiguration mappings, String expectedType) {
		LeftOperandMapper leftOperandMapper = new LeftOperandMapper(OBJECT_MAPPER, mappings);
		assertEquals(expectedType, leftOperandMapper.getType(leftOperandKey, theLeftOperand), "The type of the leftOperand should be returned");
	}

	@DisplayName("If the key to a leftOperand is provided, the correct value should be returned.")
	@MethodSource("operandsWithValues")
	@ParameterizedTest
	public void test_getValue(String leftOperandType, Object theLeftOperand, MappingConfiguration mappings, Optional<Object> theExpectedOptionalValue) {
		LeftOperandMapper leftOperandMapper = new LeftOperandMapper(OBJECT_MAPPER, mappings);
		Optional<?> optionalLeftOperandValue = leftOperandMapper.getValue(leftOperandType, theLeftOperand);
		assertEquals(theExpectedOptionalValue, optionalLeftOperandValue, "The value of the leftOperand should be extracted.");
	}

	public static Stream<Arguments> operandsWithValues() {
		return Stream.of(
				Arguments.of("odrl:leftOperand", "theValue", new MappingConfiguration(), Optional.of("theValue")),
				Arguments.of("odrl:leftoperand", "theValue", new MappingConfiguration(), Optional.of("theValue")),
				Arguments.of("odrl:LeftOperand", "theValue", new MappingConfiguration(), Optional.of("theValue")),
				Arguments.of("my:operand", "my:operand", ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.LEFT_OPERAND, "my", Map.of("operand", new RegoMethod("my", "operand"))), Optional.empty()),
				Arguments.of("odrl:leftOperand", new OperandObject("theValue", null), new MappingConfiguration(), Optional.of("theValue")),
				Arguments.of("odrl:leftOperand", new OperandObject(null, "my:operand"), new MappingConfiguration(), Optional.empty()),
				Arguments.of("odrl:leftOperand", new OperandObject("theValue", "my:operand"),
						ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.LEFT_OPERAND, "my", Map.of("operand", new RegoMethod("my", "operand"))), Optional.of("theValue")),
				Arguments.of("my:operand", "theValue",
						ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.LEFT_OPERAND, "my", Map.of("operand", new RegoMethod("my", "operand"))), Optional.of("theValue")),
				Arguments.of("my:operand", new OperandObject("theValue", null),
						ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.LEFT_OPERAND, "my", Map.of("operand", new RegoMethod("my", "operand"))), Optional.of("theValue")),
				Arguments.of("my:operand", new OperandObject(new TestContent("test", true), null),
						ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.LEFT_OPERAND, "my", Map.of("operand", new RegoMethod("my", "operand"))), Optional.of(Map.of("testString", "test", "test", true)))
		);
	}

	public static Stream<Arguments> validTypes() {
		return Stream.of(
				Arguments.of("odrl:leftOperand", "something", new MappingConfiguration(), "odrl:leftOperand"),
				Arguments.of("odrl:leftoperand", "something", new MappingConfiguration(), "odrl:leftOperand"),
				Arguments.of("odrl:LeftOperand", "something", new MappingConfiguration(), "odrl:leftOperand"),
				Arguments.of("odrl:leftOperand", new OperandObject("myValue", null), new MappingConfiguration(), "odrl:leftOperand"),
				Arguments.of("my:leftOperand", new OperandObject("myValue", null), ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.LEFT_OPERAND, "my", Map.of("leftOperand", new RegoMethod("my", "operand"))), "my:leftOperand"),
				Arguments.of("my:leftOperand", "myValue", ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.LEFT_OPERAND, "my", Map.of("leftOperand", new RegoMethod("my", "operand"))), "my:leftOperand"),
				Arguments.of("odrl:leftOperand", new OperandObject("myValue", "my:leftOperand"), ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.LEFT_OPERAND, "my", Map.of("leftOperand", new RegoMethod("my", "operand"))), "my:leftOperand"),
				Arguments.of("odrl:leftOperand", new OperandObject(null, "my:leftOperand"), ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.LEFT_OPERAND, "my", Map.of("leftOperand", new RegoMethod("my", "operand"))), "my:leftOperand"));
	}

	public static Stream<Arguments> invalidLeftOperandKeys() {
		return Stream.of(
				Arguments.of(
						Map.of("odrl:operator", "odrl:eq", "odrl:rightOperand", "something"),
						new MappingConfiguration()),
				Arguments.of(
						Map.of("my:customLeftOperand", "custom", "odrl:operator", "odrl:eq", "odrl:rightOperand", "something"),
						new MappingConfiguration()),
				Arguments.of(
						Map.of("my:customLeftOperand", "custom", "odrl:operator", "odrl:eq", "odrl:rightOperand", "something"),
						ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.LEFT_OPERAND, "my", Map.of("leftOperand", new RegoMethod("my", "operand")))));
	}

	public static Stream<Arguments> validLeftOperandKeys() {
		return Stream.of(
				Arguments.of(
						Map.of("odrl:leftOperand", "something", "odrl:operator", "odrl:eq", "odrl:rightOperand", "something"),
						new MappingConfiguration(),
						"odrl:leftOperand"),
				Arguments.of(
						Map.of("odrl:leftoperand", "something", "odrl:operator", "odrl:eq", "odrl:rightOperand", "something"),
						new MappingConfiguration(),
						"odrl:leftoperand"),
				Arguments.of(
						Map.of("odrl:LeftOperand", "something", "odrl:operator", "odrl:eq", "odrl:rightOperand", "something"),
						new MappingConfiguration(),
						"odrl:LeftOperand"),
				Arguments.of(
						Map.of("my:customOperand", "something", "odrl:operator", "odrl:eq", "odrl:rightOperand", "something"),
						ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.LEFT_OPERAND, "my", Map.of("customOperand", new RegoMethod("my", "operand"))),
						"my:customOperand"));
	}

	public static Stream<Arguments> inValidBaseTypes() {
		return Stream.of(
				Arguments.of("leftOperand"),
				Arguments.of("LeftOperand"),
				Arguments.of("leftoperand"),
				Arguments.of("no:leftOperand"),
				Arguments.of("my:leftOperand")
		);
	}

	public static Stream<Arguments> validBaseTypes() {
		return Stream.of(
				Arguments.of("odrl:leftOperand"),
				Arguments.of("odrl:LeftOperand"),
				Arguments.of("odrl:leftoperand")
		);
	}

	public static Stream<Arguments> validLeftOperands() {
		return Stream.of(
				Arguments.of("odrl:leftOperand", new MappingConfiguration()),
				Arguments.of("odrl:leftoperand", new MappingConfiguration()),
				Arguments.of("odrl:LeftOperand", new MappingConfiguration()),
				Arguments.of("my:leftOperand", ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.LEFT_OPERAND, "my", Map.of("leftOperand", new RegoMethod("my", "operand")))),
				Arguments.of("my:leftOperand",
						ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.LEFT_OPERAND, "my",
								Map.of("leftOperand-1", new RegoMethod("my", "operand"),
										"leftOperand-2", new RegoMethod("my", "operand"),
										"leftOperand", new RegoMethod("my", "operand"))))
		);
	}

	public static Stream<Arguments> invalidLeftOperands() {
		return Stream.of(
				Arguments.of("odrl:no-leftOperand", new MappingConfiguration()),
				Arguments.of("my:leftOperand",new MappingConfiguration()),
				Arguments.of("my:leftOperand", ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.LEFT_OPERAND, "my", Map.of("leftOperand-1", new RegoMethod("my", "operand")))),
				Arguments.of("my:leftOperand",
						ConstraintMapperTest.getMappingConfiguration(OdrlAttribute.LEFT_OPERAND, "my",
								Map.of("leftOperand-1", new RegoMethod("my", "operand"),
										"leftOperand-2", new RegoMethod("my", "operand"),
										"leftOperand-3", new RegoMethod("my", "operand"))))
		);
	}
}
