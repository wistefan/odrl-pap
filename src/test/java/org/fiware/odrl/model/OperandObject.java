package org.fiware.odrl.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;

@AllArgsConstructor
@Data
@JsonInclude(JsonInclude.Include.NON_NULL)
public class OperandObject {

	@JsonProperty("@value")
	private Object value;
	@JsonProperty("@id")
	private String id;

}
