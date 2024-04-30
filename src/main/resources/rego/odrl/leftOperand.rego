package odrl.leftOperand

import rego.v1

## odrl:currentTime
# returns the current time in ms
current_time := time.now_ns() / 1000000
