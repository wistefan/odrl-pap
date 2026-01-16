package odrl.operand

import rego.v1

## odrl:and
# checks if all given constraints are true
default and_operand(constraints) := false

and_operand(constraints) if {
	true_constraints := [constraint | some constraint in constraints; constraint == true]
	count(true_constraints) == count(constraints)
}

## odrl:andSequence
# checks if all given constraints are true
default and_sequence_operand(constraints) := false

and_sequence_operand(constraints) if and_operand(constraints)

## odrl:or
# check that at least one of the constraints is true
default or_operand(constraints) := false

or_operand(constraints) if true in constraints

## odrl:xone
# check that exactly one of the constraints is true
default only_one_operand(constraints) := false

only_one_operand(constraints) if {
	true_constraints := [constraint | some constraint in constraints; constraint == true]
	count(true_constraints) == 1
}
