package odrl.operand_test

import data.odrl.operand
import data.odrl.operator

# -----------------------
# and_operand
# -----------------------
test_and_operand_all_true if {
	query1 := operator.eq_operator("a", "a")
	query2 := operator.eq_operator("b", "b")
	query3 := operator.eq_operator("c", "c")
	operand.and_operand([query1, query2, query3]) == true
}

test_and_operand_one_false if {
	query1 := operator.eq_operator("a", "a")
	query2 := operator.eq_operator("b", "c") # false
	query3 := operator.eq_operator("c", "c")
	operand.and_operand([query1, query2, query3]) == false
}

# -----------------------
# and_sequence_operand
# -----------------------
test_and_sequence_operand_all_true if {
	query1 := operator.eq_operator(1, 1)
	query2 := operator.eq_operator(2, 2)
	operand.and_sequence_operand([query1, query2]) == true
}

test_and_sequence_operand_false if {
	query1 := operator.eq_operator(1, 2) # false
	query2 := operator.eq_operator(2, 2)
	operand.and_sequence_operand([query1, query2]) == false
}

# -----------------------
# or_operand
# -----------------------
test_or_operand_one_true if {
	query1 := operator.eq_operator("x", "y") # false
	query2 := operator.eq_operator("a", "a") # true
	query3 := operator.eq_operator("b", "c") # false
	operand.or_operand([query1, query2, query3]) == true
}

test_or_operand_all_false if {
	query1 := operator.eq_operator("x", "y")
	query2 := operator.eq_operator("a", "b")
	operand.or_operand([query1, query2]) == false
}

# -----------------------
# only_one_operand (xone)
# -----------------------
test_only_one_operand_true if {
	query1 := operator.eq_operator(1, 2) # false
	query2 := operator.eq_operator(3, 3) # true
	query3 := operator.eq_operator(4, 5) # false
	operand.only_one_operand([query1, query2, query3]) == true
}

test_only_one_operand_none_true if {
	query1 := operator.eq_operator(1, 2) # false
	query2 := operator.eq_operator(3, 4) # false
	operand.only_one_operand([query1, query2]) == false
}

test_only_one_operand_more_than_one_true if {
	query1 := operator.eq_operator("a", "a") # true
	query2 := operator.eq_operator("b", "b") # true
	query3 := operator.eq_operator("c", "d") # false
	operand.only_one_operand([query1, query2, query3]) == false
}
