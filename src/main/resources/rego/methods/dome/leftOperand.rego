package dome.leftOperand

import rego.v1

## dome-op:role
role(subject) := subject.credentialSubject.rolesAndDuties[_].roleNames

## dome-op:currentParty
current_party(credential) := credential.issuer.id

## dome-op:relatedParty
related_party(entity) := entity.related_party

## dome-op:relatedParty_role
related_party_role(entity) := related_party(entity).role

## TMF-PCMA:lifecycleStatus
life_cycle_status(entity) := entity.lifeCycleStatus