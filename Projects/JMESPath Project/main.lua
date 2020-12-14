--IMPORT
local jmespath = require "jmespath"
local jsonStorage = require("jsonStorage")

--TESTE
--local expression = "foo.baz"
--local data = { foo = { baz = "bar" } } --JMESPath utiliza tables
--local result = jmespath.search(expression, data)
--print("TESTE: \n" .. result)

--Request.json
data = jsonStorage.loadTable("Request.json")

--CONSULTA SIMPLES
expression = "reports[1].params"
result = jmespath.search(expression, data)
print("==========CONSULTA SIMPLES==========\nQUERY: reports[1].params\n\n" .. result)
expression = "reports[*].params"
result = jmespath.search(expression, data)
print("\nQUERY: reports[*].params\n\n ")
for index, data in ipairs(result) do
    print("'"..index.."': " .. data)
end

--WHERE
expression = "reports[?path==`cli.js`]"
result = jmespath.search(expression, data)
print("\n==========WHERE==========\nQUERY: reports[?path==`cli.js`]\n")
for index, data in ipairs(result) do
    print("'"..index.."':")

    for key, value in pairs(data) do
        print('', "'"..key.."':", value)
    end
end
print("\nOBS: Caso a resposta seja um JSON, essa será uma Table")

--GROUP BY
--expression = ""
--result = jmespath.search(expression, data)
print("\n==========GROUP BY==========\nQUERY: \n")

--JOIN
--expression = ""
--result = jmespath.search(expression, data)
print("\n==========JOIN==========\nQUERY: \n")

--FUNCOES DE AGREGACAO
expression = "avg(reports[*].params)"
result = jmespath.search(expression, data)
print("\n=========FUNCOES DE AGREGACAO=========")
print("QUERY: avg(reports[*].params)\n")
print(result)
expression = "sum(reports[*].params)"
result = jmespath.search(expression, data)
print("\nQUERY: sum(reports[*].params)\n")
print(result)