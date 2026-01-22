package http.operator_test

import data.http.operator

# Should return true if path contains the given segment
test_is_in_path_true if {
	operator.is_in_path_operator("/api/v1/users", "/api/v1")
}

test_is_in_path_wildcard_true if {
	operator.is_in_path_operator("/my-uudi/api/v1/users", "/*/api/v1")
}

# Should return false if path does not contains the given segment. Must be false and not undefined
test_is_in_path_false if {
	operator.is_in_path_operator("/api/v1/users", "/api/v2") == false
}

test_is_in_path_wildcard_false if {
    operator.is_in_path_operator("/api/v2/users", "/*/api/v2") == false
}

# Should return false if left operand is empty
test_is_in_path_empty_left if {
	operator.is_in_path_operator("", "/api/v1") == false
}
