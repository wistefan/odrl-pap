package org.fiware.odrl;

import io.smallrye.config.ConfigMapping;
import io.smallrye.config.WithName;

import java.util.List;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@ConfigMapping(prefix = "general")
public interface GeneralConfig {

	@WithName("organization-did")
	String organizationDid();

	Pep pep();

	// even thought kebab is the default case, making it more explicit
	@WithName("supported-sub-types")
	List<SubType> supportedSubTypes();

	interface SubType{

		@WithName("base-type")
		String baseType();

		@WithName("sub-types")
		List<String> subTypes();
	}
}
