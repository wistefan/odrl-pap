package org.fiware.odrl;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.common.collect.ImmutableSet;
import io.quarkus.scheduler.Scheduled;
import jakarta.inject.Inject;
import jakarta.validation.Valid;
import jakarta.validation.constraints.NotNull;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.WebApplicationException;
import lombok.extern.slf4j.Slf4j;
import org.fiware.odrl.api.PolicyApi;
import org.fiware.odrl.mapping.MappingConfiguration;
import org.fiware.odrl.mapping.MappingResult;
import org.fiware.odrl.mapping.OdrlMapper;
import org.fiware.odrl.rego.OpaBackedPolicyService;
import org.fiware.odrl.rego.PolicyRepository;

import java.nio.charset.Charset;
import java.util.HashSet;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.StringJoiner;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Slf4j
public class PolicyResource implements PolicyApi {

    @Inject
    private ObjectMapper objectMapper;

    @Inject
    private MappingConfiguration mappingConfiguration;

    @Inject
    private PolicyRepository policyRepository;

    @Override
    public String createPolicy(Map<String, Object> requestBody) {
        return createPolicyWithId(policyRepository.generatePolicyId(), requestBody);
    }

    @Override
    public String createPolicyWithId(String id, Map<String, Object> policy) {
        if (id.equals("main")) {
            throw new IllegalArgumentException("Policy `main` cannot be manually modified.");
        }
        OdrlMapper odrlMapper = new OdrlMapper(objectMapper, mappingConfiguration);
        MappingResult mappingResult = odrlMapper.mapOdrl(policy);
        if (mappingResult.isFailed()) {
            throw new IllegalArgumentException(String.join(",", mappingResult.getFailureReasons()));
        }
        String packagedId = String.format("policy.%s", id);
        String regoPolicy = mappingResult.getRego(packagedId);
        policyRepository.addPolicy(id, regoPolicy);
        return regoPolicy;
    }

    @Override
    public Map<String, Object> getPolicyById(String id) {
        log.info("Get policy");
        return Map.of();
    }

}
