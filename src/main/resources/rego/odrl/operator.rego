package odrl.operator

import rego.v1

## odrl:eq
# check that both operands are equal
eq_operator(leftOperand, rightOperand) if {
    print(leftOperand)
    print(rightOperand)
    leftOperand == rightOperand
}

## odrl:hasPart
# check that the rightOperand is in the leftOperand
has_part_operator(leftOperand, rightOperand) if rightOperand in leftOperand

## odrl:gt
# check that the leftOperand is greater than the rightOperand
gt_operator(leftOperand, rightOperand) if leftOperand > rightOperand

## odrl:gteq
# check that the leftOperand is greater or equal to the rightOperand
gt_eq_operator(leftOperand, rightOperand) if leftOperand >= rightOperand

## odrl:isAllOf
# check that the given sets are equal
is_all_of_operator(leftOperand, rightOperand) if leftOperand == rightOperand

## odrl:isAnyOf
# check that the leftOperand is contained in the rightOperand set
is_any_of_operator(leftOperand, rightOperand) if leftOperand in rightOperand

## odrl:isNoneOf
# check that the leftOperand is not contained in the rightOperand set
is_none_of_operator(leftOperand, rightOperand) if not leftOperand in rightOperand

## odrl:isPartOf
# check that the rightOperand is contained in the leftOperand set
is_part_of_operator(leftOperand, rightOperand) if rightOperand in leftOperand

## odrl:lt
# check that the leftOperand is less than the rightOperand
lt_operator(leftOperand, rightOperand) if rightOperand > leftOperand

## odrl:lteq
# check that the leftOperand is less or equal to the rightOperand
lt_eq_operator(leftOperand, rightOperand) if rightOperand >= leftOperand

## odrl:neq
# check that the operands are unequal
n_eq_operator(leftOperand, rightOperand) if leftOperand != rightOperand

