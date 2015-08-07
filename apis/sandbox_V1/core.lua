local denyFiles = {}

local allowed = function(t, action, k)
    return denyFiles[tostring(t)][action][k]
end

function deny(t, action, k)
    print("For " .. tostring(t) .. ", " .. action .. "ing index " .. k .. "is not allowed")
end

local oldRawset = rawset
local raw G
