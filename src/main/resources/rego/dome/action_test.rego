package dome.action_test

import data.dome.action

# Should return true if the request method is POST
test_is_creation_true if {
	action.is_creation({"method": "POST"})
}

# Should return false if the request method is not POST
test_is_creation_false if {
	action.is_creation({"method": "GET"}) == false
}
