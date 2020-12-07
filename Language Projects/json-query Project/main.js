import {newJSON} from './newJSON.js'

newJSON('Request', 'reports', (newValue) => {
    console.log(newValue)
})

newJSON('Request', 'reports[params=0].maintainability', (newValue) => {
    console.log(newValue)
})