package dome.action

import rego.v1

## dome-op:create
# Check if the given request is a creation
is_creation(request) if request.method == "POST"

## dome-op:set_published
# check if the entity is set to published in the request.
is_set_published(request) if {
 # check if create or modify
 # check status field
}

