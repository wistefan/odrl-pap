package org.fiware.odrl.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;

@AllArgsConstructor
@Data
public class ValueObject {

	@JsonProperty("@value")
	private Object theValue;
}
