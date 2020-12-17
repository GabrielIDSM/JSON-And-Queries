import {newJSON} from './newJSON.js'

console.log("\n\n==========JSONata PROJECT==========\n")

newJSON('Request', 'reports', (newValue) => {
    console.log("\nQUERY 1: reports\nRESULT:\n")
    console.log(newValue)
    console.log("\nTYPEOF: " + typeof newValue)
})

newJSON('Request', 'reports[params=0]', (newValue) => {
    console.log("\nQUERY 2 (WHERE): reports[params=0]\nRESULT:\n")
    console.log(newValue)
    console.log("\nTYPEOF: " + typeof newValue)
})

newJSON('Request', 'reports[0].dependencies{type : line}', (newValue) => {
    console.log("\nQUERY 3.1 (GROUP BY): reports[0].dependencies{type : line}\nRESULT:\n")
    console.log(newValue)
    console.log("\nTYPEOF: " + typeof newValue)
})

newJSON('Request', 'reports[0].dependencies{type : {"line" : line, "path" : path}}', (newValue) => {
    console.log("\nQUERY 3.2 (GROUP BY): reports[0].dependencies{type : {'line' : line, 'path' : path}}\nRESULT:\n")
    console.log(newValue)
    console.log("\nTYPEOF: " + typeof newValue)
})

newJSON('Request', '{"values" : $sum(reports.params)}', (newValue) => {
    console.log("\nQUERY 4.1 (AGG FUNCTIONS): {'values' : $sum(reports.params)}\nRESULT:\n")
    console.log(newValue)
    console.log("\nTYPEOF: " + typeof newValue)
})

newJSON('Request', '{"values" : $max(reports.params)}', (newValue) => {
    console.log("\nQUERY 4.2 (AGG FUNCTIONS): {'values' : $max(reports.params)}\nRESULT:\n")
    console.log(newValue)
    console.log("\nTYPEOF: " + typeof newValue)
})

newJSON('Request', '{"values" : $min(reports.params)}', (newValue) => {
    console.log("\nQUERY 4.3 (AGG FUNCTIONS): {'values' : $min(reports.params)}\nRESULT:\n")
    console.log(newValue)
    console.log("\nTYPEOF: " + typeof newValue)
})

newJSON('Request', '{"values" : $average(reports.params)}', (newValue) => {
    console.log("\nQUERY 4.4 (AGG FUNCTIONS): {'values' : $average(reports.params)}\nRESULT:\n")
    console.log(newValue)
    console.log("\nTYPEOF: " + typeof newValue)
})