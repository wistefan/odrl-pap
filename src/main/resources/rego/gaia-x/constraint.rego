package gaiax.constraint
       
import rego.v1

## ovc:constraints
# evaluates all provided constraints
evaluate(constraints) if {
	true_constraints := [c | some c in constraints; c == true]
	count(true_constraints) == count(constraints)
}

## ovc:credentialSubjectType
# compares the credentials' subject-type with the provided one
credentialSubjectType(verifiable_credential, credentialSubjectType) if {
    credentialSubjectType == verifiable_credential.credentialSubject.type
}