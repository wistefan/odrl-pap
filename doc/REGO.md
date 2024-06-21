# REGO Methods


## dome

| ODRL Class | ODRL Key | Rego-Method | Description |
| --- | --- | --- | --- |
| leftOperand | dome-op:role | role(verifiable_credential,organization_id) | retrieves the roles from the (lear) credential, that target the current organization |
| leftOperand | dome-op:currentParty | current_party(credential) | the current (organization)party, |
| leftOperand | dome-op:relatedParty | related_party(http_part) | get the entity from tm-forum and extract related party |
| leftOperand | dome-op:owner | owner(related_party) | filter the given list of related_party(ies) for one with role "Owner" |
| leftOperand | dome-op:relatedParty_role | related_party_role(entity) | return the role from the related party of an entity |
| leftOperand | dome-op:validFor_endDateTime | valid_for_end_date_time(entity) | return the end of the validity of an entity |
| leftOperand | dome-op:validFor_startDateTime | valid_for_start_date_time(entity) | return the start of the validity of an entity |
| action | dome-op:create | is_creation(request) | Check if the given request is a creation |
| action | dome-op:set_published | is_set_published(request) | check if the entity is set to published in the request. |

## odrl

| ODRL Class | ODRL Key | Rego-Method | Description |
| --- | --- | --- | --- |
| operand | odrl:and | and_operand(constraints) | checks if all given constraints are true |
| operand | odrl:andSequence | and_sequence_operand(constraints) | checks if all given constraints are true |
| operand | odrl:or | or_operand(constraints) | check that at least one of the constraints is true |
| operand | odrl:xone | only_one_operand(constraints) | check that exactly one of the constraints is true |
| rightOperand | odrl:policyUsage | policy_usage | return the current time in ms, e.g. the time that the policy is used |
| operator | odrl:eq | eq_operator(leftOperand, | check that both operands are equal |
| operator | odrl:hasPart | has_part_operator(leftOperand, | check that the rightOperand is in the leftOperand |
| operator | odrl:gt | gt_operator(leftOperand, | check that the leftOperand is greater than the rightOperand |
| operator | odrl:gteq | gt_eq_operator(leftOperand, | check that the leftOperand is greater or equal to the rightOperand |
| operator | odrl:isAllOf | is_all_of_operator(leftOperand, | check that the given sets are equal |
| operator | odrl:isAnyOf | is_any_of_operator(leftOperand, | check that the leftOperand is contained in the rightOperand set |
| operator | odrl:isNoneOf | is_none_of_operator(leftOperand, | check that the leftOperand is not contained in the rightOperand set |
| operator | odrl:isPartOf | is_part_of_operator(leftOperand, | check that the rightOperand is contained in the leftOperand set |
| operator | odrl:lt | lt_operator(leftOperand, | check that the leftOperand is less than the rightOperand |
| operator | odrl:lteq | lt_eq_operator(leftOperand, | check that the leftOperand is less or equal to the rightOperand |
| operator | odrl:neq | n_eq_operator(leftOperand, | check that the operands are unequal |
| leftOperand | odrl:currentTime | current_time | returns the current time in ms |
| target | odrl:target,odrl:uid | is_target(target, | check that the uid of the target is equal to the given uid |
| action | odrl:modify | is_modification(request) | checks if the given request is a modification |
| action | odrl:delete | is_deletion(request) | checks if the given request is a deletion |
| action | odrl:read | is_read(request) | checks if the given request is a read operation |
| action | odrl:use | is_use(request) | checks if the given request is a usage |
| assignee | odrl:uid,odrl:assignee | is_user(user,uid) | is the given user id the same as the given uid |

## utils

| ODRL Class | ODRL Key | Rego-Method | Description |
| --- | --- | --- | --- |
| helper | ## | organization_did | did of the organization running the PAP |
| helper | ## | request | the request as part of the policy input |
| helper | ## | body | the request body as json object |
| helper | ## | http_part | the http request |
| helper | ## | headers | the headers of the request |
| helper | ## | authorization | the (undecoded) authorization header |
| helper | ## | decoded_authorization | the decoded authorization jwt |
| helper | ## | decoded_token_payload | the decoded payload of the jwt |
| helper | ## | verifiable_credential | the verifiable credential received as part of the token |
| helper | ## | issuer | the issuer of the credential |
| helper | ## | token | the unprefixed bearer token |
| helper | ## | entity | the entity provided as http-body |
| helper | ## | target | the target of the request, found as the last part of the path |

## vc

| ODRL Class | ODRL Key | Rego-Method | Description |
| --- | --- | --- | --- |
| leftOperand | vc:role | role(verifiable_credential,organization_id) | retrieves the roles from the credential, that target the current organization |
| leftOperand | vc:currentParty | current_party(credential) | the current (organization)party, |
| leftOperand | vc:type | types(verifiable_credential) | the type(s) of the current credential |
| assignee | odrl:any | is_any | allows for any user |

## ngsild

| ODRL Class | ODRL Key | Rego-Method | Description |
| --- | --- | --- | --- |
| leftOperand | ngsi-ld:entityType | entity_type(http_part) | retrieves the type from an entity, either from the request path or from the body |
| leftOperand | ngsi-ld:<property> | # | retrieves the value of the property, only applies to properties of type "Property". The method should be concretized in the mapping.json, to match a concrete property. |
| leftOperand | ngsi-ld:<property>_observedAt | # | retrieves the observedAt of the property The method should be concretized in the mapping.json, to match a concrete property. |
| leftOperand | ngsi-ld:<property>_modifiedAt | # | retrieves the modifiedAt of the property The method should be concretized in the mapping.json, to match a concrete property. |
| leftOperand | ngsi-ld:<relationship> | # | retrieves the object of the relationship, only applies to properties of type "Relationship". The method should be concretized in the mapping.json, to match a concrete property. |

## tmf

| ODRL Class | ODRL Key | Rego-Method | Description |
| --- | --- | --- | --- |
| leftOperand | tmf:lifecycleStatus | life_cycle_status(entity) | return the lifeCycleStatus of a given entity |
| leftOperand | tmf:resource | resource_type(http_part) | retrieves the type of the resource from the path |
| action | tmf:create | is_creation(request) | Check if the given request is a creation |
