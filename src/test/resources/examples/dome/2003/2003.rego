package system

import dome.leftOperand
import odrl.operator
import helper.req
import dome.action
import rego.v1

default allow := false

allow if {
is_creation(helper.req.request())
has_part_operator(role(helper.req.credential()),"seller")
and_sequence_operand([eq_operator(related_party(helper.reg.entity()),current_party(helper.req.credential())),eq_operator(related_party_role(helper.reg.entity()),"Owner")])
}