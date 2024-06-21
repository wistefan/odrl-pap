package org.fiware.odrl.mapping;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import org.fiware.odrl.persistence.Policy;
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
        Policy rego = new Policy();
        rego.setPolicy(policyWrapper.rego().policy());
        Policy odrl = new Policy();
        odrl.setPolicy(policyWrapper.odrl().policy());
        PolicyEntity policy = new PolicyEntity();
        policy.setPolicyId(id);
        policy.setRego(rego);
        policy.setOdrl(odrl);
        return policy;
    }

    public PolicyWrapper map(PolicyEntity policyEntity) {
        return new PolicyWrapper(
                new OdrlPolicy(policyEntity.getOdrl().getPolicy()),
                new RegoPolicy(policyEntity.getRego().getPolicy()));
    }
}
