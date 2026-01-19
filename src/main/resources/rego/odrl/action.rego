package odrl.action

import rego.v1

## odrl:modify
# checks if the given request is a modification
default is_modification(request) := false

is_modification(request) if request.method == "PATCH"

## odrl:delete
# checks if the given request is a deletion
default is_deletion(request) := false

is_deletion(request) if request.method == "DELETE"

## odrl:read
# checks if the given request is a read operation
default is_read(request) := false

is_read(request) if request.method == "GET"

## odrl:use
# checks if the given request is a usage
default is_use(request) := false

is_use(request) if request.method in ["DELETE", "GET", "POST", "PUT", "PATCH"]
