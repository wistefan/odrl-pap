package org.fiware.odrl;

import io.quarkus.runtime.annotations.StaticInitSafe;
import io.smallrye.config.ConfigMapping;

import java.io.File;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@StaticInitSafe
@ConfigMapping(prefix = "paths")
public interface Configuration {
    File mapping();
    File rego();
}
