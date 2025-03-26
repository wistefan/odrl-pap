package org.fiware.odrl.verification;

import lombok.Getter;

public class VerificationException extends Exception {

	@Getter
	private final Object verifiedObject;

	public VerificationException(String message, Object verifiedObject) {
		super(message);
		this.verifiedObject = verifiedObject;
	}
}
