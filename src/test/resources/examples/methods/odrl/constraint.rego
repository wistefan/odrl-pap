package odrl.operator

import rego.v1

## odrl:eq
eq_constraint(leftOperand, rightOperand) if leftOperand == rightOperand

## odrl:hasPart
has_part_constraint(leftOperand, rightOperand) if rightOperand in leftOperand

## odrl:gt
gt_constraint(leftOperand, rightOperand) if leftOperand > rightOperand

## odrl:gteq
gt_eq_constraint(leftOperand, rightOperand) if leftOperand >= rightOperand

## odrl:isA
## possible?
## is_a_constraint(leftOperand, rightOperand)

## odrl:isAllOf
## should be used on sets
is_all_of_constraint(leftOperand, rightOperand) if leftOperand == rightOperand

## odrl:isAnyOf
is_any_of_constraint(leftOperand, rightOperand) if leftOperand in rightOperand

## odrl:isNoneOf
is_none_of_constraint(leftOperand, rightOperand) if not leftOperand in rightOperand

## odrl:isPartOf
is_part_of_constraint(leftOperand, rightOperand) if rightOperand in leftOperand

## odrl:lt
lt_constraint(leftOperand, rightOperand) if leftOperand < rightOperand

## odrl:lteq
lt_eq_constraint(leftOperand, rightOperand) if leftOperand <= rightOperand

## odrl:neq
n_eq_constraint(leftOperand, rightOperand) if leftOperand != rightOperand

#### Logical constraints

## odrl:and
and_constraint(constraintA, constraintB) if {
	constraintA
	constraintB
}

## odrl:andSequence
and_sequence_constraint(constraints) if {
	some constraint in constraints
}

## odrl:or
or_constraint(constraints) if {
	true in constraints
}

## odrl:xone
only_one_constraint(constraints) if {
	true_constraints := [constraint | some constraint in constraints; constraint == true]
	count(true_constraints) == 1
}
