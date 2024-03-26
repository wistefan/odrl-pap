package org.fiware.odrl;

import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.inject.Inject;
import jakarta.validation.Valid;
import jakarta.validation.constraints.NotNull;
import lombok.extern.slf4j.Slf4j;
import org.fiware.odrl.api.PolicyApi;
import org.fiware.odrl.mapping.MappingConfiguration;
import org.fiware.odrl.mapping.MappingResult;
import org.fiware.odrl.mapping.OdrlMapper;

import java.util.Map;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Slf4j
public class PolicyResource implements PolicyApi {

    @Inject
    private ObjectMapper objectMapper;

    @Inject
    private MappingConfiguration mappingConfiguration;

    @Override
    public String createPolicy(@Valid @NotNull Map<String, Object> policy) {
        log.info("Create policy");
        OdrlMapper odrlMapper = new OdrlMapper(objectMapper, mappingConfiguration);
        MappingResult mappingResult = odrlMapper.mapOdrl(policy);
        if (mappingResult.isFailed()) {
            throw new IllegalArgumentException(String.join(",", mappingResult.getFailureReasons()));
        }
        log.info("Create policy");
        return mappingResult.getRego();
    }

    @Override
    public Map<String, Object> getPolicyById(String id) {
        log.info("Get policy");
        return Map.of();
    }

}
