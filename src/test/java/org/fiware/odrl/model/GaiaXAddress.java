package org.fiware.odrl.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

@Getter
@Setter
@Accessors(fluent = true)
public class GaiaXAddress {

	@JsonProperty("gx:countrySubdivisionCode")
	private String countryCode;
}
