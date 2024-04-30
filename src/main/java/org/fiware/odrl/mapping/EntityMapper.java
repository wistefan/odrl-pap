package org.fiware.odrl.mapping;

import jakarta.enterprise.context.ApplicationScoped;
import org.fiware.odrl.persistence.PolicyEntity;
import org.fiware.odrl.rego.OdrlPolicy;
import org.fiware.odrl.rego.PolicyWrapper;
import org.fiware.odrl.rego.RegoPolicy;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@ApplicationScoped
public class EntityMapper {

    public PolicyEntity map(String id, PolicyWrapper policyWrapper) {
        PolicyEntity policy = new PolicyEntity();
        policy.setPolicyId(id);
        policy.setRego(policyWrapper.rego().policy());
        policy.setOdrl(policyWrapper.odrl().policy());
        return policy;
    }

    public PolicyWrapper map(PolicyEntity policyEntity) {
        return new PolicyWrapper(new OdrlPolicy(policyEntity.getOdrl()), new RegoPolicy(policyEntity.getRego()));
    }
}
