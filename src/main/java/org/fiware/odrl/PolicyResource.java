package org.fiware.odrl;

import lombok.extern.slf4j.Slf4j;
import org.fiware.odrl.api.PolicyApi;
import org.fiware.odrl.model.Policy;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Slf4j
public class PolicyResource implements PolicyApi {

    @Override
    public void createPolicy(Policy policy) {
        log.info("Create policy");
    }

    @Override
    public Policy getPolicyById(String id) {
        log.info("Get policy");
        return null;
    }
}
