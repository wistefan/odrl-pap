package http.leftOperand_test

import data.http.leftOperand

# -----------------------
# Tests for http:path
# -----------------------
test_path_returns_path if {
	http_part := {"path": "/api/v1/users"}
	leftOperand.path(http_part) == "/api/v1/users"
}

# -----------------------
# Tests for http:body_value
# -----------------------
test_body_value_simple if {
	body := {"my": {"fancy": {"property": 42}}}
	value_path := "$.my.fancy.property"
	leftOperand.body_value(body, value_path) == 42
}

test_body_value_nested_string if {
	body := {"user": {"profile": {"name": "Alice"}}}
	value_path := "$.user.profile.name"
	leftOperand.body_value(body, value_path) == "Alice"
}

test_body_value_missing_property if {
	body := {"user": {"profile": {"age": 30}}}
	value_path := "$.user.profile.name"
	not leftOperand.body_value(body, value_path)
}

test_body_value_empty_body if {
	body := {}
	value_path := "$.anything"
	not leftOperand.body_value(body, value_path)
}

test_body_value_root_property if {
	body := {"root": "value"}
	value_path := "$.root"
	leftOperand.body_value(body, value_path) == "value"
}
