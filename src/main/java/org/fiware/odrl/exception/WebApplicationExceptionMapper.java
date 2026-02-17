package org.fiware.odrl.exception;

import jakarta.ws.rs.WebApplicationException;
import jakarta.ws.rs.core.HttpHeaders;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import jakarta.ws.rs.ext.ExceptionMapper;
import jakarta.ws.rs.ext.Provider;
import lombok.extern.slf4j.Slf4j;

import java.time.Instant;

@Provider
@Slf4j
public class WebApplicationExceptionMapper implements ExceptionMapper<WebApplicationException> {

    @Override
    public Response toResponse(WebApplicationException exception) {

        Response.Status status = exception.getResponse().getStatusInfo().toEnum();
        if (Response.Status.Family.CLIENT_ERROR.equals(status.getFamily())) {
            log.debug("Application Error", exception);
        } else {
            log.error("Application Error", exception);
        }

        String message = exception.getCause() != null ? exception.getCause().getMessage() : exception.getMessage();
        ErrorResponse response = new ErrorResponse(status.toString(), status.getStatusCode(), message, Instant.now().toEpochMilli());

        return Response.status(status)
                .header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON)
                .entity(response).build();
    }
}

