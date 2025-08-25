package http.leftOperand

import rego.v1

## http:path
# returns the currently requested path
path(http_part) := http_part.path

## http:bodyValue
# retrieves the value of the body content at the given path.
body_value(body,value_path) := property if {
   # split the path into an array of keys - e.g. "$.my.fancy.property" becomes ["my","fancy","property"]
   key_array := split(trim_prefix(value_path, "$."), ".")
   # walk through the body, providing tuples of path array & value - e.g. [["my","fancy","property"], "value]
   walk(body, walked_tuple)
   # check that we found the property keyed by our path
   walked_tuple[0] == key_array
   # return the actual value
   property = walked_tuple[1]
}