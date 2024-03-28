package org.fiware.odrl.rego;

import io.quarkus.runtime.StartupEvent;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.enterprise.event.Observes;
import jakarta.inject.Inject;
import jakarta.ws.rs.WebApplicationException;
import lombok.extern.slf4j.Slf4j;
import org.eclipse.microprofile.rest.client.inject.RestClient;
import org.fiware.odrl.Configuration;
import org.openapi.quarkus.opa_yaml.api.PolicyApiApi;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashSet;
import java.util.Set;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@ApplicationScoped
@Slf4j
public class OpaBackedPolicyService implements RegoPolicyService {


    @RestClient
    public PolicyApiApi opaPolicyApi;


    @Override
    public void createPolicy(String packageName, String policy) {
        try {
            opaPolicyApi.putPolicyModule(packageName, policy, true, true);
        } catch (WebApplicationException e) {
            log.warn("Failed to create {}", policy);
            log.info("Status: {} - Message: {}", e.getResponse().getStatus(), e.getResponse().getEntity());
            throw e;
        }
    }
}
