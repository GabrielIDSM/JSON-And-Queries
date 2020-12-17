import { createRequire } from 'module';
const require = createRequire(import.meta.url);

const fs = require('fs')
const jsonata = require('jsonata')

function newJSON(fileName, query, callback) {
    fs.readFile('./'+fileName+'.json', 'utf8', (err, jsonString) => {
        if (err) {
            console.log("File read failed:", err)
            return
        }
        callback(jsonata(query).evaluate(JSON.parse(jsonString)))
    })
}

export { newJSON }