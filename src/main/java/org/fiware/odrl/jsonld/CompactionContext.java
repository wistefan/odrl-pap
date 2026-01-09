package org.fiware.odrl.jsonld;

import com.apicatalog.jsonld.document.Document;
import io.quarkus.runtime.annotations.RegisterForReflection;

/**
 * Compaction context holder bean.
 */
@RegisterForReflection
public class CompactionContext {

    private final Document context;

    public CompactionContext(Document compactionContext) {
        this.context = compactionContext;
    }

    public Document getContext() {
        return context;
    }
}
