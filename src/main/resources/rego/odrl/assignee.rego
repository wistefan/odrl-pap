package odrl.assignee

import rego.v1

## odrl:uid,odrl:assignee
# is the given user id the same as the given uid
is_user(user,uid) if user == uid

## odrl:any
# allows for any user
is_any := true

