package org.fiware.odrl.rego;

import io.quarkus.runtime.annotations.RegisterForReflection;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@RegisterForReflection
public record PolicyWrapper(String regoId, String odrlUid, OdrlPolicy odrl, RegoPolicy rego) {
}
