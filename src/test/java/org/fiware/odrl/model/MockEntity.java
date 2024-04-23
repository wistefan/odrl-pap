package org.fiware.odrl.model;

import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

import java.util.List;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Getter
@Setter
@Accessors(fluent = true)
public class MockEntity {
    private String id;
    private String type;
    private List<RelatedParty> relatedParty;
}
