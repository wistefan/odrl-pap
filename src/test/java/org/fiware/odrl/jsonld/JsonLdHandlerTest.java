package org.fiware.odrl.jsonld;


import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import io.quarkus.test.junit.QuarkusTest;
import jakarta.inject.Inject;
import jakarta.ws.rs.ext.ReaderInterceptorContext;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;
import org.mockito.ArgumentCaptor;

import java.io.*;
import java.util.Map;
import java.util.stream.Stream;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;

@QuarkusTest
public class JsonLdHandlerTest {

    @Inject
    private JsonLdHandler jsonLdHandler;

    @Inject
    private ObjectMapper objectMapper;


    @ParameterizedTest
    @MethodSource("getJsonPairs")
    public void testCompaction(String policy, String expectedPolicyPath) throws Exception {
        ReaderInterceptorContext crc = mock(ReaderInterceptorContext.class);
        InputStream policyStream = this.getClass().getResourceAsStream(policy);
        String compactedPolicyString = jsonLdHandler.handleJsonLd(policyStream);
        InputStream expectedPolicyStream = this.getClass().getResourceAsStream(expectedPolicyPath);

        Map<String, Object> expectedPolicy = objectMapper.readValue(expectedPolicyStream, new TypeReference<Map<String, Object>>() {
        });
        Map<String, Object> compactedPolicy = objectMapper.readValue(compactedPolicyString, new TypeReference<Map<String, Object>>() {
        });
        assertEquals(expectedPolicy, compactedPolicy, "The policy should have been compacted properly.");
    }

    public static Stream<Arguments> getJsonPairs() {
        return Stream.of(
                Arguments.of("/examples/edc/edc.json", "/examples/edc/compacted-edc.json"),
                Arguments.of("/examples/ngsi-ld/types/expanded-types.json", "/examples/ngsi-ld/types/types.json"),
                Arguments.of("/examples/dome/1001/_1001-original.json", "/examples/dome/1001/_1001.json"),
                Arguments.of("/examples/dome/1001-2/_1001-2-expanded.json", "/examples/dome/1001-2/_1001-2.json"),
                Arguments.of("/examples/dome/1002/_1002-original.json", "/examples/dome/1002/_1002.json"),
                Arguments.of("/examples/dome/1003/_1003-original.json", "/examples/dome/1003/_1003.json"),
                Arguments.of("/examples/dome/1004/1004-original.json", "/examples/dome/1004/1004.json"),
                Arguments.of("/examples/dome/1005/_1005-original.json", "/examples/dome/1005/_1005.json"),
                Arguments.of("/examples/dome/2001/_2001-original.json", "/examples/dome/2001/_2001.json"),
                Arguments.of("/examples/dome/2001-2/_2001-2-original.json", "/examples/dome/2001-2/_2001-2.json"),
                Arguments.of("/examples/dome/2001-3/_2001-3-original.json", "/examples/dome/2001-3/_2001-3.json"),
                Arguments.of("/examples/dome/2002/_2002-original.json", "/examples/dome/2002/_2002.json"),
                Arguments.of("/examples/dome/2003/_2003-original.json", "/examples/dome/2003/_2003.json"),
                Arguments.of("/examples/dome/6600/_6600-original.json", "/examples/dome/6600/_6600.json"),
                Arguments.of("/examples/dome/6700/_6700-original.json", "/examples/dome/6700/_6700.json"),
                Arguments.of("/examples/dome/6800/_6800-original.json", "/examples/dome/6800/_6800.json"),
                Arguments.of("/examples/gaia-x/ovc-constraint-original.json", "/examples/gaia-x/ovc-constraint.json"),
                Arguments.of("/examples/odrl/3000/_3000-original.json", "/examples/odrl/3000/_3000.json")
        );
    }

}
