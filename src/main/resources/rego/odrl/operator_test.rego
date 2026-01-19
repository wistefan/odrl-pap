package odrl.operator_test

import data.odrl.operator

# -----------------------
# eq_operator
# -----------------------
test_eq_operator_true if {
	operator.eq_operator(5, 5) == true
}

test_eq_operator_false if {
	operator.eq_operator(5, 3) == false
}

# -----------------------
# has_part_operator
# -----------------------
test_has_part_operator_true if {
	operator.has_part_operator(["a", "b", "c"], "b") == true
}

test_has_part_operator_false if {
	operator.has_part_operator(["a", "b", "c"], "d") == false
}

# -----------------------
# gt_operator
# -----------------------
test_gt_operator_true if {
	operator.gt_operator(10, 5) == true
}

test_gt_operator_false if {
	operator.gt_operator(5, 10) == false
}

# -----------------------
# gt_eq_operator
# -----------------------
test_gt_eq_operator_equal if {
	operator.gt_eq_operator(5, 5) == true
}

test_gt_eq_operator_false if {
	operator.gt_eq_operator(3, 5) == false
}

# -----------------------
# is_all_of_operator
# -----------------------
test_is_all_of_operator_true if {
	operator.is_all_of_operator(["a", "b"], ["a", "b"]) == true
}

test_is_all_of_operator_false if {
	operator.is_all_of_operator(["a", "b"], ["a"]) == false
}

# -----------------------
# is_any_of_operator
# -----------------------
test_is_any_of_operator_true if {
	operator.is_any_of_operator("a", ["a", "b"]) == true
}

test_is_any_of_operator_false if {
	operator.is_any_of_operator("c", ["a", "b"]) == false
}

# -----------------------
# is_none_of_operator
# -----------------------
test_is_none_of_operator_true if {
	operator.is_none_of_operator("c", ["a", "b"]) == true
}

test_is_none_of_operator_false if {
	operator.is_none_of_operator("a", ["a", "b"]) == false
}

# -----------------------
# is_part_of_operator
# -----------------------
test_is_part_of_operator_true if {
	operator.is_part_of_operator(["x", "y"], "x") == true
}

test_is_part_of_operator_false if {
	operator.is_part_of_operator(["x", "y"], "z") == false
}

# -----------------------
# lt_operator
# -----------------------
test_lt_operator_true if {
	operator.lt_operator(3, 5) == true
}

test_lt_operator_false if {
	operator.lt_operator(5, 3) == false
}

# -----------------------
# lt_eq_operator
# -----------------------
test_lt_eq_operator_equal if {
	operator.lt_eq_operator(5, 5) == true
}

test_lt_eq_operator_false if {
	operator.lt_eq_operator(6, 5) == false
}

# -----------------------
# n_eq_operator
# -----------------------
test_n_eq_operator_true if {
	operator.n_eq_operator(5, 3) == true
}

test_n_eq_operator_false if {
	operator.n_eq_operator(5, 5) == false
}
