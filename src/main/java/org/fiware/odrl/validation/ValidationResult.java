package org.fiware.odrl.validation;

import io.quarkus.qute.ImmutableList;
import lombok.Getter;

import java.util.ArrayList;
import java.util.List;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
public class ValidationResult {


    @Getter
    private boolean isValid = true;
    private List<String> reasons = new ArrayList<>();

    public ValidationResult addReason(String reason) {
        isValid = false;
        reasons.add(reason);
        return this;
    }

    public List<String> getReasons() {
        return ImmutableList.copyOf(reasons);
    }

}
