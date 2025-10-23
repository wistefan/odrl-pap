package org.fiware.odrl;

import jakarta.inject.Inject;
import jakarta.ws.rs.core.Response;
import lombok.extern.slf4j.Slf4j;
import org.apache.http.HttpStatus;
import org.checkerframework.checker.units.qual.A;
import org.fiware.odrl.api.MappingsApi;
import org.fiware.odrl.mapping.MappingConfiguration;
import org.fiware.odrl.mapping.NamespacedMap;
import org.fiware.odrl.mapping.OdrlAttribute;
import org.fiware.odrl.model.Mapping;
import org.fiware.odrl.model.Mappings;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Implementation of the mapping api to provide access to the currently supported mappings. Can be used for frontend-integration.
 */
@Slf4j
public class MappingsResource implements MappingsApi {

    @Inject
    private MappingConfiguration mappingConfiguration;

    @Override
    public Response getMappings() {
        return Response.ok(getMappingsFromConfig()).build();
    }

    private Mappings getMappingsFromConfig() {
        Mappings mappings = new Mappings();
        Arrays.stream(OdrlAttribute.values())
                .forEach(attribute -> {
                    List<Mapping> mappingList = toMappingList(mappingConfiguration.get(attribute));
                    switch (attribute) {
                        case LEFT_OPERAND -> mappings.leftOperands(mappingList);
                        case RIGHT_OPERAND -> mappings.rightOperands(mappingList);
                        case OPERATOR -> mappings.operators(mappingList);
                        case CONSTRAINT -> mappings.constraints(mappingList);
                        case OPERAND -> mappings.operands(mappingList);
                        case ASSIGNEE -> mappings.assignees(mappingList);
                        case ACTION -> mappings.actions(mappingList);
                        case TARGET -> mappings.targets(mappingList);
                    }

                });
        return mappings;
    }

    private List<Mapping> toMappingList(NamespacedMap namespacedMap) {
        List<Mapping> mappings = new ArrayList<>();
        namespacedMap.forEach((namespace, value) -> value.entrySet()
                .stream()
                .map(regoMapEntry -> new Mapping()
                        .description(regoMapEntry.getValue().description())
                        .name(String.format("%s:%s", namespace, regoMapEntry.getKey())))
                .forEach(mappings::add));
        return mappings;
    }
}
