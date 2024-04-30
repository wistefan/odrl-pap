package org.fiware.odrl;

import com.fasterxml.jackson.annotation.JsonValue;
import io.quarkus.runtime.annotations.RegisterForReflection;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@RegisterForReflection
public enum Pep {

    APISIX("apisix"),
    KONG("kong");

    private final String value;

    Pep(String value) {
        this.value = value;
    }

    @JsonValue
    public String getValue() {
        return value;
    }
}