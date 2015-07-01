local tArgs = {...}

function getProperty(text, prop){
        return text.split(prop)[2].split(";")[1]
}

function getPropertyText(section, text){
        return text.split("--[[<" + section + ">")[2].split("END]]--")[1], " ", "")
}
