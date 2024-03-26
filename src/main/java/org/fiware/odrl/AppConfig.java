package org.fiware.odrl;

import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.ws.rs.Produces;
import org.fiware.odrl.mapping.MappingConfiguration;

import java.io.IOException;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@ApplicationScoped
public class AppConfig {

    @Inject
    private ObjectMapper objectMapper;

    @Inject
    private Configuration configuration;

    @Produces
    @ApplicationScoped
    public MappingConfiguration mappingConfiguration() {
        try {
            return objectMapper.readValue(configuration.path(), MappingConfiguration.class);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
