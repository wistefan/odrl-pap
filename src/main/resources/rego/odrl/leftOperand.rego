package odrl.leftOperand

import rego.v1

## odrl:currentTime - convert to ms
current_time := time.now_ns() / 1000000
