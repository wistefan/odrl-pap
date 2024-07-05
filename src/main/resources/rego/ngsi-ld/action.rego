package ngsild.action

import rego.v1

## ngsild:create
# Check if the given request is a creation
is_creation(request) if request.method == "POST"

