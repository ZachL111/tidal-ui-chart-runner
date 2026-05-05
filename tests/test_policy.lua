package.path = "src/?.lua;" .. package.path
local policy = require("policy")

local signal_case_1 = { demand = 93, capacity = 106, latency = 20, risk = 13, weight = 11 }
assert(policy.score(signal_case_1) == 187)
assert(policy.classify(signal_case_1) == "accept")
local signal_case_2 = { demand = 81, capacity = 78, latency = 23, risk = 16, weight = 10 }
assert(policy.score(signal_case_2) == 96)
assert(policy.classify(signal_case_2) == "review")
local signal_case_3 = { demand = 76, capacity = 98, latency = 17, risk = 11, weight = 12 }
assert(policy.score(signal_case_3) == 177)
assert(policy.classify(signal_case_3) == "accept")
