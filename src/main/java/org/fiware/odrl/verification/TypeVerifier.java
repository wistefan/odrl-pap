package org.fiware.odrl.verification;

import java.util.List;

/**
 * Verifies objects to be compliant with a certain required structure.
 * Could for example check that an ovc:constraint contains ovc:leftOperand, odrl:rightOperand, odrl:operator and ovc:subjectType
 */
public interface TypeVerifier {

	<T> void verify(T objectToVerify) throws VerificationException;

	List<String> verifiableTypes();

	String supportedBaseType();

}

