package org.fiware.odrl.persistence;

import org.fiware.odrl.rego.PolicyWrapper;

import java.util.Map;
import java.util.Optional;
import java.util.Random;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
public interface PolicyRepository {

    Random RANDOM = new Random();

    default String generatePolicyId() {
        int leftLimit = 97; // letter 'a'
        int rightLimit = 122; // letter 'z'
        int targetStringLength = 10;
        return RANDOM.ints(leftLimit, rightLimit + 1)
                .limit(targetStringLength)
                .collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append)
                .toString();
    }

    String createPolicy(String id, String uid, Optional<ServiceEntity> service, PolicyWrapper policy);

    Optional<PolicyWrapper> getPolicy(String id);

    Optional<PolicyWrapper> getPolicyByUid(String uid);

    Map<String, PolicyWrapper> getPolicies();

    Map<String, PolicyWrapper> getPoliciesByServiceId(String serviceId);

    Map<String, PolicyWrapper> getPolicies(int page, int pageSize);

    Map<String, PolicyWrapper> getPoliciesByServiceId(String serviceId, int page, int pageSize);

    void deletePolicy(String id);

    void deletePolicyByUid(String uid);
}
