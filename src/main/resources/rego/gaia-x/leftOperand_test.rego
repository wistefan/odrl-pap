package gaiax.leftOperand_test

import data.gaiax.leftOperand

# -----------------------
# Tests for getClaim
# -----------------------

test_get_claim_simple_path if {
	vc := {"credentialSubject": {"name": "Alice"}}
	leftOperand.getClaim(vc, "$.credentialSubject.name") == "Alice"
}

test_get_claim_nested_path if {
	vc := {"credentialSubject": {"organization": {
		"id": "org-123",
		"name": "ExampleOrg",
	}}}
	leftOperand.getClaim(vc, "$.credentialSubject.organization.id") == "org-123"
}

test_get_claim_deeply_nested_path if {
	vc := {"a": {"b": {"c": {"d": 42}}}}
	leftOperand.getClaim(vc, "$.a.b.c.d") == 42
}

test_get_claim_array_value if {
	vc := {"credentialSubject": {"roles": ["Admin", "User"]}}
	leftOperand.getClaim(vc, "$.credentialSubject.roles") == ["Admin", "User"]
}

test_get_claim_object_value if {
	vc := {"credentialSubject": {"address": {
		"country": "ES",
		"city": "Madrid",
	}}}
	leftOperand.getClaim(vc, "$.credentialSubject.address") == {
		"country": "ES",
		"city": "Madrid",
	}
}

test_get_claim_non_existing_path if {
	vc := {"credentialSubject": {"name": "Alice"}}
	not leftOperand.getClaim(vc, "$.credentialSubject.age")
}

test_get_claim_wrong_root if {
	vc := {"credentialSubject": {"name": "Alice"}}
	not leftOperand.getClaim(vc, "$.nonExisting.name")
}

test_get_claim_missing_prefix if {
	vc := {"credentialSubject": {"name": "Alice"}}

	# trim_prefix only removes "$." if present, so this still works
	leftOperand.getClaim(vc, "credentialSubject.name") == "Alice"
}

test_get_claim_empty_object if {
	vc := {}
	not leftOperand.getClaim(vc, "$.credentialSubject.name")
}
