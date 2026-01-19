package vc.leftOperand_test

import data.vc.leftOperand

# -----------------------
# Tests for role
# -----------------------
test_role_single_match if {
	vc := {"credentialSubject": {"roles": [
		{"target": "org1", "names": ["Admin", "User"]},
		{"target": "org2", "names": ["Viewer"]},
	]}}
	leftOperand.role(vc, "org1") == ["Admin", "User"]
}

test_role_no_match if {
	vc := {"credentialSubject": {"roles": [{"target": "org1", "names": ["Admin", "User"]}]}}
	not leftOperand.role(vc, "orgX")
}

test_role_empty_roles if {
	vc := {"credentialSubject": {"roles": []}}
	not leftOperand.role(vc, "org1")
}

# -----------------------
# Tests for current_party
# -----------------------
test_current_party_simple if {
	credential := {"issuer": "did:example:org1"}
	leftOperand.current_party(credential) == "did:example:org1"
}

test_current_party_missing_issuer if {
	not leftOperand.current_party({})
}

# -----------------------
# Tests for types
# -----------------------
test_types_array if {
	vc := {"type": ["VerifiableCredential", "EmployeeCredential"]}
	leftOperand.types(vc) == ["VerifiableCredential", "EmployeeCredential"]
}

test_types_string if {
	vc := {"type": "VerifiableCredential"}
	leftOperand.types(vc) == ["VerifiableCredential"]
}

test_types_missing if {
	not leftOperand.types({})
}
