package ngsild.leftOperand

import rego.v1


# helper method to retrieve the type from the path
type_from_path(path) := tfe if {
    print(path)
    path_without_query := split(path, "?")[0]
	path_elements := split(path_without_query, "/")
	id_elements := split(path_elements[count(path_elements) - 1], ":")
	te := id_elements[2]
	print(te)
    tfe = te
} else := tfq if {
    query := split(path, "?")[1]
    query_parts := split(query, "&")
    type_query := [query_part | some query_part in query_parts; contains(query_part, "type=")]
    tf := split(type_query[0], "=")[1]
    print(tf)
    tfq = tf
}

# helper to retrieve the type from the body
type_from_body(body) := body.type

## ngsi-ld:entityType
# retrieves the type from an entity, either from the request path or from the body
entity_type(http_part) := tfp if {
    tf := type_from_path(http_part.path)
	print(tf)
	tfp = tf
} else := tfb if {
    tb := type_from_body(http_part.body)
    print(tb)
	tfb = tb
}

## ngsi-ld:<property>
# retrieves the value of the property, only applies to properties of type "Property". The method should be concretized in the mapping.json, to match a concrete property.
# F.e.: ngsi-ld:brandName = property_value("brandName", http_part.body)
property_value(property_name, body) := body[property_name].value

## ngsi-ld:<property>_observedAt
# retrieves the observedAt of the property The method should be concretized in the mapping.json, to match a concrete property.
# F.e.: ngsi-ld:brandName_observedAt = property_value("brandName", http_part.body)
property_observed_at(property_name,body) := body[property_name].observedAt

## ngsi-ld:<property>_modifiedAt
# retrieves the modifiedAt of the property The method should be concretized in the mapping.json, to match a concrete property.
# F.e.: ngsi-ld:brandName_modifiedAt= property_value("brandName", http_part.body)
property_observed_at(property_name,body) := body[property_name].modifiedAt

## ngsi-ld:<relationship>
# retrieves the object of the relationship, only applies to properties of type "Relationship". The method should be concretized in the mapping.json, to match a concrete property.
# F.e.: ngsi-ld:owningCompany = relationship_object("owningCompany", http_part.body)
relationship_object(relationship_name, body):= body[relationship_name].object

