package dome.action

import rego.v1

## dome-op:create
# Check if the given request is a creation
default is_creation(request) := false

is_creation(request) if request.method == "POST"
