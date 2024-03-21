package odrl.leftOperand

import rego.v1

## dome-op:role
subject_roles(subject) := subject.credentialSubject.rolesAndDuties[_].roleNames

## dome-op:currentParty
current_party(inputData) := inputData.credential

## dome-op:relatedParty
related_party(entity) := entity.relatedParty

## dome-op:relatedParty_role
related_party_role(relatedParty) := relatedParty.role