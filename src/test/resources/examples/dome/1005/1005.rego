package system

import dome.leftOperand
import odrl.operator
import helper.req
import odrl.assignee
import rego.v1
import odrl.action

default allow := false

allow if {
eq_operator(related_party(helper.reg.entity()),null)
is_user(helper.reg.subject(),"urn:assignee")
is_modification(helper.req.request())
}