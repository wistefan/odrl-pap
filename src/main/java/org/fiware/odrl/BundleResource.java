package org.fiware.odrl;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import io.quarkus.runtime.StartupEvent;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.enterprise.event.Observes;
import jakarta.inject.Inject;
import jakarta.ws.rs.core.Response;
import jakarta.ws.rs.core.StreamingOutput;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.compress.archivers.tar.TarArchiveEntry;
import org.apache.commons.compress.archivers.tar.TarArchiveOutputStream;
import org.apache.http.HttpStatus;
import org.fiware.odrl.mapping.EntityMapper;
import org.fiware.odrl.persistence.PolicyRepository;
import org.fiware.odrl.persistence.ServiceEntity;
import org.fiware.odrl.persistence.ServiceRepository;
import org.fiware.odrl.rego.Manifest;
import org.fiware.odrl.rego.PolicyWrapper;
import org.openapi.quarkus.bundle_yaml.api.DefaultApi;

import java.io.*;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.*;
import java.util.stream.Collectors;
import java.util.zip.GZIPOutputStream;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
@Slf4j
@ApplicationScoped
public class BundleResource implements DefaultApi {

    private static final String REGO_RESOURCES_FILE = "rego-resources.txt";
    private static final String UTILS_PATH = "rego/utils";
    private static final String UTILS_FILE_TEMPLATE = UTILS_PATH + "/%s.rego";
    @Inject
    private PolicyRepository policyRepository;

    @Inject
    private ServiceRepository serviceRepository;

    @Inject
    private ObjectMapper objectMapper;

    @Inject
    private PathsConfiguration pathsConfiguration;

    @Inject
    private GeneralConfig generalConfig;

    @Inject
    private EntityMapper entityMapper;

    private Map<String, String> methods = new HashMap<>();

    public void initMethods(@Observes StartupEvent event) throws IOException {
        log.warn("Startup bundle resource!");
        for (String file : getRegoResourceFiles()) {
            if (file.startsWith(UTILS_PATH) && !file.equals(String.format(UTILS_FILE_TEMPLATE, generalConfig.pep().getValue()))) {
                continue;
            }
            addRegoMethodFromResource(file);
        }
        if (pathsConfiguration.rego().isPresent() && pathsConfiguration.rego().get().exists()) {
            for (String file : getFiles(Paths.get(pathsConfiguration.rego().get().getAbsolutePath()))) {
                addRegoMethodFromFile(file);
            }
        }
    }

    private Map<String, String> serviceToPolicyMap(ServiceEntity serviceEntity) {
        var policyEntities = serviceEntity.getPolicies().stream().map(entityMapper::map).toList();
        var toZip = policyEntities
                .stream()
                .collect(Collectors.toMap(e -> String.format("%s.%s", serviceEntity.getPackageName(), e.regoId()), e -> e.rego().policy(), (e1, e2) -> e1));
        toZip.put(String.format("%s.main", serviceEntity.getPackageName()), getMainPolicy(serviceEntity.getPackageName(), policyEntities));
        return toZip;
    }

    public Response getPolicies() {
        List<PolicyWrapper> policies = policyRepository.getPolicies();
        String mainPolicy = getMainPolicy("policy", policies);


        var toZip = policies.stream()
                .collect(Collectors.toMap(e -> String.format("policy.%s", e.regoId()), e -> e.rego().policy(), (e1, e2) -> e1));
        toZip.put("policy.main", mainPolicy);

        var services = ImmutableList.copyOf(serviceRepository.getServices());
        services.stream()
                .map(this::serviceToPolicyMap)
                .forEach(toZip::putAll);
        try {
            return Response.ok(zipMap(toZip, "rego", objectMapper.writeValueAsString(getManifest(toZip)))).build();
        } catch (JsonProcessingException e) {
            log.warn("Was not able to provide policies bundle.", e);
            return Response.status(HttpStatus.SC_INTERNAL_SERVER_ERROR).build();
        }
    }

