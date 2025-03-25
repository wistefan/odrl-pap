package org.fiware.odrl.mapping;

import com.fasterxml.jackson.annotation.JsonValue;
import io.quarkus.runtime.annotations.RegisterForReflection;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@RegisterForReflection
public enum OdrlAttribute {

    LEFT_OPERAND("leftOperand"),
    RIGHT_OPERAND("rightOperand"),
    OPERATOR("operator"),
    ASSIGNEE("assignee"),
    ACTION("action"),
    OPERAND("operand"),
    TARGET("target"),
    CONSTRAINT("constraint");

    private final String value;

    OdrlAttribute(String value) {
        this.value = value;
    }

    @JsonValue
    public String getValue() {
        return value;
    }
}
