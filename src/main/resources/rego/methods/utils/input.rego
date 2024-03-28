package utils.helper

import rego.v1

request := input.request
body := json.unmarshal(http_part.body)
http_part := request.http
headers := http_part.headers
authorization := headers.authorization
decoded_authorization := io.jwt.decode(token)
decoded_token_payload := decoded_authorization[1]
name := decoded_token_payload.name
token := t if {
	output := replace(authorization, "bearer ", "")
    t = replace(output, "Bearer ", "")
}
entity := body
target := http_part.path