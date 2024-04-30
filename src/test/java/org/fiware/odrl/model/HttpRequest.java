package org.fiware.odrl.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Data;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Data
@JsonInclude(JsonInclude.Include.NON_NULL)
public class HttpRequest {
    private String id;
    private String method;
    private String host;
    private String path;
    private String protocol;
    private String body;
    private Headers headers;
    private String entityId;
}
