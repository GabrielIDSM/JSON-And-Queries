import {newJSON} from './newJSON.js'

console.log("\n\n==========JSON-QUERY PROJECT==========\n")
newJSON('Request', 'reports', (newValue) => {
    console.log("\nQUERY 1: reports\nRESULT:\n")
    console.log(newValue)
    console.log("\nTYPEOF: " + typeof newValue)
})

newJSON('Request', 'reports[params=0].maintainability', (newValue) => {
    console.log("\nQUERY 2: reports[params=0].maintainability\nRESULT:\n")
    console.log(newValue)
    console.log("\nTYPEOF: " + typeof newValue)
})