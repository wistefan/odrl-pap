package org.fiware.odrl;

import com.google.common.collect.ImmutableMap;
import io.quarkus.test.common.DevServicesContext;
import io.quarkus.test.common.QuarkusTestResourceLifecycleManager;
import org.testcontainers.containers.GenericContainer;
import org.testcontainers.utility.MountableFile;

import java.util.Map;
import java.util.Optional;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
public class OpenPolicyAgentTestResource implements QuarkusTestResourceLifecycleManager, DevServicesContext.ContextAware {

    private Optional<String> containerNetworkId;
    private GenericContainer opaContainer;

    @Override
    public Map<String, String> start() {
        opaContainer = new GenericContainer("openpolicyagent/opa:0.62.1")
                .withCopyToContainer(MountableFile.forClasspathResource("opa.yaml"), "/opa.yaml")
                .withCommand("run", "--server", "-c", "/opa.yaml", "--addr", "localhost:8181")
                .withNetworkMode("host");
        containerNetworkId.ifPresent(opaContainer::withNetworkMode);
        opaContainer.start();
        return ImmutableMap.of("quarkus.rest-client.opa_yaml.url", String.format("http://%s:%s/", opaContainer.getHost(), 8181));
    }

    @Override
    public void stop() {
        opaContainer.stop();
    }

    @Override
    public void inject(TestInjector testInjector) {
        testInjector.injectIntoFields(opaContainer, new TestInjector.Annotated(InjectOpa.class));
    }

    @Override
    public void setIntegrationTestContext(DevServicesContext context) {
        containerNetworkId = context.containerNetworkId();
    }

}
