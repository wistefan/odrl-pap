package org.fiware.odrl;

import io.quarkus.qute.ImmutableList;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
public class MappingResult {


    @Getter
    private boolean failed = false;
    private final List<String> failureReasons = new ArrayList<>();

    private static final Set<String> imports = new HashSet<>();

    static {
        imports.add("import rego.v1");
        imports.add("import req");
    }

    // set default allow := false
    private static final Set<String> rules = new HashSet<>();


    @Getter
    @Setter
    private String rego;

    public MappingResult addFailure(String reason) {
        failureReasons.add(reason);
        failed = true;
        return this;
    }

    public List<String> getFailureReasons() {
        return ImmutableList.copyOf(failureReasons);
    }

    public MappingResult addImport(String importPackage) {
        imports.add(String.format("import %s", importPackage));
        return this;
    }

    public MappingResult addRule(String rule) {
        rules.add(rule);
        return this;
    }
}
