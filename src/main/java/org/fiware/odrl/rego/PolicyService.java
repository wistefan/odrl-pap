package org.fiware.odrl.rego;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import org.eclipse.microprofile.rest.client.inject.RestClient;
import org.fiware.odrl.model.Policy;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@ApplicationScoped
public class PolicyService {


    public void createRegoPolicy(Policy policy) {
    }

}
