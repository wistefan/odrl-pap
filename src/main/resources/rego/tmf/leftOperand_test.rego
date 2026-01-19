package tmf.leftOperand_test

import data.tmf.leftOperand

# -----------------------
# Tests for life_cycle_status
# -----------------------
test_life_cycle_status_simple if {
	entity := {"lifeCycleStatus": "ACTIVE"}
	leftOperand.life_cycle_status(entity) == "ACTIVE"
}

test_life_cycle_status_missing_field if {
	not leftOperand.life_cycle_status({})
}

# -----------------------
# Tests for resource_type
# -----------------------
test_resource_type_simple if {
	http_part := {"path": "/tmf-api/v1/resources/resource:123"}
	leftOperand.resource_type(http_part) == "resource:123"
}

test_resource_type_with_query if {
	http_part := {"path": "/tmf-api/v1/resources/resource:456?verbose=true"}
	leftOperand.resource_type(http_part) == "resource:456"
}

test_resource_type_multiple_path_elements if {
	http_part := {"path": "/tmf-api/v1/resources/subresource/resource:789"}
	leftOperand.resource_type(http_part) == "resource:789"
}

test_resource_type_no_id if {
	http_part := {"path": "/tmf-api/v1/resources"}
	leftOperand.resource_type(http_part) == "resources"
}

test_resource_type_edge_case_ngsi_ld if {
	http_part := {"path": "/tmf-api/v1/ngsi-ld-resource:999"}
	leftOperand.resource_type(http_part) == "v1" # removes ngsi-ld-* element, next one es "v1"
}
