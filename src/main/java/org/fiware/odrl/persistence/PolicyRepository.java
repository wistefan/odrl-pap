package org.fiware.odrl.persistence;

import org.fiware.odrl.rego.PolicyWrapper;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Random;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
public interface PolicyRepository {

    Random RANDOM = new Random();

    static String generatePolicyId() {
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

    List<PolicyWrapper> getPolicies();

    List<PolicyWrapper> getPoliciesByServiceId(String serviceId);

    List<PolicyWrapper> getPolicies(int page, int pageSize);

    List<PolicyWrapper> getPoliciesByServiceId(String serviceId, int page, int pageSize);

    void deletePolicy(String id);

    void deletePolicyByUid(String uid);
}
