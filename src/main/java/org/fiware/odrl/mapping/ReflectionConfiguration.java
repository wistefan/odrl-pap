package org.fiware.odrl.mapping;

import io.quarkus.runtime.annotations.RegisterForReflection;
import org.openapi.quarkus.odrl_yaml.model.Policy;
import org.openapi.quarkus.odrl_yaml.model.Service;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@RegisterForReflection(targets = {Policy.class, Service.class})
public class ReflectionConfiguration {
}
