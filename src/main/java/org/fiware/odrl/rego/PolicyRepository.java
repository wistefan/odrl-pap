package org.fiware.odrl.rego;

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

    String createPolicy(String id, PolicyWrapper policy);

    String createPolicy(PolicyWrapper policy);

    Optional<PolicyWrapper> getPolicy(String id);

    Map<String, PolicyWrapper> getPolicies();
    Map<String, PolicyWrapper> getPolicies(int page, int pageSize);

    void deletePolicy(String id);
}
