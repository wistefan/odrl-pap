package system

import dome.leftOperand
import odrl.operator
import helper.req
import odrl.assignee
import rego.v1
import odrl.action

default allow := false

allow if {
is_user(helper.reg.subject(),"urn:assignee")
is_read(helper.req.request())
and_sequence_operand([n_eq_operator(life_cycle_status(helper.reg.entity()),"Retired"),lt_operator(TODO(validFor_startDateTime),null),gt_operator(TODO(validFor_endDateTime),null)])
}