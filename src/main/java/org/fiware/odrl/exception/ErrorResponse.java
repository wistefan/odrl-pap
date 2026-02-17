package org.fiware.odrl.exception;

import java.util.Date;
import java.util.List;

public record ErrorResponse(String error, int status, String message, long timestamp) {}
