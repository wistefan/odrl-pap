package system

import dome.leftOperand
import odrl.operator
import helper.req
import rego.v1
import odrl.action

default allow := false

allow if {
and_sequence_operand([eq_operator(id,current_party(helper.req.credential())),eq_operator(role,"Owner")])
has_part_operator(role(helper.req.credential()),"seller")
is_modification(helper.req.request())
}