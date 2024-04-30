package system

import dome.leftOperand
import odrl.operator
import helper.req
import rego.v1
import odrl.action

default allow := false

allow if {
eq_operator(related_party(helper.reg.entity()),null)
has_part_operator(role(helper.req.credential()),"seller")
is_modification(helper.req.request())
}