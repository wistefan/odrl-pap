package org.fiware.odrl;

import io.quarkus.runtime.annotations.StaticInitSafe;
import io.smallrye.config.ConfigMapping;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@StaticInitSafe
@ConfigMapping(prefix = "general")
public interface GeneralConfig {

    String organizationDid();
}