    public Response getMethods() {
        try {
            return Response.ok(zipMap(ImmutableMap.copyOf(methods), "rego", objectMapper.writeValueAsString(getManifest(methods)))).build();
        } catch (JsonProcessingException e) {
            log.warn("Was not able to provide methods bundle.", e);
            return Response.status(HttpStatus.SC_INTERNAL_SERVER_ERROR).build();
        }
    }

    private StreamingOutput zipMap(Map<String, String> theMap, String type, String manifest) {
        return outputStream -> {

            var gzOut = new TarArchiveOutputStream(
                    new GZIPOutputStream(
                            new BufferedOutputStream(outputStream)));
            for (var policyEntry : theMap.entrySet()) {
                addPolicyArchive(gzOut, policyEntry.getKey(), policyEntry.getValue(), type);
            }
            addContentAddPath(gzOut, ".manifest", manifest);
            gzOut.close();
        };
    }

    public Response getData() {
        Map<String, Object> theData = Map.of("data", Map.of("organizationDid", generalConfig.organizationDid()));

        Manifest manifest = new Manifest().setRoots(List.of("data"));
        try {
            return Response.ok(zipMap(ImmutableMap.of("data", objectMapper.writeValueAsString(theData)), "json", objectMapper.writeValueAsString(manifest))).build();
        } catch (JsonProcessingException e) {
            log.warn("Was not able to provide data bundle.", e);
            return Response.status(HttpStatus.SC_INTERNAL_SERVER_ERROR).build();
        }
    }

    private void addPolicyArchive(TarArchiveOutputStream archiveOutputStream, String policyId, String policy, String type) throws IOException {
        List<String> packageParts = Arrays.asList(policyId.split("\\."));
        StringJoiner pathJoiner = new StringJoiner("/");
        packageParts.forEach(pathJoiner::add);
        addContentAddPath(archiveOutputStream, String.format("%s.%s", pathJoiner, type), policy);
    }

    private void addContentAddPath(TarArchiveOutputStream archiveOutputStream, String path, String content) throws IOException {

        byte[] fileContent = content.getBytes();

        TarArchiveEntry tarArchiveEntry = new TarArchiveEntry(path);
        tarArchiveEntry.setSize(fileContent.length);
        archiveOutputStream.putArchiveEntry(tarArchiveEntry);
        archiveOutputStream.write(fileContent);
        archiveOutputStream.closeArchiveEntry();
    }


    private Set<String> getRegoResourceFiles() throws IOException {
        Set<String> filenames = new HashSet<>();

        try (
                InputStream in = getResourceAsStream(REGO_RESOURCES_FILE);
                BufferedReader br = new BufferedReader(new InputStreamReader(in))) {
            String resource;
            while ((resource = br.readLine()) != null) {
                filenames.add(resource);
            }
        }

        return filenames;
    }

    private InputStream getResourceAsStream(String resource) {
        final InputStream in
                = this.getClass().getClassLoader().getResourceAsStream(resource);
        return in == null ? this.getClass().getResourceAsStream(resource) : in;
    }


    private void addRegoMethodFromResource(String methodFile) throws IOException {
        InputStream inputStream = this.getClass().getClassLoader().getResourceAsStream(methodFile);
        addRegoMethod(inputStream);
    }

    private void addRegoMethodFromFile(String methodFile) throws IOException {
        InputStream inputStream = new FileInputStream(methodFile);
        addRegoMethod(inputStream);
    }

    private void addRegoMethod(InputStream inputStream) throws IOException {
        StringBuilder resultStringBuilder = new StringBuilder();
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

    private String getMainPolicy(String packageName, List<PolicyWrapper> policies) {

        StringJoiner regoJoiner = new StringJoiner(System.lineSeparator());
        regoJoiner.add(String.format("package %s.main", packageName));
        regoJoiner.add("");
        regoJoiner.add("import rego.v1");
        policies.stream().map(policy -> String.format("import data.%s.%s as %s", packageName, policy.regoId(), policy.regoId())).forEach(regoJoiner::add);
        regoJoiner.add("");
        regoJoiner.add("default allow := false");
        regoJoiner.add("");
        policies.stream().map(policy -> String.format("allow if %s.is_allowed", policy.regoId())).forEach(regoJoiner::add);
        return regoJoiner.toString();
    }

}
