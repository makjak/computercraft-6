local TArgs = {...}

function getProperty(text, prop){
        return text.split(prop)[2].split(";")[1]
}
