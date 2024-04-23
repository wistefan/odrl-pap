package odrl.rightOperand

import rego.v1


## odrl:policyUsage
# return the current time in ms, e.g. the time that the policy is used
policy_usage := time.now_ns() / 1000000