package dome.leftOperand

import rego.v1

## dome-op:role
# retrieves the roles from the (lear) credential, that target the current organization
role(verifiable_credential,organization_id) := r if {
    rolesAndDuties := verifiable_credential.credentialSubject.rolesAndDuties
    roleAndDuty := [rad | some rad in rolesAndDuties; rad.target = organization_id ]
    r = roleAndDuty[_].roleNames; trace(organization_id)
}

## dome-op:currentParty
# the current (organization)party,
current_party(credential) := credential.issuer

## dome-op:relatedParty
# get the entity from tm-forum and extract related party
related_party(http_part) := rp if {
    path_without_query := split(http_part.path, "?")[0]
    ## will be one or multiple entities
    responseBody := http.send({"method": "get", "url": sprintf("%v%v", [http_part.host, path_without_query])}).body
    rp = responseBody.relatedParty
}

## dome-op:owner
# filter the given list of related_party(ies) for one with role "Owner"
owner(related_party) := o_id if {
    owner_rp := [rp | some rp in related_party; rp.role = "Owner"]
    o_id = owner_rp[_].id
}

## dome-op:relatedParty_role
# return the role from the related party of an entity
related_party_role(entity) := related_party(entity).role

## TMF-PCMA:lifecycleStatus
# return the lifeCycleStatus of a given entity
life_cycle_status(entity) := entity.lifeCycleStatus

## dome-op:validFor_endDateTime
# return the end of the validity of an entity
valid_for_end_date_time(entity) := time.parse_rfc3339_ns(entity.validFor.endDataTime)

## dome-op:validFor_startDateTime
# return the start of the validity of an entity
valid_for_start_date_time(entity) := time.parse_rfc3339_ns(entity.validFor.startDataTime)