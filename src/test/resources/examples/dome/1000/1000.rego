package system

import data.odrl.action as odrl_action
import data.odrl.assignee as odrl_assignee
import data.helper.reg
import rego.v1
import data.odrl.target as odrl_target


allow() := if {
odrl_target.is_target(helper.reg.target(),"urn:ngsi-ld:product-offering:62d4f929-d29d-4070-ae1f-9fe7dd1de5f6")
odrl_action.is_use(helper.reg.request())
odrl_assignee.is_user(helper.reg.subject(),"urn:ngsi-ld:organization:0b03975e-7ded-4fbd-9c3b-a5d6550df7e2")
}