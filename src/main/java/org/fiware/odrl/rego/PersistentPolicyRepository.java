package org.fiware.odrl.rego;

import com.google.common.collect.ImmutableMap;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.transaction.Transactional;
import lombok.extern.slf4j.Slf4j;
import org.fiware.odrl.mapping.EntityMapper;
import org.fiware.odrl.persistence.PolicyEntity;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Slf4j
@ApplicationScoped
public class PersistentPolicyRepository implements PolicyRepository {

    @Inject
    private EntityMapper entityMapper;


    @Override
    @Transactional
    public String createPolicy(String id, PolicyWrapper policy) {
        if (PolicyEntity.findByPolicyId(id).isPresent()) {
            throw new IllegalArgumentException(String.format("Policy with id %s already exists.", id));
        }
        entityMapper.map(id, policy).persist();
        return id;
    }

    @Override
    @Transactional
    public String createPolicy(PolicyWrapper policy) {
        String policyId = getUniqueId();
        return createPolicy(policyId, policy);
    }

    @Override
    public Optional<PolicyWrapper> getPolicy(String id) {
        return PolicyEntity.findByPolicyId(id).map(PolicyEntity.class::cast).map(entityMapper::map);
    }

    private String getUniqueId() {
        String generatedId = generatePolicyId();
        if (getPolicy(generatedId).isPresent()) {
            return getUniqueId();
        }
        return generatedId;
    }

    @Transactional
    public Map<String, PolicyWrapper> getPolicies() {
        Map<String, PolicyWrapper> policies = new HashMap<>();

        List<PolicyEntity> policyEntityList = PolicyEntity.listAll();
        policyEntityList.forEach(e -> policies.put(e.getPolicyId(), entityMapper.map(e)));

        return ImmutableMap.copyOf(policies);
    }

    @Override
    public void deletePolicy(String id) {
        PolicyEntity.findByPolicyId(id).map(policyEntity -> policyEntity.id).ifPresent(PolicyEntity::deleteById);
    }
}
