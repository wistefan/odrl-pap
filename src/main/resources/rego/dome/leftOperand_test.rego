package dome.leftOperand_test

import data.dome.leftOperand

# ---------- role() ----------
test_role_returns_roles if {
	vc := {"credentialSubject": {"rolesAndDuties": [
		{"target": "org1", "roleNames": ["Admin"]},
		{"target": "org2", "roleNames": ["User"]},
	]}}
	leftOperand.role(vc, "org1") == ["Admin"]
}

test_role_returns_multiple_roles if {
	vc := {"credentialSubject": {"rolesAndDuties": [{"target": "org1", "roleNames": ["Admin", "User"]}]}}
	leftOperand.role(vc, "org1") == ["Admin", "User"]
}

test_role_returns_undefined_for_no_match if {
	vc := {"credentialSubject": {"rolesAndDuties": [{"target": "org1", "roleNames": ["Admin"]}]}}
	not leftOperand.role(vc, "org3")
}

# ---------- current_party() ----------
test_current_party if {
	cred := {"issuer": "org1"}
	cp := leftOperand.current_party(cred)
	cp == "org1"
}

# ---------- owner() ----------
test_owner_returns_owner_id if {
	related := [
		{"id": "1", "role": "Owner"},
		{"id": "2", "role": "Member"},
	]
	leftOperand.owner(related) == "1"
}

test_owner_returns_undefined_for_no_owner if {
	related := [
		{"id": "2", "role": "Member"},
		{"id": "3", "role": "Contributor"},
	]
	not leftOperand.owner(related)
}

# ---------- valid_for_end_date_time() ----------
test_valid_for_end_date_time if {
	entity := {"validFor": {"endDataTime": "2026-01-16T12:00:00Z"}}
	t := leftOperand.valid_for_end_date_time(entity)
	time.parse_rfc3339_ns("2026-01-16T12:00:00Z") == 1768564800000000000
}

# ---------- valid_for_start_date_time() ----------
test_valid_for_start_date_time if {
	entity := {"validFor": {"startDataTime": "2026-01-16T10:00:00Z"}}
	t := leftOperand.valid_for_start_date_time(entity)
	t == 1768557600000000000
}
