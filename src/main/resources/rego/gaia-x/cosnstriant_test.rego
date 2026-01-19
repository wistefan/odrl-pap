package gaiax.constraint_test

import data.gaiax.constraint

# -----------------------
# Tests for evaluate
# -----------------------

test_evaluate_all_true if {
	constraint.evaluate([true, true, true]) == true
}

test_evaluate_single_true if {
	constraint.evaluate([true]) == true
}

test_evaluate_with_false if {
	constraint.evaluate([true, false, true]) == false
}

test_evaluate_all_false if {
	constraint.evaluate([false, false]) == false
}

test_evaluate_empty_list if {
	constraint.evaluate([]) == true
}

# -----------------------
# Tests for credentialSubjectType
# -----------------------

test_credential_subject_type_match if {
	vc := {"credentialSubject": {"type": "Participant"}}
	constraint.credentialSubjectType(vc, "Participant") == true
}

test_credential_subject_type_no_match if {
	vc := {"credentialSubject": {"type": "ServiceOffering"}}
	constraint.credentialSubjectType(vc, "Participant") == false
}

test_credential_subject_type_missing_type if {
	vc := {"credentialSubject": {}}
	constraint.credentialSubjectType(vc, "Participant") == false
}

test_credential_subject_type_missing_subject if {
	vc := {}
	constraint.credentialSubjectType(vc, "Participant") == false
}
