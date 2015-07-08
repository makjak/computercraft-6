function fromTableRaw(table)
    local txt = ""
    for k, v in pairs(table) do
        key = base64(k)
        value = base64(v)
        txt = txt .. key .. ":" .. value .. "\n"
    end
end

function stringToByte(txt)
    local num = string.byte(txt)
    local arrayBool = {}
    local tmpNum = num
    for i=byteLength, 1, -1 do
        if math.pow(2, i) > tmpNum
end
