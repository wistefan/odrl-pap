package http.operator

import rego.v1

## http:isInPath
# check that left operand is in the path of the right operand
default is_in_path_operator(leftOperand, rightOperand) := false
is_in_path_operator(leftOperand, rightOperand) if { startswith(leftOperand, rightOperand) }
