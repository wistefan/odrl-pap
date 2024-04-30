package org.fiware.odrl.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Data
@JsonInclude(JsonInclude.Include.NON_NULL)
public class Headers {

    @JsonProperty(":method")
    private String method;
    private String accept;
    private String authorization;
    @JsonProperty("content-type")
    private String contentType;

}
