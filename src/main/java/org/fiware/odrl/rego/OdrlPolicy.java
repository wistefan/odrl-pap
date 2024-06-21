package org.fiware.odrl.rego;

import io.quarkus.runtime.annotations.RegisterForReflection;
import lombok.AllArgsConstructor;
import lombok.Data;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@RegisterForReflection
@Data
@AllArgsConstructor
public class OdrlPolicy {
    private String policy;
}
