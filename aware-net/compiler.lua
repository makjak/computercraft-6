local tArgs = {...}

function getProperty(text, prop){
        return text.split(prop)[2].split(";")[1]
}

function getPropertyText(text){
        return text.split("--[[
}
