local mainTable = {}
local increase = 1

function copyTable(t1, t2)
    for k, v in pairs(t1) do
        t2[increase][k] = v
    end
    increase = increase + 1
    return t2
end
copyTable(_G, mainTable)
local i = 2
repeat for k, v in mainTable do if type(v) == "table" then mainTable = copy(v, mainTable) else print(k .. " = " .. tostring(v)) end end until mainTable == {}
