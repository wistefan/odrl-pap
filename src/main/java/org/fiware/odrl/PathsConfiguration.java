package org.fiware.odrl;

import io.quarkus.runtime.annotations.StaticInitSafe;
import io.smallrye.config.ConfigMapping;

import java.io.File;
import java.util.Optional;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@StaticInitSafe
@ConfigMapping(prefix = "paths")
public interface PathsConfiguration {

    // path to an additional @link{MappingConfiguration} to be merged with the defaults
    Optional<File> mapping();

    // Path to additional rego-methods to be added to the built-in methods. Duplications will be overwritten
    Optional<File> rego();

    // Path to an alternative compactionContext to be used.
    Optional<File> compactionContext();
}
