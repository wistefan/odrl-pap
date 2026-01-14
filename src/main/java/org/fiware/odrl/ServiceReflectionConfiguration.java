package org.fiware.odrl;

import io.quarkus.runtime.annotations.RegisterForReflection;
import org.fiware.odrl.model.*;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@RegisterForReflection(targets = {ServiceCreate.class, Service.class, PolicyPath.class, Policy.class, ServiceListInner.class})
public class ServiceReflectionConfiguration {
}
