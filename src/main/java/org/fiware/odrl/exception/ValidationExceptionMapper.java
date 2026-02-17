package org.fiware.odrl.exception;

import jakarta.validation.ConstraintViolation;
import jakarta.validation.ConstraintViolationException;
import jakarta.ws.rs.core.HttpHeaders;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import jakarta.ws.rs.ext.ExceptionMapper;
import jakarta.ws.rs.ext.Provider;

import java.time.Instant;
import java.util.List;

@Provider
public class ValidationExceptionMapper implements ExceptionMapper<ConstraintViolationException> {
    @Override
    public Response toResponse(ConstraintViolationException e) {

        Response.Status status = Response.Status.BAD_REQUEST;

        List<String> errors = e.getConstraintViolations().stream()
                .map(ConstraintViolation::getMessage).toList();
        ErrorResponse response = new ErrorResponse("Error parsing body", status.getStatusCode(), String.join(", ", errors), Instant.now().toEpochMilli());

        return Response.status(Response.Status.BAD_REQUEST)
                .header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON)
                .entity(response).build();
    }
}
