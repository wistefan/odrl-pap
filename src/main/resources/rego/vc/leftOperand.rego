package vc.leftOperand

import rego.v1

## vc:role
# retrieves the roles from the credential, that target the current organization
role(verifiable_credential,organization_id) := r if {
    roles := verifiable_credential.credentialSubject.roles
    role := [rad | some rad in roles; rad.target = organization_id ]
    print(roles)
    r = role[_].names; trace(organization_id)
}

## vc:currentParty
# the current (organization)party,
current_party(credential) := credential.issuer

## vc:type
# the type(s) of the current credential
types(verifiable_credential) := t if {
    print(verifiable_credential)
    t = verifiable_credential.type
}