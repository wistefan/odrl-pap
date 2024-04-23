package utils.helper

import rego.v1

organization_did := data.data.organizationDid
request := input.request
body := json.unmarshal(http_part.body)
http_part := request.http
headers := http_part.headers
authorization := headers.authorization
decoded_authorization := io.jwt.decode(token)
decoded_token_payload := decoded_authorization[1]
verifiable_credential := decoded_token_payload.verifiableCredential
issuer := verifiable_credential.issuer
token := t if {
	output := replace(authorization, "bearer ", "")
    t = replace(output, "Bearer ", "")
}
entity := body
target := p if {
 # split the path
 path_parts := split(http_part.path, "/")
 # get the last part of the path, without the query parameters
 p = split(path_parts[count(path_parts)-1], "?")[0]
}