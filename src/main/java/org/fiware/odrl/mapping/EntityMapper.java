package org.fiware.odrl.mapping;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import org.fiware.odrl.persistence.PolicyEntity;
import org.fiware.odrl.rego.OdrlPolicy;
import org.fiware.odrl.rego.PolicyWrapper;
import org.fiware.odrl.rego.RegoPolicy;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@ApplicationScoped
public class EntityMapper {

    @Inject
    private ObjectMapper objectMapper;

    public PolicyEntity map(String id, PolicyWrapper policyWrapper) {
        PolicyEntity policy = new PolicyEntity();
        policy.setPolicyId(id);
        policy.setRego(policyWrapper.rego().policy());
        policy.setOdrl(policyWrapper.odrl().policy());
        return policy;
    }

    public PolicyWrapper map(PolicyEntity policyEntity) {
        try {
            return new PolicyWrapper(new OdrlPolicy(objectMapper.writeValueAsString(policyEntity.getOdrl())), new RegoPolicy(objectMapper.writeValueAsString(policyEntity.getOdrl())));
        } catch (JsonProcessingException e) {
            throw new RuntimeException("Was not able to read the policy from the db.", e);
        }
    }
}
