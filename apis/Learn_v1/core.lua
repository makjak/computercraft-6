function findInsertSpot(t)
    lastK = 0
    for k, v in pairs(t) do
        if lastK + 1 < k then
            return lastK + 1
        elseif v == nil then
            return k
        else
            lastK++
        end
    end
end

local nodeMeta = {
    name = "(Unregistered)"
    
    binary = true
    value = 0
    
    unstable = 0
    ticksStable = 0
    
    hold = 0
    holdValue = 0
    
    setValue = function(self, reason, params)
        reason = reason or "Unknown"
        
        if reason == "EMP" then
            self.stage = 2
            self.ticksStable = params["ticks"]
        elseif reason == "Hold"
            self.stage = 3
            self.ticksStable = 0
            self.holdValue = params["newValue"]
        elseif reason == "Reset Stage"
            self.stage = 1
        elseif reason == "Basic_IO"
            self.value = params["newValue"]
        else
            if doPrint = 1 then
                print("You tried to call setValue() on " .. self.name .. "with no valid reason. You may see unexpected results")
            end
        end
    end
}

local nodeNetMeta = {
    nodeDictionary = {},
    nodes = {},
    
    newNode
    
    addNode = function(self, name)
        if nodes[name] == nil then
            local newNode = {}
            set
            nodes[name] = 
}

local actionMeta = {
    fire = {},
    
    pointer = 1,
    
    setPointer = function(self, newPointer)
        self.pointer = newPointer
    end,
    
    resetPointer = function(self)
        self:setPointer(1)
    end,
    
    writeData = function(self, nodes)
        self.fire[self.pointer] = nodes
    end
}

function newAction()
    local action = {}
    setmetatable(action, actionMeta)
    return action
end

doPrint = 1
