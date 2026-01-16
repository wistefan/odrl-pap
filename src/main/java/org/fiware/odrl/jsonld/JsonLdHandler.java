package org.fiware.odrl.jsonld;

import com.apicatalog.jsonld.JsonLdError;
import com.apicatalog.jsonld.JsonLdOptions;
import com.apicatalog.jsonld.document.Document;
import com.apicatalog.jsonld.document.JsonDocument;
import com.apicatalog.jsonld.loader.HttpLoader;
import com.apicatalog.jsonld.loader.SchemeRouter;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.json.Json;
import jakarta.json.JsonObject;
import jakarta.json.JsonReader;
import jakarta.ws.rs.ext.Provider;
import lombok.extern.slf4j.Slf4j;
import org.apache.http.impl.client.CloseableHttpClient;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;

@Slf4j
@ApplicationScoped
public class JsonLdHandler {

    @Inject
    private CloseableHttpClient httpClient;

    @Inject
    private CompactionContext compactionContext;

    public String handleJsonLd(InputStream jsonLdInput) throws JsonLdError {
        HttpLoader httpLoader = new HttpLoader(new JsonLdApacheHttpClient(httpClient));
        SchemeRouter schemeRouter = new SchemeRouter()
                .set("https", httpLoader)
                .set("http", httpLoader)
                .set("file", httpLoader);

        JsonLdOptions jsonLdOptions = new JsonLdOptions(schemeRouter);
        JsonReader jsonReader = Json.createReader(jsonLdInput);

        JsonObject originalJson = jsonReader.readObject();
        Document orginalDocument = JsonDocument.of(originalJson);
        // expand to properly prefix all terms according to there context.
        Document expandedDocument = JsonDocument.of(new QuarkusExpansionApi(orginalDocument, jsonLdOptions).get());
        // compact to set the namespace prefixes.
        JsonObject jsonObject = new QuarkusCompactionApi(expandedDocument, compactionContext.getContext(), jsonLdOptions).get();
        String jsonString = jsonObject.toString();
        log.debug("Compacted json {}", jsonString);
        return jsonString;
    }

}
