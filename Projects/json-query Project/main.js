import {newJSON} from './newJSON.js'

var helpers = {
    getDependencies: function(input){
        if (input.dependencies.length < 0){
          return "null array"
        } else {
          return input.dependencies
        }
    }
}

console.log("\n\n==========JSON-QUERY PROJECT==========\n")
newJSON('Request', 'reports', helpers, (newValue) => {
    console.log("\nQUERY 1: reports\nRESULT:\n")
    console.log(newValue)
    console.log("\nTYPEOF: " + typeof newValue)
})

newJSON('Request', 'reports[params=0].maintainability', helpers, (newValue) => {
    console.log("\nQUERY 2 (WHERE): reports[params=0].maintainability\nRESULT:\n")
    console.log(newValue)
    console.log("\nTYPEOF: " + typeof newValue)
})

newJSON('Request', 'reports[0].dependencies[{coreSize}]', helpers, (newValue) => {
    console.log("\nQUERY 3 (INNER): reports[0].dependencies[{coreSize}]\nRESULT:\n")
    console.log(newValue)
    console.log("\nTYPEOF: " + typeof newValue)
})

newJSON('Request', 'reports[0]:getDependencies', helpers, (newValue) => {
    console.log("\nQUERY 4 (HELPERS): reports[0]:getDependencies\nRESULT:\n")
    console.log(newValue)
    console.log("\nTYPEOF: " + typeof newValue)
})