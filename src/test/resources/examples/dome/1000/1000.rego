package system

import odrl.target
import helper.req
import odrl.assignee
import rego.v1
import odrl.action

default allow := false

allow if {
is_target(helper.reg.target(),"urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6")
is_user(helper.reg.subject(),"urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2")
is_use(helper.req.request())
}