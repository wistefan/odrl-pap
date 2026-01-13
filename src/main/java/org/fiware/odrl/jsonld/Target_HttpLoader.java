package org.fiware.odrl.jsonld;

import com.apicatalog.jsonld.loader.HttpLoader;
import com.apicatalog.jsonld.loader.SchemeRouter;
import com.oracle.svm.core.annotate.Substitute;
import com.oracle.svm.core.annotate.TargetClass;

@TargetClass(className = "com.apicatalog.jsonld.loader.HttpLoader")
final class Target_HttpLoader {

    @Substitute
    static HttpLoader defaultInstance() {
        throw new IllegalStateException(
                "HttpLoader.defaultInstance() must not be used at build time"
        );
    }
}