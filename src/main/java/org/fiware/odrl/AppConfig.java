package org.fiware.odrl;

import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.ws.rs.Produces;
import lombok.extern.slf4j.Slf4j;
import org.fiware.odrl.mapping.MappingConfiguration;

import java.io.IOException;
import java.io.InputStream;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Slf4j
@ApplicationScoped
public class AppConfig {

    private static final String DEFAULT_MAPPING_PATH = "mapping.json";

    @Inject
    private ObjectMapper objectMapper;

    @Inject
    private PathsConfiguration pathsConfiguration;

    @Produces
    @ApplicationScoped
    public MappingConfiguration mappingConfiguration() {
        MappingConfiguration mappingConfiguration = new MappingConfiguration();
        InputStream defaultMappingInputStream = this.getClass().getClassLoader().getResourceAsStream(DEFAULT_MAPPING_PATH);
        try {
            mappingConfiguration.putAll(objectMapper.readValue(defaultMappingInputStream, MappingConfiguration.class));
        } catch (IOException e) {
            throw new IllegalArgumentException("Was not able to read the default mapping.", e);
        }

        if (pathsConfiguration.mapping().isPresent() && pathsConfiguration.mapping().get().exists()) {
            try {
                mappingConfiguration.putAll(objectMapper.readValue(pathsConfiguration.mapping().get(), MappingConfiguration.class));
            } catch (IOException e) {
                log.warn("Was not able to load the additional mappings.", e);
            }
        }
        return mappingConfiguration;
    }
}
