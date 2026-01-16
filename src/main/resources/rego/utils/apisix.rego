package utils.helper

import rego.v1

##
# did of the organization running the PAP
organization_did := data.data.organizationDid

##
# the request as part of the policy input
request := input.request

##
# the request body as json object
body := json.unmarshal(http_part.body)

##
# the http request
http_part := request

##
# the headers of the request
headers := http_part.headers

##
# the (undecoded) authorization header
authorization := headers.authorization

##
# the decoded authorization jwt
decoded_authorization := io.jwt.decode(token)

##
# the decoded payload of the jwt
decoded_token_payload := decoded_authorization[1]

##
# the verifiable credential received as part of the token
verifiable_credential := verfiableCredential if {
	verfiableCredential = decoded_token_payload.verifiableCredential
} else := vc if {
	vc = decoded_token_payload.vc
}

##
# the issuer of the credential
issuer := verifiable_credential.issuer

##
# the unprefixed bearer token
token := t if {
	output := replace(authorization, "bearer ", "")
	t = replace(output, "Bearer ", "")
}

##
# the entity provided as http-body
entity := body

##
# the target of the request, found as the last part of the path
target := p if {
	# split the path
	path_parts := split(http_part.path, "/")

	# get the last part of the path, without the query parameters
	p = split(path_parts[count(path_parts) - 1], "?")[0]
}
