package org.fiware.odrl;

import com.apicatalog.jsonld.JsonLdError;
import com.apicatalog.jsonld.document.JsonDocument;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.ws.rs.Produces;
import lombok.extern.slf4j.Slf4j;
import org.fiware.odrl.jsonld.CompactionContext;
import org.fiware.odrl.mapping.*;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Slf4j
@ApplicationScoped
public class AppConfig {

    private static final String DEFAULT_MAPPING_PATH = "mapping.json";
    private static final String DEFAULT_COMPACTION_CONTEXT_PATH = "compaction-context.jsonld";

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

    @Produces
    @ApplicationScoped
    public CompactionContext compactionContext() {
        if (pathsConfiguration.compactionContext().isPresent() && pathsConfiguration.compactionContext().get().exists()) {
            try {
                FileInputStream fileInputStream = new FileInputStream(pathsConfiguration.compactionContext().get());
                return new CompactionContext(JsonDocument.of(fileInputStream));
            } catch (FileNotFoundException e) {
                throw new IllegalArgumentException(String.format("Was not able to find compaction context at %s", pathsConfiguration.compactionContext().get().getAbsolutePath()), e);
            } catch (JsonLdError e) {
                throw new IllegalArgumentException(String.format("Was not able to read the compaction context at %s", pathsConfiguration.compactionContext().get().getAbsolutePath()), e);
            }
        }
        try {
            InputStream defaultCompactionContextInputStream = this.getClass().getClassLoader().getResourceAsStream(DEFAULT_COMPACTION_CONTEXT_PATH);
            return new CompactionContext(JsonDocument.of(defaultCompactionContextInputStream));
        } catch (JsonLdError e) {
            throw new IllegalArgumentException("Was not able to read the default compaction context", e);
        }
    }


    @Produces
    @ApplicationScoped
    public ConstraintMapper constraintMapper(ObjectMapper objectMapper, MappingConfiguration mappingConfiguration) {
        return new ConstraintMapper(objectMapper, mappingConfiguration);
    }

    @Produces
    @ApplicationScoped
    public LeftOperandMapper leftOperandMapper(ObjectMapper objectMapper, MappingConfiguration mappingConfiguration) {
        return new LeftOperandMapper(objectMapper, mappingConfiguration);
    }

    @Produces
    @ApplicationScoped
    public OperatorMapper operatorMapper(ObjectMapper objectMapper, MappingConfiguration mappingConfiguration) {
        return new OperatorMapper(objectMapper, mappingConfiguration);
    }

    @Produces
    @ApplicationScoped
    public RightOperandMapper rightOperandMapper(ObjectMapper objectMapper, MappingConfiguration mappingConfiguration) {
        return new RightOperandMapper(objectMapper, mappingConfiguration);
    }
}
