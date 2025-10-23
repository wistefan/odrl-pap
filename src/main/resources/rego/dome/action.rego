package dome.action

import rego.v1

## dome-op:create
# Check if the given request is a creation
is_creation(request) if request.method == "POST"

