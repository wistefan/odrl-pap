package odrl.operator
       
import rego.v1

evaluate(constraint, other_constraints) if {
	true_constraints := [c | some c in other_constraints; c == true]
	count(true_constraints) == count(other_constraints)
	constraint
}