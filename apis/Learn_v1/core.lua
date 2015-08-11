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
