import { createRequire } from 'module';
const require = createRequire(import.meta.url);

const fs = require('fs')
const jsonQuery = require('json-query')

function newJSON(fileName, query, callback) {
    let result
    fs.readFile('./'+fileName+'.json', 'utf8', (err, jsonString) => {
        if (err) {
            console.log("File read failed:", err)
            return
        }
        var obj = JSON.parse(jsonString)
        obj = jsonQuery(query, {data: obj}).value
        callback(obj)
    })
}

export { newJSON }