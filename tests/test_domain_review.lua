package.path = "src/?.lua;" .. package.path
local review = require("domain_review")

local item = { signal = 44, slack = 44, drag = 10, confidence = 86 }
assert(review.score(item) == 188)
assert(review.lane(item) == "ship")
