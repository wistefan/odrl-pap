package ngsild.leftOperand_test

import data.ngsild.leftOperand

# -----------------------
# Tests for type_from_path
# -----------------------
test_type_from_path_with_colon if {
	http_part := {"path": "/ngsi-ld/v1/entities/entity:123:Car"}
	leftOperand.type_from_path(http_part) == "Car"
}

# Case where path does not contain a type, fallback to query
test_type_from_path_fallback_to_query if {
	http_part := {
		"path": "/ngsi-ld/v1/entities/",
		"query": {"type": "Bike"},
	}
	leftOperand.type_from_path(http_part) == "Bike"
}

# Case where path is empty but query param exists
test_type_from_path_empty_path_with_query if {
	http_part := {
		"path": "",
		"query": {"type": "Scooter"},
	}
	leftOperand.type_from_path(http_part) == "Scooter"
}

# Case where path has a colon but query param exists (path takes precedence)
test_type_from_path_path_precedence_over_query if {
	http_part := {
		"path": "/ngsi-ld/v1/entities/entity:999:Truck",
		"query": {"type": "Bus"},
	}
	leftOperand.type_from_path(http_part) == "Truck"
}

# Case where neither path nor query param exists (should return undefined)
test_type_from_path_no_path_no_query if {
	http_part := {"path": "/ngsi-ld/v1/entities/"}
	not leftOperand.type_from_path(http_part)
}

# -----------------------
# Tests for type_from_body
# -----------------------
test_type_from_body_simple if {
	body := {"type": "Scooter"}
	leftOperand.type_from_body(body) == "Scooter"
}

# -----------------------
# Tests for entity_type
# -----------------------
test_entity_type_from_path if {
	http_part := {"path": "/ngsi-ld/v1/entities/entity:456:Truck"}
	leftOperand.entity_type(http_part) == "Truck"
}

test_entity_type_from_body if {
	http_part := {"body": {"type": "Bus"}}
	leftOperand.entity_type(http_part) == "Bus"
}

# -----------------------
# Tests for property_value
# -----------------------
test_property_value if {
	body := {"brandName": {"value": "SuperCar"}}
	leftOperand.property_value("brandName", body) == "SuperCar"
}

# -----------------------
# Tests for property_observed_at
# -----------------------
test_property_observed_at if {
	body := {"brandName": {"observedAt": "2026-01-16T10:00:00Z"}}
	leftOperand.property_observed_at("brandName", body) == "2026-01-16T10:00:00Z"
}

# -----------------------
# Tests for property_modified_at
# -----------------------
test_property_modified_at if {
	body := {"brandName": {"modifiedAt": "2026-01-16T12:00:00Z"}}
	leftOperand.property_observed_at("brandName", body) == "2026-01-16T12:00:00Z"
}

# -----------------------
# Tests for relationship_object
# -----------------------
test_relationship_object if {
	body := {"owningCompany": {"object": "CompanyA"}}
	leftOperand.relationship_object("owningCompany", body) == "CompanyA"
}

# -----------------------
# Tests for entity_type_group
# -----------------------
test_entity_type_group if {
	http_part := {"path": "/ngsi-ld/v1/entities/entity:789:Motorcycle"}
	leftOperand.entity_type_group(http_part) == "Motorcycle"
}
