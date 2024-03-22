package odrl.action

import rego.v1

## action odrl:modify
is_modification(request) if request.method == "PATCH"

## action odrl:delete
is_deletion(request) if request.method == "DELETE"

## action odrl:read
is_read(request) if request.method == "GET"

## action odrl:use
is_use(request) if {
    methods := ["DELETE", "GET", "POST", "PUT", "PATCH"]
    request.method in methods
}
