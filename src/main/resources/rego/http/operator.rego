package http.operator

import rego.v1

## http:isInPath
# check that left operand is in the path of the right operand
default is_in_path_operator(leftOperand, rightOperand) := false

is_in_path_operator(leftOperand, rightOperand) if {
  base_segs := path_segments(rightOperand)
  cand_segs := path_segments(leftOperand)

  count(cand_segs) >= count(base_segs)

  segments_match(base_segs, cand_segs)
}

# Split path into segments, ignoring empty parts
path_segments(p) = segs {
    segs := [s |
        s := split(trim(p, "/"), "/")[_]
    ]
}

# Check base segments against candidate segments
segments_match(base, cand) {
    forall(i, base[i] == "*" ; true)
    forall(i, base[i] != "*" ; base[i] == cand[i])
}