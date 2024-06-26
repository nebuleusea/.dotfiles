local config = {}

local appearance = require("config.appearance")
for k, v in pairs(appearance) do
	config[k] = v
end

local bindings = require("config.bindings")
for k, v in pairs(bindings) do
	config[k] = v
end

local fonts = require("config.fonts")
for k, v in pairs(fonts) do
	config[k] = v
end

local launch = require("config.launch")
for k, v in pairs(launch) do
	config[k] = v
end

return config
