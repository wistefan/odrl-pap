package org.fiware.odrl.rego;

import io.quarkus.runtime.annotations.RegisterForReflection;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@RegisterForReflection
public record RegoMethod(String regoPackage, String regoMethod) {
}
