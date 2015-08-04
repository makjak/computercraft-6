local data = {}
local finish = {}

for k, v in pairs(

for k, v in pairs(data) do
    if tostring(v) == tostring(_G) or tostring(v) == tostring(data) then
        table.remove(data, 1)
        continue
    elseif type(v) == "table" then
        for kk, vv in pairs(v) do
            finish[k .. "________" .. kk] = vv
        end
        table.remove(data, 1)
    else
        finish[k] = v
    end
end
