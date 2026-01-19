package gaiax.leftOperand

import rego.v1

## ovc:leftOperand
# retrieves the claim from the credential, using the json-path of the claim
getClaim(verifiable_credential, claim_path) := claim if {
	# split the path into an array of keys - e.g. "$.my.fancy.claim" becomes ["my","fancy","claim"]
	key_array := split(trim_prefix(claim_path, "$."), ".")

	# walk through the credential, providing tuples of path array & value - e.g. [["my","fancy","claim"], "value]
	walk(verifiable_credential, walked_tuple)

	# check that we found the claim keyed by our path
	walked_tuple[0] == key_array

	# return the actual value
	claim = walked_tuple[1]
}
