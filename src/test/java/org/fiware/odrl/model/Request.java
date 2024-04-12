package org.fiware.odrl.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Data;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Data
@JsonInclude(JsonInclude.Include.NON_NULL)
public class Request {

    private String time;
    private Http http;
}
