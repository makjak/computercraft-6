local foo = {secret = 42, __metatable = nil, __index = deny, __newindex = deny}

function deny()
    print("No")
end

local fun = {
    checkSecret = function(self, check)
        return self.secret == check
    end
}

local foo = {
    secret = 42,
    __metatable = nil,
    __index = deny,
    __newindex = deny
}

print(fun.secret)
