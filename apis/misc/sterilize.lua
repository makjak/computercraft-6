function fromTableRaw(table)
    local txt = ""
    subNum = 1
    subs = {}
    for k, v in pairs(table) do
        if 
        key = base64(k)
        value = base64(v)
        txt = txt .. key .. ":" .. value .. "\n"
    end
end

function numberToByte(num, mxSize, f)
    local f = f or math.floor
    local mxSize = mxSize or 1000
    local tmpNum = num
    
    local byteLength = -1
    local min = 1
    local max = mxSize
    while min ~= max do
        local halfway = f((min + max) / 2 + min)
        if math.pow(2, halfway) > num then
            max = halfway - 1
        elseif math.pow(2, halfway) < num then
            min = halfway + 1
        end
        if max - min == 1 then
            min = max
        end
    end
    byteLength = max
    
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
