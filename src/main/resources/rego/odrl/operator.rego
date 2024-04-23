package odrl.operator

import rego.v1

## odrl:eq
eq_operator(leftOperand, rightOperand) := leftOperand == rightOperand

## odrl:hasPart
has_part_operator(leftOperand, rightOperand) if rightOperand in leftOperand

## odrl:gt
gt_operator(leftOperand, rightOperand) if leftOperand > rightOperand

## odrl:gteq
gt_eq_operator(leftOperand, rightOperand) if leftOperand >= rightOperand

## odrl:isA
## possible?
## is_a_operator(leftOperand, rightOperand)

## odrl:isAllOf
## should be used on sets
is_all_of_operator(leftOperand, rightOperand) if leftOperand == rightOperand

## odrl:isAnyOf
is_any_of_operator(leftOperand, rightOperand) if leftOperand in rightOperand

## odrl:isNoneOf
is_none_of_operator(leftOperand, rightOperand) if not leftOperand in rightOperand

## odrl:isPartOf
is_part_of_operator(leftOperand, rightOperand) if rightOperand in leftOperand

## odrl:lt
lt_operator(leftOperand, rightOperand) if rightOperand > leftOperand

## odrl:lteq
lt_eq_operator(leftOperand, rightOperand) if rightOperand >= leftOperand

## odrl:neq
n_eq_operator(leftOperand, rightOperand) if leftOperand != rightOperand

