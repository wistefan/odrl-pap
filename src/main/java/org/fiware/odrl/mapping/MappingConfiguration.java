package org.fiware.odrl.mapping;

import io.quarkus.runtime.annotations.RegisterForReflection;

import java.util.HashMap;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@RegisterForReflection
public class MappingConfiguration extends HashMap<OdrlAttribute, NamespacedMap> {

    public MappingConfiguration() {
        super();
    }
}