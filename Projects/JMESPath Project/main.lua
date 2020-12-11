--IMPORT
local jmespath = require "jmespath"
local jsonStorage = require("jsonStorage")

--TESTE
local expression = "foo.baz"
local data = { foo = { baz = "bar" } } --JMESPath utiliza tables
local result = jmespath.search(expression, data)
print("TESTE: \n" .. result)

--Request.json
data = jsonStorage.loadTable("Request.json")

--CONSULTA SIMPLES
expression = "reports[1].params"
result = jmespath.search(expression, data)
print("\nCONSULTA SIMPLES: \n" .. result)

--WHERE
expression = "reports[?path==`cli.js`]"
result = jmespath.search(expression, data)
print("\nWHERE: \n")
for index, data in ipairs(result) do
    print(index)

    for key, value in pairs(data) do
        print('\t', key, value)
    end
end