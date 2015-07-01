function nextMove(map, start, end, canMove)
        local mapLayout = {}
        local sizeX = map["sizeX"]
        local sizeY = map["sizeY"]
        local sizeZ = map["sizeZ"]
        
        local size = {}
        size["sizeX"] = sizeX
        size["sizeY"] = sizeY
        size["sizeZ"] = sizeZ
end

function defaultMove(pos, size, properties)
        if properties["id"] == 0 then
                return true
        end
        return false
end
