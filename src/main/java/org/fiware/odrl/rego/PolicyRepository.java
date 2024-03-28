package org.fiware.odrl.rego;

import com.google.common.collect.ImmutableMap;
import io.quarkus.scheduler.Scheduled;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.ws.rs.WebApplicationException;
import lombok.extern.slf4j.Slf4j;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.StringJoiner;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Slf4j
@ApplicationScoped
public class PolicyRepository {

    @Inject
    private OpaBackedPolicyService policyService;

    private final Map<String, String> policies = new HashMap<>();

    public String generatePolicyId() {
        int leftLimit = 97; // letter 'a'
        int rightLimit = 122; // letter 'z'
        int targetStringLength = 10;
        Random random = new Random();

        String generatedString = random.ints(leftLimit, rightLimit + 1)
                .limit(targetStringLength)
                .collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append)
                .toString();
        if (policies.containsKey(generatedString)) {
            return generatePolicyId();
        }
        return generatedString;
    }


    public void addPolicy(String id, String policy) {
       // policyService.createPolicy(id, policy);
        policies.put(id, policy);

    }

    public Map<String, String> getPolicies() {
        return ImmutableMap.copyOf(policies);
    }
}
