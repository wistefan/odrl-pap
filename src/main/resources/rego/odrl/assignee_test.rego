package ordl.assignee_test

import data.odrl.assignee as odrl

# -----------------------
# Tests for is_user
# -----------------------
test_is_user_true if {
	user := "user123"
	uid := "user123"
	odrl.is_user(user, uid) == true
}

test_is_user_false if {
	user := "user123"
	uid := "user456"
	odrl.is_user(user, uid) == false
}
