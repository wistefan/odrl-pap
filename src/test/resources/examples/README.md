# Example

In order to get familiar with OPA, you can run it as following:

```shell
docker run -p 8181:8181 openpolicyagent/opa:0.62.1 run --server
```

## Data

The content of [data.json](data.json) is provided as data(PIP in prinicple) via:

```shell
curl -X PUT http://localhost:8181/v1/data/organizations  -H 'Content-Type: application/json' -d "$(cat data.json)" 
```
With this, the organizations are provided as `data` to the policy-engine in format:
```json
<did>: {
  "id": <TMForum-ID>,
  "tradingName": <TMForum-TradingName>
}
```
## Policy

An example policy exists at [policy.rego](policy.rego). It evaluates a request to true, if:
- its a GET request
- its a request from:
  - a user belonging to the owner-organization of the entity
  - the user is in role "seller" for the "dome-marketplace.org"

Submit the policy:
```shell
curl -X PUT http://localhost:8181/v1/policies/entity-access -H 'Content-Type: text/plain' -d "$(cat policy.rego)"
```

## Evaluate a request

A request should be submitted together with its credential, as shown in the [input.json](input.json), in the format:
```json
{
  "request": {
    "path": <request-path>,
    "method": <request-method>,
    "body": <request-body>
  },
  "credential": <THE-LEAR-CREDENTIAL>
}
```

The request described in  [input.json](input.json) could be send via:
```shell
curl -X POST http://localhost:8181/ -H 'Content-Type: application/json' -d "$(cat input.json)"
```
and evaluates to ```true```.

To play around, just change some fields in the input and see how it evaluates.