package org.fiware.odrl.rego;

import io.quarkus.runtime.annotations.RegisterForReflection;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@RegisterForReflection
public record OdrlPolicy(String policy) {
}
