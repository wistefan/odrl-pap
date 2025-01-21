package http.leftOperand

import rego.v1

## http:path
# returns the currently requested path
path(http_part) := http_part.path