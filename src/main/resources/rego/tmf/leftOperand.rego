package tmf.leftOperand

import rego.v1

## tmf:lifecycleStatus
# return the lifeCycleStatus of a given entity
life_cycle_status(entity) := entity.lifeCycleStatus

## tmf:resource
# retrieves the type of the resource from the path
resource_type(http_part) := resource if {
    path_without_query := split(http_part.path, "?")[0]
    path_elements := split(path_without_query, "/")
    # reverse the path to get the potential id element first
    reversed := array.reverse(path_elements)
    # remove the (potential) id element from the path array
    non_id_parts := [non_id_part | some path_element in reversed; not contains(path_element, "ngsi-ld")]
    # after removal of the id, the resource is the first one to be retrieved
    resource = non_id_parts[0]
}
