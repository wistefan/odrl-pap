package org.fiware.odrl.model;

import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Getter
@Setter
@Accessors(fluent = true)
public class RelatedParty {
    private String id;
    private String role;
}
