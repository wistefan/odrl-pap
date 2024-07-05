package tmf.action

import rego.v1

## tmf:create
# Check if the given request is a creation
is_creation(request) if request.method == "POST"