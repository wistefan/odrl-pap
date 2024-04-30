package org.fiware.odrl.model;

import lombok.Data;

import java.util.List;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Data
public class RolesAndDuties {
    private String target;
    private String id;
    private List<String> roleNames;
}
