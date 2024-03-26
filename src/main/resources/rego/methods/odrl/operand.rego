package odrl.operand

import rego.v1

#### Logical constraint operands

## odrl:and
and_operand(constraintA, constraintB) if {
	constraintA
	constraintB
}

## odrl:andSequence
and_sequence_operand(constraints) if {
	some constraint in constraints
}

## odrl:or
or_operand(constraints) if {
	true in constraints
}

## odrl:xone
only_one_operand(constraints) if {
	true_constraints := [constraint | some constraint in constraints; constraint == true]
	count(true_constraints) == 1
}