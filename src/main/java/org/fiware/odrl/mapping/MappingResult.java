package org.fiware.odrl.mapping;

import io.quarkus.qute.ImmutableList;
import lombok.Getter;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.StringJoiner;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
public class MappingResult {


    @Getter
    private boolean failed = false;
    private final List<String> failureReasons = new ArrayList<>();

    private final Set<String> imports = new HashSet<>();

    // set default allow := false
    private final Set<String> rules = new HashSet<>();

    public MappingResult() {
        imports.add("import rego.v1");
        imports.add("import helper.req");
    }

    public MappingResult addFailure(String reason) {
        failureReasons.add(reason);
        failed = true;
        return this;
    }

    public MappingResult addFailure(String reason, String... parameters) {
        failureReasons.add(String.format(reason, parameters));
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

    public String getRego() {

        StringJoiner regoJoiner = new StringJoiner(System.getProperty("line.separator"));

        regoJoiner.add("package system");
        regoJoiner.add("");
        imports.forEach(regoJoiner::add);
        regoJoiner.add("");
        regoJoiner.add("default allow := false");
        regoJoiner.add("");
        regoJoiner.add("allow if {");
        rules.forEach(regoJoiner::add);
        regoJoiner.add("}");

        return regoJoiner.toString();
    }
}
