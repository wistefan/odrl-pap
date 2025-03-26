package org.fiware.odrl;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.fiware.odrl.model.*;
import org.junit.jupiter.params.provider.Arguments;
import org.keycloak.common.util.KeyUtils;
import org.keycloak.crypto.AsymmetricSignatureSignerContext;
import org.keycloak.crypto.KeyUse;
import org.keycloak.crypto.KeyWrapper;
import org.keycloak.crypto.SignatureSignerContext;
import org.keycloak.jose.jws.JWSBuilder;
import org.keycloak.protocol.oid4vc.model.CredentialSubject;
import org.keycloak.protocol.oid4vc.model.VerifiableCredential;
import org.keycloak.representations.JsonWebToken;
import org.mockserver.client.MockServerClient;
import org.mockserver.model.JsonBody;
import org.testcontainers.shaded.org.checkerframework.checker.units.qual.C;

import javax.swing.text.html.Option;
import java.net.URI;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;
import java.util.stream.Stream;

import static org.mockserver.model.HttpRequest.request;
import static org.mockserver.model.HttpResponse.response;

/**
 * @author <a href="https://github.com/wistefan">Stefan Wiedemann</a>
 */
public abstract class OdrlTest {

	private static final ObjectMapper OBJECT_MAPPER = new ObjectMapper();


	public void mockEntity(MockServerClient mockServerClient, MockEntity mockEntity) {

		Map<String, Object> theOffering = Map.of("id", mockEntity.id(), "relatedParty",
				mockEntity.relatedParty());
		mockServerClient
				.when(
						request()
								.withPath(String.format("/productOffering/%s", mockEntity.id()))
								.withMethod("GET"))
				.respond(httpRequest ->
						response().withStatusCode(200)
								.withHeader("Content-Type", "application/json")
								.withBody(JsonBody.json(theOffering))

				);
	}

	public static Stream<Arguments> validCombinations() {
		return Stream.of(
				Arguments.of(
						List.of("/examples/gaia-x/ovc-constraint.json"),
						getRequest("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2",
								"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6",
								"GET",
								getGaiaXCredentialJWT("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2", "gx:LegalParticipant")),
						new MockEntity().id("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2").relatedParty(List.of(new RelatedParty()))),
				Arguments.of(
						List.of("/examples/ngsi-ld/types/types.json"),
						getRequest("urn:ngsi-ld:participant:1",
								"/ngsi-ld/v1/entities/urn:ngsi-ld:Marketplace:test",
								"GET"),
						new MockEntity().id("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2").relatedParty(List.of(new RelatedParty()))),
				Arguments.of(
						List.of("/examples/dome/1000/_1000.json"),
						getRequest("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2",
								"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6",
								"GET"),
						new MockEntity().id("urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6")
								.relatedParty(List.of(new RelatedParty().role("Owner").id("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2")))),
				Arguments.of(
						List.of("/examples/dome/1000/_1000.json"),
						getRequest("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2",
								"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6",
								"PUT"),
						new MockEntity().id("urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6")
								.relatedParty(List.of(new RelatedParty().role("Owner").id("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2")))),
				Arguments.of(
						List.of("/examples/dome/1000/_1000.json"),
						getRequest("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2",
								"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6",
								"PATCH"),
						new MockEntity().id("urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6")
								.relatedParty(List.of(new RelatedParty().role("Owner").id("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2")))),
				Arguments.of(
						List.of("/examples/dome/1001/_1001.json"),
						getRequest("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2",
								"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6",
								"GET"),
						new MockEntity().id("urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6")
								.relatedParty(List.of(new RelatedParty().role("Owner").id("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2")))),
				Arguments.of(
						List.of("/examples/dome/1001/_1001.json"),
						getRequest("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2",
								"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6",
								"PUT"),
						new MockEntity().id("urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6")
								.relatedParty(List.of(new RelatedParty().role("Owner").id("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2")))),
				Arguments.of(
						List.of("/examples/dome/1001/_1001.json"),
						getRequest("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2",
								"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6",
								"PATCH"),
						new MockEntity().id("urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6")
								.relatedParty(List.of(new RelatedParty().role("Owner").id("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2")))),
				Arguments.of(
						List.of("/examples/dome/1002/_1002.json"),
						getRequest("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2",
								"/productOffering/urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6",
								"GET"),
						new MockEntity().id("urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6")
								.relatedParty(List.of(new RelatedParty().role("Owner").id("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2")))),
				Arguments.of(
						List.of("/examples/dome/1003/_1003.json"),
						getRequest("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2",
								"/urn:ngsi-ld:button:onboard",
								"GET"),
						new MockEntity().id("urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6")
								.relatedParty(List.of(new RelatedParty().role("Owner").id("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2")))),
				Arguments.of(
						List.of("/examples/dome/1003/_1003.json"),
						getRequest("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2",
								"/urn:ngsi-ld:button:onboard",
								"GET",
								List.of("onboarder"), Optional.empty()),
						new MockEntity().id("urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6")
								.relatedParty(List.of(new RelatedParty().role("Owner").id("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2")))),
				Arguments.of(
						List.of("/examples/dome/1003/_1003.json"),
						getRequest("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2",
								"/urn:ngsi-ld:button:onboard",
								"GET",
								List.of("onboarder"), Optional.empty()),
						new MockEntity().id("urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6")
								.relatedParty(List.of(new RelatedParty().role("Owner").id("urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2"))))
		);
	}

