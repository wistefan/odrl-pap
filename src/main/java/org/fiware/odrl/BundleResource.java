package org.fiware.odrl;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.common.collect.ImmutableMap;
import io.quarkus.runtime.Startup;
import io.quarkus.runtime.StartupEvent;
import jakarta.enterprise.event.Observes;
import jakarta.inject.Inject;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.WebApplicationException;
import jakarta.ws.rs.core.Response;
import jakarta.ws.rs.core.StreamingOutput;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.compress.archivers.tar.TarArchiveEntry;
import org.apache.commons.compress.archivers.tar.TarArchiveOutputStream;
import org.fiware.odrl.rego.Manifest;
import org.fiware.odrl.rego.PolicyRepository;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.StringJoiner;
import java.util.stream.Collectors;
import java.util.zip.GZIPOutputStream;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Slf4j
@Path("/bundles/service/v1")
public class BundleResource {

    @Inject
    private PolicyRepository policyRepository;

    @Inject
    private ObjectMapper objectMapper;

    @Inject
    private Configuration configuration;

    private Map<String, String> methods = new HashMap<>();

    public void initMethods(@Observes StartupEvent event) throws IOException {
        java.nio.file.Path folderPath = Paths.get(configuration.rego().getAbsolutePath());
        Set<String> fileSet = getFiles(folderPath);

        for (String file : fileSet) {
            addRegoMethodFromFile(file);
        }
    }

    @GET
    @Path("/policies.tar.gz")
    @Produces("application/octect-stream")
    public Response getBundle() {
        var policies = ImmutableMap.copyOf(policyRepository.getPolicies());
        String mainPolicy = getMainPolicy(policies);


        var toZip = policies.entrySet().stream()
                .collect(Collectors.toMap(e -> String.format("policy.%s", e.getKey()), Map.Entry::getValue, (e1, e2) -> e1));
        toZip.put("policy.main", mainPolicy);
        return Response.ok(zipMap(toZip)).build();
    }

    @GET
    @Path("/methods.tar.gz")
    @Produces("application/octect-stream")
    public Response getMethods() {
        return Response.ok(zipMap(ImmutableMap.copyOf(methods))).build();
    }

    private StreamingOutput zipMap(Map<String, String> theMap) {
        return (StreamingOutput) outputStream -> {

            var gzOut = new TarArchiveOutputStream(
                    new GZIPOutputStream(
                            new BufferedOutputStream(outputStream)));
            for (var policyEntry : theMap.entrySet()) {
                addPolicyArchive(gzOut, policyEntry.getKey(), policyEntry.getValue());
            }
            addContentAddPath(gzOut, ".manifest", objectMapper.writeValueAsString(getManifest(theMap)));
            gzOut.close();
        };
    }

    private void addPolicyArchive(TarArchiveOutputStream archiveOutputStream, String policyId, String policy) throws IOException {
        List<String> packageParts = Arrays.asList(policyId.split("\\."));
        StringJoiner pathJoiner = new StringJoiner("/");
        packageParts.forEach(pathJoiner::add);
        addContentAddPath(archiveOutputStream, String.format("%s.rego", pathJoiner), policy);
    }

    private void addContentAddPath(TarArchiveOutputStream archiveOutputStream, String path, String content) throws IOException {

        byte fileContent[] = content.getBytes();

        TarArchiveEntry tarArchiveEntry = new TarArchiveEntry(path);
        tarArchiveEntry.setSize(fileContent.length);
        archiveOutputStream.putArchiveEntry(tarArchiveEntry);
        archiveOutputStream.write(fileContent);
        archiveOutputStream.closeArchiveEntry();
    }


    private void addRegoMethodFromFile(String methodFile) throws IOException {
        StringBuilder resultStringBuilder = new StringBuilder();
        InputStream inputStream = new FileInputStream(methodFile);
        String packageLine = "";
        try (BufferedReader br
                     = new BufferedReader(new InputStreamReader(inputStream))) {
            String line;
            while ((line = br.readLine()) != null) {
                if (line.contains("package")) {
                    packageLine = line;
                }
                resultStringBuilder.append(line).append("\n");
            }
        }
        String policyName = packageLine.replace("package ", "");
        methods.put(policyName, resultStringBuilder.toString());
    }

    private Set<String> getFiles(java.nio.file.Path folderPath) throws IOException {

        Set<String> fileSet = new HashSet<>();
        try (DirectoryStream<java.nio.file.Path> stream = Files.newDirectoryStream(folderPath)) {
            for (java.nio.file.Path path : stream) {
                if (!Files.isDirectory(path)) {
                    fileSet.add(path.getParent().toString() + "/" + path.getFileName()
                            .toString());
                } else {
                    fileSet.addAll(getFiles(path));
                }
            }
        }
        return fileSet;
    }

    private Manifest getManifest(Map<String, String> regoMap) {
        Set<String> rootPaths = regoMap.keySet().stream()
                .map(k -> k.split("\\."))
                .map(Arrays::asList)
                .map(ArrayList::new)
                .map(parts -> {
                    if (parts.size() > 1) {
                        List<String> pathList = parts.subList(0, parts.size() - 1);
                        StringJoiner joiner = new StringJoiner("/");
                        pathList.forEach(joiner::add);
                        return joiner.toString();
                    } else {
                        return null;
                    }
                })
                .filter(Objects::nonNull)
                .collect(Collectors.toSet());

        return new Manifest().setRoots(List.copyOf(rootPaths));
    }

    private String getMainPolicy(Map<String, String> policies) {

        StringJoiner regoJoiner = new StringJoiner(System.getProperty("line.separator"));
        regoJoiner.add("package policy.main");
        regoJoiner.add("");
        regoJoiner.add("import rego.v1");
        policies.keySet().stream().map(policy -> String.format("import data.policy.%s as %s", policy, policy)).forEach(regoJoiner::add);
        regoJoiner.add("");
        regoJoiner.add("default allow := false");
        regoJoiner.add("");
        policies.keySet().stream().map(policy -> String.format("allow if %s.is_allowed", policy)).forEach(regoJoiner::add);

        return regoJoiner.toString();
    }

}
