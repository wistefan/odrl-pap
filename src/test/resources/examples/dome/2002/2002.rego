package system

import dome.leftOperand
import odrl.operator
import helper.req
import dome.action
import rego.v1

default allow := false

allow if {
and_sequence_operand([eq_operator(id,current_party(helper.req.credential())),eq_operator(role,"Owner")])
TODO(set_published)
has_part_operator(role(helper.req.credential()),"manager")
}