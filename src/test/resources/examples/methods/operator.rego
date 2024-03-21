package odrl.operator

import rego.v1

eq_constraint(leftOperand, rightOperand) if leftOperand == rightOperand

has_part_constraint(leftOperand, rightOperand) if rightOperand in leftOperand

gt_constraint(leftOperand, rightOperand) if leftOperand > rightOperand

gt_eq_constraint(leftOperand, rightOperand) if leftOperand >= rightOperand

## possible?
is_a_constraint(leftOperand, rightOperand)

## should be used on sets
is_all_of_constraint(leftOperand, rightOperand) if leftOperand == rightOperand

is_any_of_constraint(leftOperand, rightOperand) if leftOperand in rightOperand

is_none_of_constraint(leftOperand, rightOperand) if not leftOperand in rightOperand

is_part_of_constraint(leftOperand, rightOperand) if rightOperand in leftOperand

lt_constraint(leftOperand, rightOperand) if leftOperand < rightOperand

lt_eq_constraint(leftOperand, rightOperand) if leftOperand <= rightOperand

n_eq_constraint(leftOperand, rightOperand) if leftOperand != rightOperand