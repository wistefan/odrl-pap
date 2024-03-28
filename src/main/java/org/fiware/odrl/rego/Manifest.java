package org.fiware.odrl.rego;

import lombok.Data;
import lombok.Getter;

import java.util.ArrayList;
import java.util.List;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Getter
public class Manifest {

    private List<String> roots = new ArrayList<>();

    public Manifest setRoots(List<String> roots) {
        this.roots.clear();
        this.roots.addAll(roots);
        return this;
    }
    public Manifest addRoot(String root){
        this.roots.add(root);
        return this;
    }
}
