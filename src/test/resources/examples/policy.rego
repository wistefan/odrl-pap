package system

import rego.v1

default main := false

main if input.request.method == "GET"

main if {
    isOwner(data.organizations[input.credential.issuer.id].id)
    hasRole("https://dome-marketplace.org/", "seller")
}

isOwner(party) := x if {
	rpOwners := [relatedParty | relatedParty = input.request.body.relatedParty[i]; relatedParty.role == "Owner"; relatedParty.id == party]
	x := count(rpOwners) > 0
}

hasRole(target, role) := x if {
	roles := [rolesAndDuties | rolesAndDuties = input.credential.credentialSubject.rolesAndDuties[i]; role in rolesAndDuties.roleNames; rolesAndDuties.target == target]
	x := count(roles) > 0
}

