package odrl.assignee

import rego.v1

## odrl:uid,odrl:assignee
# is the given user id the same as the given uid
default is_user(user, uid) := false

is_user(user, uid) if { user == uid }