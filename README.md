# odrl-poc

> :warning: Still under construction

The odrl-poc aims to enforce policies written in [ODRL](https://www.w3.org/TR/odrl-model/) by translating them to [rego](https://www.openpolicyagent.org/docs/latest/policy-language/)
and offer them via a [bundles-endpoint](https://www.openpolicyagent.org/docs/latest/management-bundles/) to the [Open Policy Agent](https://www.openpolicyagent.org).

It uses the following architecture: 
![architecture](./doc/odrl-pap.jpg)

The odrl-pap offers two bundles:
* the `methods`-bundle: It contains the rego-equivalent to certain odrl-classes. The [rego.methods-folder](src/main/resources/rego/methods) contains the initial set of methods. It can be overwritten by providing methods in a folder at `paths.rego`
* the `policies`-bundle: It contains the actual policies and the `main`-policy, combining all configured policies. All request have to be evaluated against the `main` policy.

## Translation

The translation between ODRL and Rego is based on the [mapping-file](mapping.json). It contains the mapping between evaluatable 
ODRL-classes(see [OdrlAttribute.java](./src/main/java/org/fiware/odrl/mapping/OdrlAttribute.java) for all options) and a matching rego-method.
Classes are mapped depending on their namespace and method. It allows to create domain-specific instances of odrl-classes(see [dome rego-methods](src/main/resources/rego/methods) as example)
and map them to a method.

## Getting familiar with policies

The project aims to take [ODRL Policies](https://www.w3.org/TR/odrl-model/) and execute them using the [Open Policy Agent](https://www.openpolicyagent.org).

In order to get familiar with the languages and tools, see [test/examples](src/test/resources/examples).

## Running the application

To test the application together with OPA, run the following:
```shell
docker run -p 8181:8181 --network host -v $(pwd)/src/test/resources/opa.yaml:/opa.yaml  openpolicyagent/opa:0.62.1 run --server -c /opa.yaml
```
and the application:
```shell
./mvn compile quarkus:dev
```

It will mount the OPA config-file under [src/test/resources/opa.yaml](/src/test/resources/opa.yaml) and start OPA at port 8181. This config tries to
connect to the ODRL-PAP at localhost:8080, thus the container needs to be in the host-network. It will start to poll bundles at http://localhost:8080/bundles/service/v1/<policies.tar.gz|bundles.tar.gz>

To try it out, create a policy:

```shell
curl -X PUT http://localhost:8080/policy/test  -H 'Content-Type: application/json' -d '{
    "@context": {
        "odrl": "http://www.w3.org/ns/odrl/2/",
        "dc": "http://purl.org/dc/elements/1.1/",
        "dct": "http://purl.org/dc/terms/",
        "owl": "http://www.w3.org/2002/07/owl#",
        "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
        "skos": "http://www.w3.org/2004/02/skos/core#",
        "dome": "https://www.dome-marketplace.org/",
        "dome-op": "https://github.com/DOME-Marketplace/dome-odrl-profile#"
    },
    "@id": "https://dome-marketplace.org/policy/common/_1000",
    "@type": "odrl:Policy",
    "odrl:profile": "https://github.com/DOME-Marketplace/dome-odrl-profile/blob/main/dome-op.ttl",
    "odrl:permission": {
        "odrl:assigner": {
            "@id": "https://www.dome-marketplace.org/"
        },
        "odrl:target": "urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6",
        "odrl:assignee": "John Doe",
        "odrl:action": {
            "@id": "odrl:read"
        }
    },
    "rdfs:isDefinedBy": {
        "@id": "dome:"
    }
}' 
```
The policy allows a user "John Doe" to "read"(e.g. GET) the entity "urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6".

After the polling period, the policy can be tested as following:

```shell
curl -X POST http://localhost:8181/ -H 'Content-Type: application/json' -d '{
"request": {
      "http": {
        "method": "GET",
        "path": "urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6",
        "headers": {
            "authorization" : "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c"
        }
      }
  }
}
```
The rule would evaluate to ```true```, thus the request is accepted. If f.e. the method is changed to ```PUT```:
```shell
curl -X POST http://localhost:8181/ -H 'Content-Type: application/json' -d '{
"request": {
      "http": {
        "method": "PUT",
        "path": "urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6",
        "headers": {
            "authorization" : "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c"
        }
      }
  }
}
```
It evaluates to false and is denied.

## Packaging and running the application

The application can be packaged using:
```shell script
./mvnw package
```
It produces the `quarkus-run.jar` file in the `target/quarkus-app/` directory.
Be aware that it’s not an _über-jar_ as the dependencies are copied into the `target/quarkus-app/lib/` directory.

The application is now runnable using `java -jar target/quarkus-app/quarkus-run.jar`.

If you want to build an _über-jar_, execute the following command:
```shell script
./mvnw package -Dquarkus.package.type=uber-jar
```

The application, packaged as an _über-jar_, is now runnable using `java -jar target/*-runner.jar`.

## Creating a native executable

You can create a native executable using: 
```shell script
./mvnw package -Dnative
```

Or, if you don't have GraalVM installed, you can run the native executable build in a container using: 
```shell script
./mvnw package -Dnative -Dquarkus.native.container-build=true
```

You can then execute your native executable with: `./target/odrl-poc-1.0.0-SNAPSHOT-runner`

If you want to learn more about building native executables, please consult https://quarkus.io/guides/maven-tooling.

## Related Guides

- RESTEasy Reactive ([guide](https://quarkus.io/guides/resteasy-reactive)): A Jakarta REST implementation utilizing build time processing and Vert.x. This extension is not compatible with the quarkus-resteasy extension, or any of the extensions that depend on it.

## Provided Code

### RESTEasy Reactive

Easily start your Reactive RESTful Web Services

[Related guide section...](https://quarkus.io/guides/getting-started-reactive#reactive-jax-rs-resources)
