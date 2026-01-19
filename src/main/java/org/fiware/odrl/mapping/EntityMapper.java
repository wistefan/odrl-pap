package org.fiware.odrl.mapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import lombok.extern.slf4j.Slf4j;
import org.fiware.odrl.persistence.Policy;
import org.fiware.odrl.persistence.PolicyEntity;
import org.fiware.odrl.persistence.ServiceEntity;
import org.fiware.odrl.rego.OdrlPolicy;
import org.fiware.odrl.rego.PolicyWrapper;
import org.fiware.odrl.rego.RegoPolicy;

import java.util.Optional;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@ApplicationScoped
@Slf4j
public class EntityMapper {

    @Inject
    private ObjectMapper objectMapper;

    public PolicyEntity map(String id, String uid, Optional<ServiceEntity> service, PolicyWrapper policyWrapper) {
        Policy rego = new Policy();
        rego.setPolicy(policyWrapper.rego().policy());
        Policy odrl = new Policy();
        odrl.setPolicy(policyWrapper.odrl().policy());
        PolicyEntity policy = new PolicyEntity();
        policy.setPolicyId(id);
        policy.setUid(uid);
        policy.setRego(rego);
        policy.setOdrl(odrl);
        service.ifPresent(policy::setServiceEntity);
        return policy;
    }

    public PolicyWrapper map(PolicyEntity policyEntity) {
        return new PolicyWrapper(
                policyEntity.getPolicyId(),
                policyEntity.getUid(),
                Optional.ofNullable(policyEntity.getServiceEntity()).map(ServiceEntity::getServiceId),
                new OdrlPolicy(policyEntity.getOdrl().getPolicy()),
                new RegoPolicy(policyEntity.getRego().getPolicy()));
    }
}
