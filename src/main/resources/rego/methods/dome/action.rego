package dome.action

import rego.v1

## action dome-op:create
is_creation(request) if request.method == "POST"

## action dome-op:set_published
is_set_published(request) if {
 # check if create or modify
 # check status field
}

