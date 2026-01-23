package org.fiware.odrl.resources;

import com.google.common.collect.ImmutableMap;
import io.quarkus.test.common.DevServicesContext;
import io.quarkus.test.common.QuarkusTestResourceLifecycleManager;
import lombok.extern.slf4j.Slf4j;
import org.mockserver.client.MockServerClient;
import org.testcontainers.containers.GenericContainer;

import java.util.Map;
import java.util.Optional;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Slf4j
public class MockServerTestResource implements QuarkusTestResourceLifecycleManager {

    private GenericContainer mockServerContainer;
    private MockServerClient mockServerClient;

    @Override
    public Map<String, String> start() {
        mockServerContainer = new GenericContainer("quay.io/wi_stefan/mockserver:5.15.0")
                .withEnv("MOCKSERVER_SERVER_PORT", "1080")
                .withNetworkMode("host");
        mockServerContainer.start();
        mockServerClient = new MockServerClient(mockServerContainer.getHost(), 1080);
        return Map.of();
    }

    @Override
    public void stop() {
        log.info(mockServerContainer.getLogs());
        mockServerContainer.stop();
    }

    @Override
    public void inject(TestInjector testInjector) {
        testInjector.injectIntoFields(mockServerClient, new TestInjector.Annotated(InjectMockServerClient.class));
    }


}