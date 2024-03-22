package org.fiware.odrl;

import jakarta.inject.Inject;
import jakarta.validation.Valid;
import jakarta.validation.constraints.NotNull;
import lombok.extern.slf4j.Slf4j;
import org.fiware.odrl.api.PolicyApi;
import org.fiware.odrl.model.Policy;

import java.util.Map;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Slf4j
public class PolicyResource implements PolicyApi {

    @Inject
    private MappingService mappingService;

    @Override
    public void createPolicy(@Valid @NotNull Map<String, Object> policy) {
        log.info("Create policy");
        MappingResult mappingResult = mappingService.mapOdrl(policy);
        if (mappingResult.isFailed()) {
            throw new IllegalArgumentException(String.join(",", mappingResult.getFailureReasons()));
        }
        log.info("Create policy");
    }

    @Override
    public Map<String, Object> getPolicyById(String id) {
        log.info("Get policy");
        return null;
    }

}
