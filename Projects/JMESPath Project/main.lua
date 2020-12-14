--IMPORT
local jmespath = require "jmespath"
local jsonStorage = require("jsonStorage")
local tableReader = require("tableReader")

--Request.json
data = jsonStorage.loadTable("Request.json")

--CONSULTA SIMPLES
expression = "reports[1].params"
result = jmespath.search(expression, data)
print("==========CONSULTA SIMPLES==========\nQUERY: reports[1].params\n\n" .. result)
expression = "reports[*].params"
result = jmespath.search(expression, data)
print("\nQUERY: reports[*].params\n\n ")
tableReader.Reader(result, 0)

--WHERE
expression = "reports[?path==`cli.js`]"
result = jmespath.search(expression, data)
print("\n==========WHERE==========\nQUERY: reports[?path==`cli.js`]\n")
tableReader.Reader(result, 0)
expression = "reports[?params>`-1`]"
result = jmespath.search(expression, data)
print("\nQUERY: reports[?params>`-1`]\n")
tableReader.Reader(result, 0)
print("\nOBS: Caso a resposta seja um JSON, essa será uma Table")

--FUNCOES
expression = "avg(reports[*].params)"
result = jmespath.search(expression, data)
print("\n=========FUNCOES=========")
print("QUERY: avg(reports[*].params)\n")
print(result)
expression = "sum(reports[*].params)"
result = jmespath.search(expression, data)
print("\nQUERY: sum(reports[*].params)\n")
print(result)
expression = "length(reports)"
result = jmespath.search(expression, data)
print("\nQUERY: length(reports)\n")
print(result)
expression = "length(reports[0].path)"
result = jmespath.search(expression, data)
print("\nQUERY: length(reports[0].path)\n")
print(result)
expression = "min(reports[*].loc)"
result = jmespath.search(expression, data)
print("\nQUERY: min(reports[*].loc)\n")
print(result)

--GROUP BY
print("\n==========GROUP BY==========\nJMESPath nao possui suporte nativo \n")


--JOIN
print("\n==========JOIN==========\nJMESPath nao possui suporte nativo\n")