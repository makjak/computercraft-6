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
    for i=byteLength, 1, -1 do
        arrayBool[i] = 2
end
