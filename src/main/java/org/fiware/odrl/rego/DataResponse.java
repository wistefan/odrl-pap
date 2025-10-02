package org.fiware.odrl.rego;

import com.fasterxml.jackson.annotation.JsonInclude;
import io.quarkus.runtime.annotations.RegisterForReflection;

import java.util.List;

@RegisterForReflection
public record DataResponse(boolean result, List<String> explanation) {
    public DataResponse(boolean result) {
        this(result, List.of());
    }

    public DataResponse(List<String> explanation) {
        this(false, explanation);
    }
}
