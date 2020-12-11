local jmespath = require "jmespath"
local expression = "foo.baz"
local data = { foo = { baz = "bar" } }
local result = jmespath.search(expression, data)

print(result)