# ODRL-PAP

The ODRL-PAP allows to configure policies written in [ODRL](https://www.w3.org/TR/odrl-model/) to be consumed by the by translating the  [Open Policy Agent(OPA)](https://www.openpolicyagent.org).
Therefor it translates the ODRL in to [rego](https://www.openpolicyagent.org/docs/latest/policy-language/) equivalents and offers them via the [bundles-endpoint](https://www.openpolicyagent.org/docs/latest/management-bundles/).
It uses the following architecture:
![architecture](./doc/odrl-pap.jpg)

## API 

The ODRL-PAP offers two APIS

* the Policy-API to manage policies in ODRL: [OpenAPI](./api/odrl.yaml)
* the Bundle-API to offers bundles for OPA: [OpenAPI](./api/bundle.yaml)
  * the `methods`-bundle: It contains the rego-equivalent to certain odrl-classes.
    The [rego.methods-folder](src/main/resources/regomethods/methods) contains the initial set of methods. It can be
    overwritten by providing methods in a folder at `paths.rego`
  * the `policies`-bundle: It contains the actual policies and the `main`-policy, combining all configured policies. All
    request have to be evaluated against the `main` policy.
  * the `data`-bundle: Contains additional data to be taken into account for the evaluation.

## Enforcement

To actually enforce policies, a Policy-Enforcment-Point is required. This role can in principle be taken by any OPA-compatible component.
We recommend (and test) the usage of [Apisix](https://apisix.apache.org/) for that. Apisix is an OpenSource API-Gateway, that has a built-in plugin to connect OPA.
See the [it-test Apisix-Chart](./charts/apisix) for an example configuration.

Alternative options are:
* [Kong](https://konghq.com): provides an OPA-Plugin for payed-usage, format is supported by the ODRL-PAP
* [Envoy](https://www.envoyproxy.io/): Just a proxy, no API-Gateway functionality, supports OPA integration

## Translation

The translation between ODRL and Rego is based on the [mapping-file](src/main/resources/mapping.json). It contains the
mapping between evaluatable
ODRL-classes(see [OdrlAttribute.java](./src/main/java/org/fiware/odrl/mapping/OdrlAttribute.java) for all options) and a
matching rego-method.
Classes are mapped depending on their namespace and method. It allows to create domain-specific instances of
odrl-classes(see [dome rego-methods](src/main/resources/regomethods/methods) as example)
and map them to a method.

The ODRL-PAP loads an initial set of methods on startup, that can be used to create policies. Its seperated in 3 main
packages:

* [utils](./src/main/resources/rego/utils): Contains methods to access the request and its parts. Currently it supports
  the inport format of [apisix](./src/main/resources/rego/utils/apisix.rego)
  and [kong](./src/main/resources/rego/utils/kong.rego)
* [odrl](./src/main/resources/rego/odrl): Contains standard methods to work with odrl. It supports the
  classes ```action```, ```assignee```, ```leftOperand```, ```operand```, ```rightOperand```, and ```target```. Check
  the individual files for the concrete methods.
* [dome](./src/main/resources/rego/dome): In order to support the DOME use-case, a number of DOME-specific methods is
  provided. Check the individual method files for details.

See the [method-documentation](./doc/REGO.md) for all available methods.

The set of methods can be extended by providing packages at the path configured at ```paths.rego``` in
the [application.properties](./src/main/resources/application.properties). ODRL-PAP will scan the given folder for files
with the ```.rego``` extension
and offer them as part of the policies-bundle. In case of providing packages that are already included in the defaults,
it will overwrite them with the newly provided one.

### The mapping.json

The [mapping.json](./src/main/resources/mapping.json) provides a mapping between ODRL Classes and the corresponding
rego-methods.
Its keyed by the [ODRL-Attribute](src/main/java/org/fiware/odrl/mapping/OdrlAttribute.java) and contains its (
namespaced) implementations.
The mapping needs to contain the ```regoPackage```(to be used for the import statement) containing the actual method and
the method-invocation.
To create an invocation, the input-parameters need to be taken into account. As of now, the class:

- ```operator``` requires two parameters
- ```operand``` requires one parameter
- ```assignee``` requires one parameter
- ```target```  requires one parameter
- all other require none

The parameters need to be defined with the ```%s``` placeholder. The methods can user other methods as input(f.e. from
the ```helper```) but no additional parameter replacement.

The mapping.json can be extended via a mapping file, configured at ```paths.mapping```. If provided, all contents will
be added to the default mapping. Existing keys will be overwritten, e.g. the provided one superseeds the defaults.

## Running the application

### Locally

To run the application together with OPA, start an instance of OPA via:

```shell
docker run -p 8181:8181 --network host -v $(pwd)/src/test/resources/opa.yaml:/opa.yaml  openpolicyagent/opa:0.63.0 run --server -c /opa.yaml
```

and the application via:

```shell
./mvn compile quarkus:dev
```

## Getting familiar with policies

The project aims to take [ODRL Policies](https://www.w3.org/TR/odrl-model/) and execute them using
the [Open Policy Agent](https://www.openpolicyagent.org).

In order to get familiar with the languages and tools, see [test/examples](src/test/resources/examples).

## Running the application

To test the application together with OPA, run the following:

```shell
docker run -p 8181:8181 --network host -v $(pwd)/src/test/resources/opa.yaml:/opa.yaml  openpolicyagent/opa:0.62.1 run --server -c /opa.yaml
```

It will mount the OPA config-file under [src/test/resources/opa.yaml](/src/test/resources/opa.yaml) and start OPA at
port 8181. This config tries to
connect to the ODRL-PAP at localhost:8080, thus the container needs to be in the host-network. It will start to poll
bundles at http://localhost:8080/bundles/service/v1/<policies.tar.gz|bundles.tar.gz>

The database:

```shell
docker run -p 5432:5432 --network host -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=pap postgres
```

and the application:

```shell
./mvnw compile quarkus:dev -Dquarkus.http.port=8081
```

To try it out, create a policy:

```shell
curl -X PUT http://localhost:8081/policy/test  -H 'Content-Type: application/json' -d '{
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
        "odrl:assignee": "did:web:test.org",
        "odrl:action": {
            "@id": "odrl:read"
        }
    },
    "rdfs:isDefinedBy": {
        "@id": "dome:"
    }
}' 
```

The policy allows a the organization "did:web:test.org" to "read"(e.g. GET) the entity "urn:ngsi-ld:product-offering:
62d4f929-d29d-4070-ae1f-9fe7dd1de5f6".

After the polling period, the policy can be tested as following:

```shell
curl -X POST http://localhost:8181/ -H 'Content-Type: application/json' -d '{
"request": {
    "method": "GET",
    "path": "urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6",
    "headers": {
        "authorization" : "Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJqLUVQbXUwdUdUTmZxMDZSTGtYVllQbHpoaXI5T25MeE1sZ214RmplZjk0In0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6ImRpZDp3ZWI6dGVzdC5vcmciLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoiZGlkOndlYjp0ZXN0Lm9yZyIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6ImRpZDp3ZWI6dGVzdC5vcmciLCJyb2xlTmFtZXMiOlsiT3duZXIiXX1dfX19.GOesKINcyTwtkzvF9ZnZKnrNaBbzsTezrraRv6ou_Tboy9IzVmtU59o7dFxx8vHm9teuALeziqtXv4ViMTv_vnC2QcLCL9rSTfshMVeothH3SzGJ2Jb3-JUZ6Bmkpv_L5YkQCnxVBzCOnBH7Kfe3JpGwtwbI5bV0udmvyc_bXMz2SxUW9e5bYPV2WZIH06LZAk5yDPyZ4gwVKZGV1bGW-qVeI2DaQupGdeLW8ZzF4o7DGU0hhyLfuwXE6nVQUac6h8Remry1NTa99UCmSMkpICW3l8Z5kBKieek2C2mKeWu4KC5SzdTdkiG7n9_vOR7zjcfCtCuwvKdRFIcaVXN8oQ"
    }
  }
}'
```

The rule would evaluate to ```true```, thus the request is accepted. If f.e. the method is changed to ```PUT```:

```shell
curl -X POST http://localhost:8181/ -H 'Content-Type: application/json' -d '{
"request": {
    "method": "PUT",
    "path": "urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6",
    "headers": {
        "authorization" : "Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJqLUVQbXUwdUdUTmZxMDZSTGtYVllQbHpoaXI5T25MeE1sZ214RmplZjk0In0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6ImRpZDp3ZWI6dGVzdC5vcmciLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoiZGlkOndlYjp0ZXN0Lm9yZyIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6ImRpZDp3ZWI6dGVzdC5vcmciLCJyb2xlTmFtZXMiOlsiT3duZXIiXX1dfX19.GOesKINcyTwtkzvF9ZnZKnrNaBbzsTezrraRv6ou_Tboy9IzVmtU59o7dFxx8vHm9teuALeziqtXv4ViMTv_vnC2QcLCL9rSTfshMVeothH3SzGJ2Jb3-JUZ6Bmkpv_L5YkQCnxVBzCOnBH7Kfe3JpGwtwbI5bV0udmvyc_bXMz2SxUW9e5bYPV2WZIH06LZAk5yDPyZ4gwVKZGV1bGW-qVeI2DaQupGdeLW8ZzF4o7DGU0hhyLfuwXE6nVQUac6h8Remry1NTa99UCmSMkpICW3l8Z5kBKieek2C2mKeWu4KC5SzdTdkiG7n9_vOR7zjcfCtCuwvKdRFIcaVXN8oQ"        }
  }
}
```

It evaluates to false and is denied.

## Configuration

Since the [Quarkus Framework](https://quarkus.io) is used, its standard configuration methods can be used.
See [https://quarkus.io/guides/config](https://quarkus.io/guides/config) for a detailed documentation.

The most important parameters are listed in the table below:

| Property                    | Env-Var                     | Description                                                                                                                                                     | Default                              |
|-----------------------------|-----------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------|
| general.organization-did    | GENERAL_ORGANIZATION_DID    | Did of the organization running the pap. Is used for evaluating roles in the DOME use-case(see [dome-op:role](./src/main/resources/rego/dome/leftOperand.rego)) |
| general.pep                 | GENERAL_PEP                 | The PEP to be supported. Will decide about the input format used for the policies. Currently ```apisix``` and ```kong``` are supported.                         | ```apisix```                         |
| quarkus.datasource.username | QUARKUS_DATASOURCE_USERNAME | Username to be used for connecting the database.                                                                                                                | ```postgres```                       |
| quarkus.datasource.password | QUARKUS_DATASOURCE_PASSWORD | Password to be used for connecting the database.                                                                                                                | ```postgres```                       |
| quarkus.datasource.jdbc.url | QUARKUS_DATASOURCE_JDBC_URL | Connection string to the DB, only postgres is supported at the moment.                                                                                          | jdbc:postgresql://localhost:5432/pap |
| paths.mapping               | PATHS_MAPPING               | Path to an additional mapping.json                                                                                                                              | null                                 |
| paths.rego                  | PATHS_REGO                  | Path to additional rego packages.                                                                                                                               | null                                 | 
 
## Test

API Tests can be executed via:

```shell
  mvn clean test
```

It will spin-up OPA and [MockServer](https://www.mock-server.com/) to test policy creation through the ODRL-PAP.

The IT-Tests are intended to be as close to a production environment as possible. Therefor, create the (native) image
first:

```shell
  mvn clean package -Dnative -Dquarkus.container-image.build=true
```

The image will automatically be copied to the k3s-cluster, running the tests. Start the tests via:

```shell
  mvn clean install -Pk8s-it
```

The test will spin up a k3s-cluster, with the ODRL-PAP, an instance of OPA, a MockServer to provide the request target
and [Apisix](https://apisix.apache.org/) as the Policy-Enforcement-Point.
If you want to use such environment for development, use:

```shell
  mvn clean install -Pdev
```

## Creating a native executable

> :warning: If you add any rego-resource, execute ```./scripts/create-rego-resource-list.sh``` first. It updates the
> list
> of rego-resource, so that the native application can access them properly.

You can create a native executable using:

```shell script
./mvnw package -Dnative
```

Or, if you don't have GraalVM installed, you can run the native executable build in a container using:

```shell script
./mvnw package -Dnative -Dquarkus.container-image.build=true
```

You can then execute your native executable with: `./target/odrl-poc-1.0.0-SNAPSHOT-runner`

If you want to learn more about building native executables, please consult https://quarkus.io/guides/maven-tooling.

## Related Guides

- RESTEasy Reactive ([guide](https://quarkus.io/guides/resteasy-reactive)): A Jakarta REST implementation utilizing
  build time processing and Vert.x. This extension is not compatible with the quarkus-resteasy extension, or any of the
  extensions that depend on it.

## Provided Code

### RESTEasy Reactive

Easily start your Reactive RESTful Web Services

[Related guide section...](https://quarkus.io/guides/getting-started-reactive#reactive-jax-rs-resources)
