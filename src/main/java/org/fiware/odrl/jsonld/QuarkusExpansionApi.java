package org.fiware.odrl.jsonld;

import com.apicatalog.jsonld.JsonLdError;
import com.apicatalog.jsonld.JsonLdOptions;
import com.apicatalog.jsonld.JsonLdVersion;
import com.apicatalog.jsonld.api.CommonApi;
import com.apicatalog.jsonld.api.ContextApi;
import com.apicatalog.jsonld.api.ExpansionApi;
import com.apicatalog.jsonld.api.LoaderApi;
import com.apicatalog.jsonld.document.Document;
import com.apicatalog.jsonld.document.JsonDocument;
import com.apicatalog.jsonld.loader.DocumentLoader;
import com.apicatalog.jsonld.processor.ExpansionProcessor;
import com.apicatalog.jsonld.uri.UriUtils;
import jakarta.json.JsonArray;
import jakarta.json.JsonStructure;

import java.net.URI;

/**
 * Implementation of the compaction api, that not statically initializes the schema router to avoid breaking the native image
 */
public class QuarkusExpansionApi implements CommonApi<QuarkusExpansionApi>, LoaderApi<QuarkusExpansionApi>, ContextApi<QuarkusExpansionApi> {

    private final Document document;
    private JsonLdOptions options;

    public QuarkusExpansionApi(Document document, JsonLdOptions options) {
        this.document = document;
        this.options = options;
    }

    /**
     * Get the result of the document expansion.
     *
     * @return {@link JsonArray} representing expanded document
     * @throws JsonLdError if the document expansion fails
     */
    public JsonArray get() throws JsonLdError {
        if (document != null) {
            return ExpansionProcessor.expand(document, options, false);
        }
        throw new IllegalStateException();
    }

    @Override
    public QuarkusExpansionApi options(JsonLdOptions options) {
        if (options == null) {
            throw new IllegalArgumentException("Parameter 'options' is null.");
        }

        this.options = options;
        return this;
    }

    @Override
    public QuarkusExpansionApi mode(JsonLdVersion processingMode) {
        options.setProcessingMode(processingMode);
        return this;
    }

    @Override
    public QuarkusExpansionApi base(URI baseUri) {
        options.setBase(baseUri);
        return this;
    }

    @Override
    public QuarkusExpansionApi ordered(boolean enable) {
        options.setOrdered(enable);
        return this;
    }

    @Override
    public QuarkusExpansionApi context(URI contextUri) {
        options.setExpandContext(contextUri);
        return this;
    }

    @Override
    public QuarkusExpansionApi context(String contextLocation) {
        URI contextUri = null;

        if (contextLocation != null) {

            contextUri = UriUtils.create(contextLocation);

            if (contextUri == null) {
                throw new IllegalArgumentException("Context location must be valid URI or null but is [" + contextLocation + ".");
            }
        }

        return context(contextUri);
    }

    @Override
    public QuarkusExpansionApi context(JsonStructure context) {
        options.setExpandContext(context != null ? JsonDocument.of(context) : null);
        return this;
    }

    @Override
    public QuarkusExpansionApi context(Document context) {
        options.setExpandContext(context);
        return this;
    }

    @Override
    public QuarkusExpansionApi loader(DocumentLoader loader) {
        options.setDocumentLoader(loader);
        return this;
    }
}
