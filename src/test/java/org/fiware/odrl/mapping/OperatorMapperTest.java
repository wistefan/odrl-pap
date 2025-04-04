package org.fiware.odrl.mapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.fiware.odrl.model.OperandObject;
import org.fiware.odrl.rego.RegoMethod;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;

import java.util.Map;
import java.util.stream.Stream;

import static org.fiware.odrl.mapping.ConstraintMapperTest.getMappingConfiguration;
import static org.junit.jupiter.api.Assertions.*;
import static org.junit.jupiter.api.Assertions.assertThrows;

public class OperatorMapperTest {

	private static final ObjectMapper OBJECT_MAPPER = new ObjectMapper();

	@DisplayName("A valid operator type should be identified as such.")
	@MethodSource("validOperators")
	@ParameterizedTest
	public void test_isOperator_true(String keyToTest, MappingConfiguration mappingConfiguration) {
		OperatorMapper operatorMapper = new OperatorMapper(OBJECT_MAPPER, mappingConfiguration);
		assertTrue(operatorMapper.isOperator(keyToTest), "The requested key should be identified as a operator");
	}

	@DisplayName("A type that is not a default or mapped operator should not be identified as such.")
	@MethodSource("invalidOperators")
	@ParameterizedTest
	public void test_Operator_false(String keyToTest, MappingConfiguration mappingConfiguration) {
		OperatorMapper operatorMapper = new OperatorMapper(OBJECT_MAPPER, mappingConfiguration);
		assertFalse(operatorMapper.isOperator(keyToTest), "The requested key should not be identified as a operator");
	}

	@DisplayName("The correct key identifying the operator should be returned.")
	@MethodSource("validOperatorKeys")
	@ParameterizedTest
	public void test_getOperatorKey_success(Map<String, Object> theConstraint, MappingConfiguration mappingConfiguration, String expectedKey) throws MappingException {
		OperatorMapper operatorMapper = new OperatorMapper(OBJECT_MAPPER, mappingConfiguration);
		assertEquals(expectedKey, operatorMapper.getOperatorKey(theConstraint), "The correct operator key should be extracted.");
	}

	@DisplayName("If no operator is contained, an expection need to be thrown.")
	@MethodSource("invalidOperatorKeys")
	@ParameterizedTest
	public void test_getOperatorKey_failure(Map<String, Object> theConstraint, MappingConfiguration mappingConfiguration) {
		OperatorMapper operatorMapper = new OperatorMapper(OBJECT_MAPPER, mappingConfiguration);
		assertThrows(MappingException.class, () -> operatorMapper.getOperatorKey(theConstraint), "A mapping exception should be thrown if no operator is contained.");
	}

	@DisplayName("If the key to a operator is provided, the concrete type should be returned.")
	@MethodSource("validTypes")
	@ParameterizedTest
	public void test_getType_success(String operatorKey, Object theOperator, MappingConfiguration mappingConfiguration, String expectedType) throws MappingException {
		OperatorMapper operatorMapper = new OperatorMapper(OBJECT_MAPPER, mappingConfiguration);
		assertEquals(expectedType, operatorMapper.getType(operatorKey, theOperator), "The type of the operator should be returned");
	}

	@DisplayName("If the key does not contain a valid type.")
	@MethodSource("invalidTypes")
	@ParameterizedTest
	public void test_getType_failure(String operatorKey, Object theOperator, MappingConfiguration mappingConfiguration) throws MappingException {
		OperatorMapper operatorMapper = new OperatorMapper(OBJECT_MAPPER, mappingConfiguration);
		assertThrows(MappingException.class, () -> operatorMapper.getType(operatorKey, theOperator), "If the key does not contain a valid type, an exception should be thrown.");
	}

	public static Stream<Arguments> invalidTypes() {
		return Stream.of(
				Arguments.of("odrl:operator", new OperandObject("myValue", null), new MappingConfiguration())
		);
	}

