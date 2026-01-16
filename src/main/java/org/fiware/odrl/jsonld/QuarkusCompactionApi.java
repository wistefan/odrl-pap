package org.fiware.odrl.jsonld;

import com.apicatalog.jsonld.JsonLdError;
import com.apicatalog.jsonld.JsonLdOptions;
import com.apicatalog.jsonld.JsonLdVersion;
import com.apicatalog.jsonld.api.CommonApi;
import com.apicatalog.jsonld.api.LoaderApi;
import com.apicatalog.jsonld.document.Document;
import com.apicatalog.jsonld.loader.DocumentLoader;
import com.apicatalog.jsonld.processor.CompactionProcessor;
import jakarta.json.JsonObject;

import java.net.URI;

/**
 * Implementation of the compaction api, that not statically initializes the schema router to avoid breaking the native image
 */
public class QuarkusCompactionApi implements CommonApi<QuarkusCompactionApi>, LoaderApi<QuarkusCompactionApi> {

    private final Document document;
    private final Document context;
    private JsonLdOptions options;

    public QuarkusCompactionApi(Document document, Document context, JsonLdOptions options) {
        this.document = document;
        this.context = context;
        this.options = options;
    }

    @Override
    public QuarkusCompactionApi options(JsonLdOptions options) {

        if (options == null) {
            throw new IllegalArgumentException("Parameter 'options' is null.");
        }

        this.options = options;
        return this;
    }

    @Override
    public QuarkusCompactionApi mode(JsonLdVersion processingMode) {
        options.setProcessingMode(processingMode);
        return this;
    }

    @Override
    public QuarkusCompactionApi base(URI baseUri) {
        options.setBase(baseUri);
        return this;
    }

    @Override
    public QuarkusCompactionApi ordered(boolean enable) {
        options.setOrdered(enable);
        return this;
    }

    @Override
    public QuarkusCompactionApi loader(DocumentLoader loader) {
        options.setDocumentLoader(loader);
        return this;
    }

    /**
     * Get the result of compaction.
     *
     * @return {@link JsonObject} representing compacted document
     * @throws JsonLdError if the document compaction fails
     */
    public JsonObject get() throws JsonLdError {

        if (document != null) {
            if (context != null) {
                return CompactionProcessor.compact(document, context, options);
            }
        }

        throw new IllegalStateException();
    }
}
