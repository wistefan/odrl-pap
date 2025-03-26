package org.fiware.odrl.resources;

import com.google.common.collect.ImmutableMap;
import io.quarkus.test.common.DevServicesContext;
import io.quarkus.test.common.QuarkusTestResourceLifecycleManager;
import lombok.extern.slf4j.Slf4j;
import org.testcontainers.containers.GenericContainer;
import org.testcontainers.utility.MountableFile;

import java.util.Map;
import java.util.Optional;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Slf4j
public class OpenPolicyAgentTestResource implements QuarkusTestResourceLifecycleManager {

    private Optional<String> containerNetworkId;
    private GenericContainer opaContainer;

    @Override
    public Map<String, String> start() {
        opaContainer = new GenericContainer("openpolicyagent/opa:1.2.0")
                .withReuse(false)
                .withCopyToContainer(MountableFile.forClasspathResource("opa.yaml"), "/opa.yaml")
                .withCommand("run", "--server", "-l", "debug", "-c", "/opa.yaml", "--addr", "localhost:8181")
                .withNetworkMode("host");
        opaContainer.start();
        return ImmutableMap.of("quarkus.rest-client.opa_yaml.url", String.format("http://%s:%s/", opaContainer.getHost(), 8181));
    }

    @Override
    public void stop() {
        log.info(opaContainer.getLogs());
        opaContainer.stop();
    }

    @Override
    public void inject(TestInjector testInjector) {
        testInjector.injectIntoFields(opaContainer, new TestInjector.Annotated(InjectOpa.class));
    }

}
