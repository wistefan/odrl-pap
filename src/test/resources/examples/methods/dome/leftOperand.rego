package dome.leftOperand

import rego.v1

## dome-op:role
role(subject) := subject.credentialSubject.rolesAndDuties[_].roleNames

## dome-op:currentParty
current_party(inputData) := inputData.credential.issuer.id

## dome-op:relatedParty
related_party(entity) := entity.relatedParty

## dome-op:relatedParty_role
related_party_role(relatedParty) := relatedParty.role