	public static Stream<Arguments> validTypes() {
		return Stream.of(
				Arguments.of("odrl:operator", "odrl:eq", new MappingConfiguration(), "odrl:eq"),
				Arguments.of("odrl:Operator", "odrl:eq", new MappingConfiguration(), "odrl:eq"),
				Arguments.of("odrl:operator", new OperandObject(null, "odrl:eq"), new MappingConfiguration(), "odrl:eq"),
				Arguments.of("my:operator", new OperandObject("myValue", null), getMappingConfiguration(OdrlAttribute.OPERATOR, "my", Map.of("operator", new RegoMethod("my", "operator"))), "my:operator"),
				Arguments.of("my:operator", "myValue", getMappingConfiguration(OdrlAttribute.OPERATOR, "my", Map.of("operator", new RegoMethod("my", "operator"))), "my:operator"),
				Arguments.of("odrl:operator", new OperandObject("myValue", "my:operator"), getMappingConfiguration(OdrlAttribute.OPERATOR, "my", Map.of("operator", new RegoMethod("my", "operator"))), "my:operator"),
				Arguments.of("odrl:operator", new OperandObject(null, "my:operator"), getMappingConfiguration(OdrlAttribute.OPERATOR, "my", Map.of("operator", new RegoMethod("my", "operator"))), "my:operator"));
	}

	public static Stream<Arguments> invalidOperatorKeys() {
		return Stream.of(
				Arguments.of(
						Map.of("odrl:leftOperand", "something", "odrl:rightOperand", "something"),
						new MappingConfiguration()),
				Arguments.of(
						Map.of("my:customOperator", "custom", "odrl:leftOperand", "something", "odrl:rightOperand", "something"),
						new MappingConfiguration()),
				Arguments.of(
						Map.of("my:customOperator", "custom", "odrl:leftOperand", "something", "odrl:rightOperand", "something"),
						getMappingConfiguration(OdrlAttribute.OPERATOR, "my", Map.of("operator", new RegoMethod("my", "operator")))));
	}

	public static Stream<Arguments> validOperatorKeys() {
		return Stream.of(
				Arguments.of(
						Map.of("odrl:operator", "odrl:eq", "odrl:leftOperand", "something", "odrl:rightOperand", "something"),
						new MappingConfiguration(),
						"odrl:operator"),
				Arguments.of(
						Map.of("odrl:Operator", "odrl:eq", "odrl:leftOperand", "something", "odrl:rightOperand", "something"),
						new MappingConfiguration(),
						"odrl:Operator"),
				Arguments.of(
						Map.of("my:operator", "something", "odrl:leftOperand", "something", "odrl:rightOperand", "something"),
						getMappingConfiguration(OdrlAttribute.OPERATOR, "my", Map.of("operator", new RegoMethod("my", "operator"))),
						"my:operator"));
	}

	public static Stream<Arguments> validOperators() {
		return Stream.of(
				Arguments.of("odrl:operator", new MappingConfiguration()),
				Arguments.of("odrl:Operator", new MappingConfiguration()),
				Arguments.of("my:operator", getMappingConfiguration(OdrlAttribute.OPERATOR, "my", Map.of("operator", new RegoMethod("my", "operator")))),
				Arguments.of("my:operator",
						getMappingConfiguration(OdrlAttribute.OPERATOR, "my",
								Map.of("operator", new RegoMethod("my", "operator"),
										"operator-2", new RegoMethod("my", "operator"),
										"operator-3", new RegoMethod("my", "operator"))))
		);
	}

	public static Stream<Arguments> invalidOperators() {
		return Stream.of(
				Arguments.of("odrl:no-operator", new MappingConfiguration()),
				Arguments.of("my:operator", new MappingConfiguration()),
				Arguments.of("my:operator", getMappingConfiguration(OdrlAttribute.OPERATOR, "my", Map.of("operator-1", new RegoMethod("my", "operator")))),
				Arguments.of("my:operator",
						getMappingConfiguration(OdrlAttribute.OPERATOR, "my",
								Map.of("operator-1", new RegoMethod("my", "operator"),
										"operator-2", new RegoMethod("my", "operator"),
										"operator-3", new RegoMethod("my", "operator"))))
		);
	}
}
