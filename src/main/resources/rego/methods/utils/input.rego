package helper.reg

import rego.v1

request() := input.request
target() := input.request.body.id
credential() := input.credential
issuer() := credential().issuer.id
subject() := credential().credentialSubject.id
entity() := input.request.body