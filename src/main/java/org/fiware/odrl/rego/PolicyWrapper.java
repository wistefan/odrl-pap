package org.fiware.odrl.rego;

import io.quarkus.runtime.annotations.RegisterForReflection;

import java.util.Optional;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@RegisterForReflection
public record PolicyWrapper(String regoId, String odrlUid, Optional<String> serviceId, OdrlPolicy odrl, RegoPolicy rego) {
}
