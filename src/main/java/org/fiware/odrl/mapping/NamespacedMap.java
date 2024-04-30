package org.fiware.odrl.mapping;

import io.quarkus.runtime.annotations.RegisterForReflection;

import java.util.HashMap;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@RegisterForReflection
public class NamespacedMap extends HashMap<String, RegoMap> {
    public NamespacedMap() {
        super();
    }
}
