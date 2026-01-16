package org.fiware.odrl.jsonld;

import com.apicatalog.jsonld.JsonLdError;
import jakarta.annotation.Priority;
import jakarta.inject.Inject;
import jakarta.ws.rs.Priorities;
import jakarta.ws.rs.container.ContainerRequestContext;
import jakarta.ws.rs.container.ContainerRequestFilter;
import jakarta.ws.rs.ext.Provider;
import lombok.extern.slf4j.Slf4j;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;

/**
 * Handle the incoming requests in terms of json-ld. Compacts documents according to there context. Allows to
 */
@Slf4j
@Provider
@JsonLdEndpoint
@Priority(Priorities.ENTITY_CODER)
public class JsonLdCompactionFilter implements ContainerRequestFilter {

    @Inject
    private JsonLdHandler jsonLdHandler;

    @Override
    public void filter(ContainerRequestContext requestContext) throws IOException {
        if (!requestContext.hasEntity()) {
            return;
        }

        InputStream original = requestContext.getEntityStream();
        try {
            requestContext.setEntityStream(new ByteArrayInputStream(jsonLdHandler.handleJsonLd(original).getBytes(StandardCharsets.UTF_8)));
        } catch (JsonLdError e) {
            log.warn("Was not able to compact JSON. Try to handel the request anyways.", e);
        }
    }
}
