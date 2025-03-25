package org.fiware.odrl.verification;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import lombok.extern.slf4j.Slf4j;
import org.fiware.odrl.mapping.LeftOperandMapper;
import org.fiware.odrl.mapping.MappingException;
import org.fiware.odrl.mapping.OperatorMapper;
import org.fiware.odrl.mapping.RightOperandMapper;

import java.util.List;
import java.util.Map;
import java.util.Optional;

/**
 * Verifies that an ovc:constraint contains all required attributes.
 */
@Slf4j
@ApplicationScoped
public class OvcConstraintVerifier implements TypeVerifier {

	private static final String MESSAGE_TEMPLATE = "An ovc:constraint needs to contain an %s.";

	private static final String TYPE_NAME = "ovc:constraint";
	private static final String BASE_TYPE = "odrl:constraint";

	private static final String OVC_LEFT_OPERAND = "ovc:leftOperand";
	private static final String OVC_CREDENTIAL_TYPE_SUBJECT = "ovc:credentialSubjectType";

	private static final String ODRL_TYPE_KEY = "@type";
	private static final String ODRL_LEFT_OPERAND = "odrl:leftOperand";
	private static final String ODRL_RIGHT_OPERAND = "odrl:rightOperand";
	private static final String ODRL_OPERATOR = "odrl:operator";

	@Inject
	private ObjectMapper objectMapper;

	@Inject
	private LeftOperandMapper leftOperandMapper;

	@Inject
	private OperatorMapper operatorMapper;

	@Inject
	private RightOperandMapper rightOperandMapper;


	@Override
	public <T> void verify(T objectToVerify) throws VerificationException {
		if (objectToVerify instanceof List<?> objectList) {
			for (Object o : objectList) {
				verifyTheObject(o);
			}
		} else {
			verifyTheObject(objectToVerify);
		}

	}

	private Map<String, Object> toMap(Object theObject) {
		return objectMapper.convertValue(theObject, new TypeReference<>() {
		});
	}

	public void verifyTheObject(Object objectToVerify) throws VerificationException {

		Map<String, Object> theObject = toMap(objectToVerify);
		// find leftOperand
		try {
			String leftKey = leftOperandMapper.getLeftOperandKey(theObject);
			if (!leftOperandMapper.getType(leftKey, theObject.get(leftKey)).equals(OVC_LEFT_OPERAND)) {
				throw new VerificationException(String.format("For ovc:constraint the leftOperand can only be of type %s.", OVC_LEFT_OPERAND), theObject);
			}
		} catch (MappingException e) {
			throw new VerificationException("The ovc:constraint does not contain a leftOperand.", theObject);
		}
		try {
			rightOperandMapper.getRightOperandKey(theObject);
		} catch (MappingException e) {
			throw new VerificationException("The ovc:constraint does not contain a rightOperand.", theObject);
		}

		try {
			operatorMapper.getOperatorKey(theObject);
		} catch (MappingException e) {
			throw new VerificationException("The ovc:constraint does not contain an operator.", theObject);
		}

		// find typeSubject
		if (!theObject.containsKey(OVC_CREDENTIAL_TYPE_SUBJECT)) {
			throw new VerificationException(String.format(MESSAGE_TEMPLATE, ODRL_OPERATOR), theObject);
		}
	}

	@Override
	public List<String> verifiableTypes() {
		return List.of(TYPE_NAME);
	}

	@Override
	public String supportedBaseType() {
		return BASE_TYPE;
	}

}
