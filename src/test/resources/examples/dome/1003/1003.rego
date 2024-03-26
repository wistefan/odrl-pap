package system

import dome.leftOperand
import odrl.operator
import odrl.target
import helper.req
import rego.v1
import odrl.action

default allow := false

allow if {
eq_operator(role(helper.req.credential()),"onboarder")
is_read(helper.req.request())
is_target(helper.reg.target(),"urn:ngsi-ld:button:onboard")
}