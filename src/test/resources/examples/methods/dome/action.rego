package dome.action

import rego.v1

## action dome-op:create
is_creation(request) if request.method == "POST"

# is_set_publish(request) if {
 # check if create or modify
 # check status field
#}

