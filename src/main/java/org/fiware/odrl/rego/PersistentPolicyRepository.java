package org.fiware.odrl.rego;

import com.google.common.collect.ImmutableMap;
import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import io.quarkus.hibernate.orm.panache.PanacheQuery;
import io.quarkus.panache.common.Page;
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
import java.util.stream.Collectors;

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
	public String createPolicy(String id, String uid, PolicyWrapper policy) {
		if (PolicyEntity.findByPolicyId(id).isPresent()) {
			throw new IllegalArgumentException(String.format("Policy with id %s already exists.", id));
		}
		if (PolicyEntity.findByPolicyUid(uid).isPresent()) {
			throw new IllegalArgumentException(String.format("Policy with uid %s already exists.", uid));
		}
		entityMapper.map(id, uid, policy).persist();
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
		String generatedId = generatePolicyId();
		if (getPolicy(generatedId).isPresent()) {
			return getUniqueId();
		}
		return generatedId;
	}

	public Map<String, PolicyWrapper> getPolicies() {
		Map<String, PolicyWrapper> policies = new HashMap<>();

		List<PolicyEntity> policyEntityList = PolicyEntity.listAll();
		policyEntityList.forEach(e -> policies.put(e.getPolicyId(), entityMapper.map(e)));

		return ImmutableMap.copyOf(policies);
	}

	public Map<String, PolicyWrapper> getPolicies(int page, int pageSize) {
		PanacheQuery<PolicyEntity> policyEntities = PolicyEntity.findAll();
		List<PolicyEntity> policyEntityList = policyEntities.page(Page.of(page, pageSize)).list();

		return policyEntityList.stream().collect(Collectors.toMap(PolicyEntity::getPolicyId, e -> entityMapper.map(e), (e1, e2) -> e1));
	}

	@Override
	@Transactional
	public void deletePolicy(String id) {
		log.warn("Try to delete {}", id);
		PolicyEntity.findByPolicyId(id)
				.ifPresent(PanacheEntityBase::delete);
	}

	@Override
	@Transactional
	public void deletePolicyByUid(String uid) {
		log.warn("Try to delete {}", uid);
		PolicyEntity.findByPolicyUid(uid)
				.ifPresent(PanacheEntityBase::delete);
	}
}
