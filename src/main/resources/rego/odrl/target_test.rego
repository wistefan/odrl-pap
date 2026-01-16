package odrl.target_test

import data.odrl.target

# -----------------------
# is_target
# -----------------------
test_is_target_true if {
	tgt := "uid:example:123"
	target.is_target(tgt, tgt) == true
}

test_is_target_false if {
	tgt1 := "uid:example:123"
	tgt2 := "uid:example:456"
	target.is_target(tgt1, tgt2) == false
}
