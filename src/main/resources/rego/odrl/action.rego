package odrl.action

import rego.v1

## odrl:modify
# checks if the given request is a modification
is_modification(request) if request.method == "PATCH"

## odrl:delete
# checks if the given request is a deletion
is_deletion(request) if request.method == "DELETE"

## odrl:read
# checks if the given request is a read operation
is_read(request) if request.method == "GET"

## odrl:use
# checks if the given request is a usage
is_use(request) if {
    methods := ["DELETE", "GET", "POST", "PUT", "PATCH"]
    request.method in methods
}
