package org.fiware.odrl.mapping;

import io.quarkus.runtime.annotations.RegisterForReflection;
import org.fiware.odrl.model.Policy;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@RegisterForReflection(targets = {Policy.class})
public class PolicyReflectionConfiguration {
}
