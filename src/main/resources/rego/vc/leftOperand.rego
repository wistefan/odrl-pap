package vc.leftOperand

import rego.v1

## vc:role
# retrieves the roles from the credential, that target the current organization
role(verifiable_credential, organization_id) := r if {
	roles := verifiable_credential.credentialSubject.roles
	role := [rad | some rad in roles; rad.target == organization_id]
	r = role[_].names
}

## vc:currentParty
# the current (organization)party,
current_party(credential) := credential.issuer

## vc:type
# the type(s) of the current credential. Converted to array if string type.
types(verifiable_credential) := result if {
	is_array(verifiable_credential.type)
	result = verifiable_credential.type
} else := [verifiable_credential.type]
