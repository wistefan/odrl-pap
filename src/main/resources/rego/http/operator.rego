package http.operator

import rego.v1

## http:isInPath
# check that left operand is in the path of the right operand
default is_in_path_operator(leftOperand, rightOperand) := false

is_in_path_operator(leftOperand, rightOperand) if {
   	base_segs := split_path(rightOperand)
    cand_segs := split_path(leftOperand)

    # candidate must be at least as deep as base
    count(cand_segs) >= count(base_segs)

    # there must be NO mismatching segment
    not segment_mismatch(base_segs, cand_segs)
}

# -------- helpers --------

# Normalize path into segments
split_path(p) = segs if {
    segs := split(trim(p, "/"), "/")
}

# True if ANY segment mismatches
segment_mismatch(base, cand) if {
    some i
    i < count(base)
    base[i] != "*"
    base[i] != cand[i]
}