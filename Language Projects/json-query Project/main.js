var jsonQuery = require('json-query')
const fs = require('fs')
const JsonQuery = require('json-query')

fs.readFile('./Request.json', 'utf8', (err, jsonString) => {
    if (err) {
        console.log("File read failed:", err)
        return
    }
    var obj = JSON.parse(jsonString)
    console.log(jsonQuery('changeCost', {data: obj}))
})