package odrl.action

import rego.v1

## action odrl:modify
is_modification(request) if request.method == "PATCH"

## action odrl:delete
is_deletion(request) if request.method == "DELETE"

## action odrl:read
is_read(request) if request.method == "GET"

## action dome-op:create
is_creation(request) if request.method == "POST"

## action odrl:use
is_use(request) if is_deletion(request)

is_use(request) if is_modification(request)

is_use(request) if is_read(request)

is_use(request) if is_creation(request)

is_set_publish(request) if {
 	 // check if create or modify
 	 // check status field
}

