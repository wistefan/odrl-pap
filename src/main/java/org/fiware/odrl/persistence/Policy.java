package org.fiware.odrl.persistence;

import io.quarkus.runtime.annotations.RegisterForReflection;
import lombok.Data;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@RegisterForReflection
@Data
public class Policy {
    private String policy;
}
