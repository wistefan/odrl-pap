package org.fiware.odrl.jsonld;

import com.apicatalog.jsonld.JsonLd;
import com.apicatalog.jsonld.JsonLdError;
import com.apicatalog.jsonld.JsonLdOptions;
import com.apicatalog.jsonld.document.Document;
import com.apicatalog.jsonld.document.JsonDocument;
import com.apicatalog.jsonld.loader.HttpLoader;
import com.apicatalog.jsonld.loader.SchemeRouter;
import jakarta.annotation.Priority;
import jakarta.inject.Inject;
import jakarta.json.Json;
import jakarta.json.JsonObject;
import jakarta.json.JsonReader;
import jakarta.ws.rs.Priorities;
import jakarta.ws.rs.container.ContainerRequestContext;
import jakarta.ws.rs.container.ContainerRequestFilter;
import jakarta.ws.rs.ext.Provider;
import lombok.extern.slf4j.Slf4j;
import org.apache.http.impl.client.CloseableHttpClient;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;

/**
 * Handle the incoming requests in terms of json-ld. Compacts documents according to there context. Allows to
 */
@Slf4j
@Provider
@Priority(Priorities.ENTITY_CODER)
public class JsonLdCompactionFilter implements ContainerRequestFilter {

    @Inject
    private CloseableHttpClient httpClient;

    @Inject
    private CompactionContext compactionContext;

    @Override
    public void filter(ContainerRequestContext requestContext) throws IOException {
        if (!requestContext.hasEntity()) {
            return;
        }
        HttpLoader httpLoader = new HttpLoader(new JsonLdApacheHttpClient(httpClient));
        SchemeRouter schemeRouter = new SchemeRouter()
                .set("https", httpLoader)
                .set("http", httpLoader)
                .set("file", httpLoader);

        JsonLdOptions jsonLdOptions = new JsonLdOptions(schemeRouter);
        InputStream original = requestContext.getEntityStream();
        JsonReader jsonReader = Json.createReader(original);

        try {
            JsonObject originalJson = jsonReader.readObject();
            Document orginalDocument = JsonDocument.of(originalJson);
            // expand to properly prefix all terms according to there context.
            Document expandedDocument = JsonDocument.of(JsonLd.expand(orginalDocument).options(jsonLdOptions).get());
            // compact to set the namespace prefixes.
            JsonObject jsonObject = JsonLd.compact(expandedDocument, compactionContext.getContext()).options(jsonLdOptions).get();
            String jsonString = jsonObject.toString();
            log.debug("Compacted json {}", jsonString);
            requestContext.setEntityStream(new ByteArrayInputStream(jsonString.getBytes(StandardCharsets.UTF_8)));
        } catch (JsonLdError e) {
            log.warn("Was not able to compact JSON. Try to handel the request anyways.", e);
        }
    }
}
