package org.fiware.odrl.persistence;

import com.google.common.collect.ImmutableMap;
import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import io.quarkus.hibernate.orm.panache.PanacheQuery;
import io.quarkus.panache.common.Page;
import io.quarkus.panache.common.Sort;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.transaction.Transactional;
import lombok.extern.slf4j.Slf4j;
import org.fiware.odrl.mapping.EntityMapper;
import org.fiware.odrl.rego.PolicyWrapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Slf4j
@ApplicationScoped
public class PersistentPolicyRepository implements PolicyRepository {

    private static final String DEFAULT_SORT = "id";

    @Inject
    private EntityMapper entityMapper;


    @Override
    @Transactional
    public String createPolicy(String id, String uid, Optional<ServiceEntity> service, PolicyWrapper policy) {
        if (PolicyEntity.findByPolicyId(id).isPresent()) {
            throw new IllegalArgumentException(String.format("Policy with id %s already exists.", id));
        }
        if (PolicyEntity.findByPolicyUid(uid).isPresent()) {
            throw new IllegalArgumentException(String.format("Policy with uid %s already exists.", uid));
        }


        entityMapper.map(id, uid, service, policy).persist();
        return id;
    }

    @Override
    public Optional<PolicyWrapper> getPolicy(String id) {
        return PolicyEntity.findByPolicyId(id).map(PolicyEntity.class::cast).map(entityMapper::map);
    }

    @Override
    public Optional<PolicyWrapper> getPolicyByUid(String uid) {
        return PolicyEntity.findByPolicyUid(uid).map(PolicyEntity.class::cast).map(entityMapper::map);
    }

    private String getUniqueId() {
        String generatedId = PolicyRepository.generatePolicyId();
        if (getPolicy(generatedId).isPresent()) {
            return getUniqueId();
        }
        return generatedId;
    }

    public List<PolicyWrapper> getPolicies() {

        List<PolicyEntity> policyEntityList = PolicyEntity.list("serviceEntity is null");
        return policyEntityList.stream().map(entityMapper::map).toList();
    }

    public List<PolicyWrapper> getPoliciesByServiceId(String serviceId) {

        List<PolicyEntity> policyEntityList = PolicyEntity.list("serviceEntity.serviceId = ?1", serviceId);
        return policyEntityList.stream().map(entityMapper::map).toList();
    }

    public List<PolicyWrapper> getPolicies(int page, int pageSize) {
        PanacheQuery<PolicyEntity> policyEntities = PolicyEntity.find("serviceEntity is null", Sort.ascending(DEFAULT_SORT));
        List<PolicyEntity> policyEntityList = policyEntities.page(Page.of(page, pageSize)).list();

        return policyEntityList.stream().map(entityMapper::map).toList();
    }

    public List<PolicyWrapper> getPoliciesByServiceId(String serviceId, int page, int pageSize) {
        PanacheQuery<PolicyEntity> policyEntities = PolicyEntity.find("serviceEntity.serviceId = ?1", Sort.ascending(DEFAULT_SORT), serviceId);
        List<PolicyEntity> policyEntityList = policyEntities.page(Page.of(page, pageSize)).list();

        return policyEntityList.stream().map(entityMapper::map).toList();
    }

    @Override
    @Transactional
    public void deletePolicy(String id) {
        log.debug("Try to delete {}", id);
        PolicyEntity.findByPolicyId(id)
                .ifPresent(PanacheEntityBase::delete);
    }

    @Override
    @Transactional
    public void deletePolicyByUid(String uid) {
        log.debug("Try to delete {}", uid);
        PolicyEntity.findByPolicyUid(uid)
                .ifPresent(PanacheEntityBase::delete);
    }
}
