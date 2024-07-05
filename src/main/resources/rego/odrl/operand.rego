package odrl.operand

import rego.v1

## odrl:and
# checks if all given constraints are true
and_operand(constraints) if {
	true_constraints := [constraint | some constraint in constraints; constraint == true]
	count(true_constraints) == count(constraints)
}

## odrl:andSequence
# checks if all given constraints are true
and_sequence_operand(constraints) if {
	and_operand(constraints)
}

## odrl:or
# check that at least one of the constraints is true
or_operand(constraints) if {
	true in constraints
}

## odrl:xone
# check that exactly one of the constraints is true
only_one_operand(constraints) if {
	true_constraints := [constraint | some constraint in constraints; constraint == true]
	count(true_constraints) == 1
}