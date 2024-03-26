package odrl.assignee

import rego.v1

## odrl:uid
## odrl:assignee
is_user(user, uid) if user == uid