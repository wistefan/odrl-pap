package odrl.target

import rego.v1

## odrl:target,odrl:uid
# check that the uid of the target is equal to the given uid
default is_target(target, uid) := false

is_target(target, uid) if target == uid
