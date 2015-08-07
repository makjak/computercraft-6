fun = {cat = 1}
setmetatable(_G, {__index = fun})
setmetatable(fun, {__index = _G})

for k, v in pairs(_G) do
    if type(v) == "table" then
        for kk, vv in pairs(v) do
            print(tostring(k) .. "----" .. tostring(kk) .. " = " .. tostring(vv))
        end
    else
        print(tostring(k) .. " = " .. tostring(v))
    end
end
