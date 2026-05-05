package = "tidal-ui-chart-runner"
version = "0.1-1"
source = { url = "." }
description = { summary = "Develop a Lua command-oriented project for chart scenarios with deny and allow fixtures, explainable decision traces, and synthetic fixtures only.", license = "MIT" }
build = { type = "builtin", modules = { policy = "src/policy.lua" } }
