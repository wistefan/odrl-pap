package policy.weekday_hours_cars

import data.odrl.operand as odrl_operand
import data.odrl.action as odrl_action
import data.utils.helper as helper
import data.odrl.leftOperand as odrl_lo
import data.ngsild.leftOperand as ngsild_lo
import rego.v1
import data.odrl.operator as odrl_operator
import data.vc.assignee as vc_assignee

is_allowed if {
odrl_action.is_read(helper.http_part)
odrl_operand.and_sequence_operand([odrl_operator.eq_operator(ngsild_lo.entity_type(helper.http_part),"Test_Car")])
vc_assignee.is_any
odrl_operand.and_sequence_operand([odrl_operator.gt_eq_operator(odrl_lo.day_of_week(odrl_lo.current_time),0),odrl_operator.lt_eq_operator(odrl_lo.day_of_week(odrl_lo.current_time),4),odrl_operator.gt_eq_operator(odrl_lo.hour_of_day(odrl_lo.current_time),8),odrl_operator.lt_eq_operator(odrl_lo.hour_of_day(odrl_lo.current_time),23)])
}