	public static Stream<Arguments> odrlPolicies() {
		return Stream.of(
				Arguments.of(List.of("/examples/dome/1000/_1000.json", "/examples/dome/1001/_1001.json", "/examples/dome/1001-2/_1001-2.json", "/examples/dome/1002/_1002.json")),
				Arguments.of(List.of("/examples/dome/1000/_1000.json", "/examples/dome/1001/_1001.json", "/examples/dome/2001/_2001.json", "/examples/dome/2001-2/_2001-2.json", "/examples/dome/1001-2/_1001-2.json", "/examples/dome/1002/_1002.json")),
				Arguments.of(List.of("/examples/dome/1000/_1000.json", "/examples/dome/1002/_1002.json", "/examples/dome/1005/_1005.json", "/examples/dome/1004/1004.json")),
				Arguments.of(List.of("/examples/dome/2001/_2001.json", "/examples/dome/1001/_1001.json", "/examples/dome/1001-2/_1001-2.json", "/examples/dome/1002/_1002.json"))
		);
	}

	public static Stream<Arguments> odrlPolicyPath() {
		return Stream.of(
				Arguments.of("/examples/gaia-x/ovc-constraint.json"),
				Arguments.of("/examples/ngsi-ld/types/types.json"),
				Arguments.of("/examples/dome/1000/_1000.json"),
				Arguments.of("/examples/dome/1001/_1001.json"),
				Arguments.of("/examples/dome/1001-2/_1001-2.json"),
				Arguments.of("/examples/dome/1002/_1002.json"),
				Arguments.of("/examples/dome/1003/_1003.json"),
				Arguments.of("/examples/dome/1004/1004.json"),
				Arguments.of("/examples/dome/1005/_1005.json"),
				Arguments.of("/examples/dome/2001/_2001.json"),
				Arguments.of("/examples/dome/2001-2/_2001-2.json"),
				Arguments.of("/examples/dome/2003/_2003.json")
		);
	}

	public static HttpRequest getRequest(String issuer, String path, String method, String jwt) {
		return getRequest(issuer, path, method, List.of(), Optional.of(jwt));
	}

	public static HttpRequest getRequest(String issuer, String path, String method) {
		return getRequest(issuer, path, method, List.of("reader", "onboarder"), Optional.empty());
	}

	public static HttpRequest getRequest(String issuer, String path, String method, List<String> roles, Optional<String> jwt) {
		Headers headers = new Headers();
		if (jwt.isPresent()) {
			headers.setAuthorization(jwt.get());
		} else {
			headers.setAuthorization(String.format("Bearer %s", getTestJwt(issuer, roles)));
		}
		HttpRequest http = new HttpRequest();
		http.setHeaders(headers);
		http.setId(UUID.randomUUID().toString());
		http.setMethod(method);
		http.setPath(path);
		// we set the host to the current application, in order to allow mocking of responses
		http.setHost("http://localhost:1080");
		return http;
	}

	public static String getGaiaXCredentialJWT(String organization, String credentialType) {
		CredentialSubject credentialSubject = new CredentialSubject();
		credentialSubject.setClaims("type", credentialType);
		GaiaXAddress gaiaXAddress = new GaiaXAddress().countryCode("BE-BRU");
		credentialSubject.setClaims("gx:legalAddress", gaiaXAddress);
		VerifiableCredential verifiableCredential = new VerifiableCredential();
		verifiableCredential.setId(URI.create("urn:my-id"));
		verifiableCredential.setIssuer(URI.create(organization));
		verifiableCredential.setCredentialSubject(credentialSubject);
		JsonWebToken jwt = new JsonWebToken()
				.id("myTestToken")
				.issuer(organization);
		jwt.setOtherClaims("verifiableCredential", verifiableCredential);
		SignatureSignerContext signatureSignerContext = new AsymmetricSignatureSignerContext(getRsaKey());
		return new JWSBuilder().type("JWT").jsonContent(jwt).sign(signatureSignerContext);
	}

	public static String getTestJwt(String organization, List<String> roles) {
		RolesAndDuties rolesAndDuties = new RolesAndDuties();
		rolesAndDuties.setRoleNames(roles);
		rolesAndDuties.setTarget(organization);
		CredentialSubject credentialSubject = new CredentialSubject();
		credentialSubject.setClaims("rolesAndDuties", List.of(rolesAndDuties));
		VerifiableCredential verifiableCredential = new VerifiableCredential();
		verifiableCredential.setId(URI.create("urn:my-id"));
		verifiableCredential.setIssuer(URI.create(organization));
		verifiableCredential.setCredentialSubject(credentialSubject);
		JsonWebToken jwt = new JsonWebToken()
				.id("myTestToken")
				.issuer(organization);
		jwt.setOtherClaims("verifiableCredential", verifiableCredential);
		SignatureSignerContext signatureSignerContext = new AsymmetricSignatureSignerContext(getRsaKey());
		return new JWSBuilder().type("JWT").jsonContent(jwt).sign(signatureSignerContext);
	}

	public static KeyWrapper getRsaKey() {
		try {
			KeyPairGenerator kpg = KeyPairGenerator.getInstance("RSA");
			kpg.initialize(2048);
			var keyPair = kpg.generateKeyPair();
			KeyWrapper kw = new KeyWrapper();
			kw.setPrivateKey(keyPair.getPrivate());
			kw.setPublicKey(keyPair.getPublic());
			kw.setUse(KeyUse.SIG);
			kw.setKid(KeyUtils.createKeyId(keyPair.getPublic()));
			kw.setType("RSA");
			kw.setAlgorithm("RS256");
			return kw;
		} catch (NoSuchAlgorithmException e) {
			throw new RuntimeException(e);
		}
	}


}
