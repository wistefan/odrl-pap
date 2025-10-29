#! /bin/bash
echo -e '\n--------------------------------'
echo 'odrl-opa create policy test:'
echo -e '--------------------------------\n'
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
    "odrl:uid": "https://dome-marketplace.org/policy/common/_1000",
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
echo -e '\n\nWaiting 5 secs. for policy propagation...'
sleep 5
echo -e '\n--------------------------------'
echo 'odrl-opa result:'
echo -e '--------------------------------\n'
curl -s http://localhost:8081/policy | jq .

echo -e '\n--------------------------------'
echo 'OPA result:'
echo -e '--------------------------------\n'
curl -s http://localhost:8181/v1/policies | jq '.result[]|select(.id == "policies/policy/test.rego") | {id, raw}'

echo -e '\n--------------------------------'
echo 'test OPA validation (true):'
echo -e '--------------------------------\n'
curl -X POST http://localhost:8181/ -H 'Content-Type: application/json' -d '{
"request": {
    "method": "GET",
    "path": "urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6",
    "headers": {
        "authorization" : "Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJqLUVQbXUwdUdUTmZxMDZSTGtYVllQbHpoaXI5T25MeE1sZ214RmplZjk0In0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6ImRpZDp3ZWI6dGVzdC5vcmciLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoiZGlkOndlYjp0ZXN0Lm9yZyIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6ImRpZDp3ZWI6dGVzdC5vcmciLCJyb2xlTmFtZXMiOlsiT3duZXIiXX1dfX19.GOesKINcyTwtkzvF9ZnZKnrNaBbzsTezrraRv6ou_Tboy9IzVmtU59o7dFxx8vHm9teuALeziqtXv4ViMTv_vnC2QcLCL9rSTfshMVeothH3SzGJ2Jb3-JUZ6Bmkpv_L5YkQCnxVBzCOnBH7Kfe3JpGwtwbI5bV0udmvyc_bXMz2SxUW9e5bYPV2WZIH06LZAk5yDPyZ4gwVKZGV1bGW-qVeI2DaQupGdeLW8ZzF4o7DGU0hhyLfuwXE6nVQUac6h8Remry1NTa99UCmSMkpICW3l8Z5kBKieek2C2mKeWu4KC5SzdTdkiG7n9_vOR7zjcfCtCuwvKdRFIcaVXN8oQ"
    }
  }
}'

echo -e '\n--------------------------------'
echo 'test OPA validation (true - right token subject but another issuer):'
echo -e '--------------------------------\n'
curl -X POST http://localhost:8181/ -H 'Content-Type: application/json' -d '{
"request": {
    "method": "GET",
    "path": "urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6",
    "headers": {
        "authorization" : "Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6ImotRVBtdTB1R1ROZnEwNlJMa1hWWVBsemhpcjlPbkx4TWxnbXhGamVmOTQifQ.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6ImRpZDp3ZWI6dGVzdC5vcmciLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoiZGlkOndlYjp0ZXN0Lm9yZyIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6ImRpZDp3ZWI6dGVzdC5vcmciLCJyb2xlTmFtZXMiOlsiT3duZXIiXX1dfX19.VU5TSUdORURfVE9LRU5fRk9SX1RFU1RJTkdfT05MWQ"        }
  }
}'

echo -e '\n--------------------------------'
echo 'test OPA validation (false - wrong method):'
echo -e '--------------------------------\n'
curl -X POST http://localhost:8181/ -H 'Content-Type: application/json' -d '{
"request": {
    "method": "PUT",
    "path": "urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6",
    "headers": {
        "authorization" : "Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJqLUVQbXUwdUdUTmZxMDZSTGtYVllQbHpoaXI5T25MeE1sZ214RmplZjk0In0.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6ImRpZDp3ZWI6dGVzdC5vcmciLCJ2ZXJpZmlhYmxlQ3JlZGVudGlhbCI6eyJ0eXBlIjpbXSwiaXNzdWVyIjoiZGlkOndlYjp0ZXN0Lm9yZyIsImlkIjoidXJuOm15LWlkIiwiY3JlZGVudGlhbFN1YmplY3QiOnsicm9sZXNBbmREdXRpZXMiOlt7InRhcmdldCI6ImRpZDp3ZWI6dGVzdC5vcmciLCJyb2xlTmFtZXMiOlsiT3duZXIiXX1dfX19.GOesKINcyTwtkzvF9ZnZKnrNaBbzsTezrraRv6ou_Tboy9IzVmtU59o7dFxx8vHm9teuALeziqtXv4ViMTv_vnC2QcLCL9rSTfshMVeothH3SzGJ2Jb3-JUZ6Bmkpv_L5YkQCnxVBzCOnBH7Kfe3JpGwtwbI5bV0udmvyc_bXMz2SxUW9e5bYPV2WZIH06LZAk5yDPyZ4gwVKZGV1bGW-qVeI2DaQupGdeLW8ZzF4o7DGU0hhyLfuwXE6nVQUac6h8Remry1NTa99UCmSMkpICW3l8Z5kBKieek2C2mKeWu4KC5SzdTdkiG7n9_vOR7zjcfCtCuwvKdRFIcaVXN8oQ"        }
  }
}'

echo -e '\n--------------------------------'
echo 'test OPA validation (false - wrong token credential subject):'
echo -e '--------------------------------\n'
curl -X POST http://localhost:8181/ -H 'Content-Type: application/json' -d '{
"request": {
    "method": "PUT",
    "path": "urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6",
    "headers": {
        "authorization" : "Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6ImotRVBtdTB1R1ROZnEwNlJMa1hWWVBsemhpcjlPbkx4TWxnbXhGamVmOTQifQ.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6ImRpZDp3ZWI6d3Jvbmcub3JnIiwidmVyaWZpYWJsZUNyZWRlbnRpYWwiOnsidHlwZSI6W10sImlzc3VlciI6ImRpZDp3ZWI6d3Jvbmcub3JnIiwiaWQiOiJ1cm46bXktaWQiLCJjcmVkZW50aWFsU3ViamVjdCI6eyJyb2xlc0FuZER1dGllcyI6W3sidGFyZ2V0IjoiZGlkOndlYjp3cm9uZy5vcmciLCJyb2xlTmFtZXMiOlsiT3duZXIiXX1dfX19.VU5TSUdORURfVE9LRU5fRk9SX1RFU1RJTkdfT05MWQ"        }
  }
}'


echo -e '\n--------------------------------\n'