package odrl.operator

import rego.v1

## odrl:eq
# check that both operands are equal
default eq_operator(leftOperand, rightOperand) := false

eq_operator(leftOperand, rightOperand) if leftOperand == rightOperand

## odrl:hasPart
# check that the rightOperand is in the leftOperand
default has_part_operator(leftOperand, rightOperand) := false

has_part_operator(leftOperand, rightOperand) if rightOperand in leftOperand

## odrl:gt
# check that the leftOperand is greater than the rightOperand
default gt_operator(leftOperand, rightOperand) := false

gt_operator(leftOperand, rightOperand) if leftOperand > rightOperand

## odrl:gteq
# check that the leftOperand is greater or equal to the rightOperand
default gt_eq_operator(leftOperand, rightOperand) := false

gt_eq_operator(leftOperand, rightOperand) if leftOperand >= rightOperand

## odrl:isAllOf
# check that the given sets are equal
default is_all_of_operator(leftOperand, rightOperand) := false

is_all_of_operator(leftOperand, rightOperand) if leftOperand == rightOperand

## odrl:isAnyOf
# check that the leftOperand is contained in the rightOperand set
default is_any_of_operator(leftOperand, rightOperand) := false

is_any_of_operator(leftOperand, rightOperand) if leftOperand in rightOperand

## odrl:isNoneOf
# check that the leftOperand is not contained in the rightOperand set
default is_none_of_operator(leftOperand, rightOperand) := false

is_none_of_operator(leftOperand, rightOperand) if not leftOperand in rightOperand

## odrl:isPartOf
# check that the rightOperand is contained in the leftOperand set
default is_part_of_operator(leftOperand, rightOperand) := false

is_part_of_operator(leftOperand, rightOperand) if rightOperand in leftOperand

## odrl:lt
# check that the leftOperand is less than the rightOperand
default lt_operator(leftOperand, rightOperand) := false

lt_operator(leftOperand, rightOperand) if rightOperand > leftOperand

## odrl:lteq
# check that the leftOperand is less or equal to the rightOperand
default lt_eq_operator(leftOperand, rightOperand) := false

lt_eq_operator(leftOperand, rightOperand) if rightOperand >= leftOperand

## odrl:neq
# check that the operands are unequal
default n_eq_operator(leftOperand, rightOperand) := false

n_eq_operator(leftOperand, rightOperand) if leftOperand != rightOperand
