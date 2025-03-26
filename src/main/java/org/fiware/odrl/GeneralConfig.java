package org.fiware.odrl;

import io.quarkus.runtime.annotations.StaticInitSafe;
import io.smallrye.config.ConfigMapping;
import io.smallrye.config.WithName;

import java.util.List;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@StaticInitSafe
@ConfigMapping(prefix = "general")
public interface GeneralConfig {

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
