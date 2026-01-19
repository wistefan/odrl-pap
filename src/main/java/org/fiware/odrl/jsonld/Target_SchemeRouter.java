package org.fiware.odrl.jsonld;

import com.apicatalog.jsonld.loader.SchemeRouter;
import com.oracle.svm.core.annotate.Substitute;
import com.oracle.svm.core.annotate.TargetClass;

@TargetClass(className = "com.apicatalog.jsonld.loader.SchemeRouter")
final class Target_SchemeRouter {

    @Substitute
    static SchemeRouter defaultInstance() {
        throw new IllegalStateException(
                "SchemeRouter.defaultInstance() must not be used at build time"
        );
    }
}