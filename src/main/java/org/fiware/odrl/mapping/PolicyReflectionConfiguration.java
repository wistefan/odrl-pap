package org.fiware.odrl.mapping;

import io.quarkus.runtime.annotations.RegisterForReflection;
import org.openapi.quarkus.odrl_yaml.model.Policy;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@RegisterForReflection(targets = {Policy.class})
public class PolicyReflectionConfiguration {
}
