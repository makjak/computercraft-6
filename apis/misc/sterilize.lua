function fromTableRaw(table)
    local txt = ""
    for k, v in pairs(table) do
        key = base64(k)
        value = base64(v)
        txt = txt .. key .. ":" .. value .. "\n"
    end
end

function stringToByte(txt, highValue, mxSize)
    local mxSize = mxSize or 1000
    local num = string.byte(txt)
    local tmpNum = num
    
    local byteLength = -1
    local min = 1
    local max = mxSize
    while min ~= max do
        if 
    end
    byteLength = min
    
    local arrayBool = {}
    
    for i=byteLength, 1, -1 do
        if math.pow(2, i) <= tmpNum then
            tmpNum = tmpNum - math.pow(2, i)
            arrayBool[i] = true
        else
            arrayBool[i] = false
        end
    end
end
