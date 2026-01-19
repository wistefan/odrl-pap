package odrl.action_test

import data.odrl.action as odrl

# -----------------------
# Tests for is_modification
# -----------------------
test_is_modification_true if {
	request := {"method": "PATCH"}
	odrl.is_modification(request) == true
}

test_is_modification_false if {
	request := {"method": "POST"}
	odrl.is_modification(request) == false
}

# -----------------------
# Tests for is_deletion
# -----------------------
test_is_deletion_true if {
	request := {"method": "DELETE"}
	odrl.is_deletion(request) == true
}

test_is_deletion_false if {
	request := {"method": "PATCH"}
	odrl.is_deletion(request) == false
}

# -----------------------
# Tests for is_read
# -----------------------
test_is_read_true if {
	request := {"method": "GET"}
	odrl.is_read(request) == true
}

test_is_read_false if {
	request := {"method": "PUT"}
	odrl.is_read(request) == false
}

# -----------------------
# Tests for is_use
# -----------------------
test_is_use_true_get if {
	request := {"method": "GET"}
	odrl.is_use(request) == true
}

test_is_use_true_post if {
	request := {"method": "POST"}
	odrl.is_use(request) == true
}

test_is_use_true_delete if {
	request := {"method": "DELETE"}
	odrl.is_use(request) == true
}

test_is_use_true_put if {
	request := {"method": "PUT"}
	odrl.is_use(request) == true
}

test_is_use_true_patch if {
	request := {"method": "PATCH"}
	odrl.is_use(request) == true
}

test_is_use_false if {
	request := {"method": "OPTIONS"}
	odrl.is_use(request) == false
}
