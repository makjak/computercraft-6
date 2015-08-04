local data = {_G}
for k, v in pairs(data) do
    if tostring(v) == tostring(_G) or tostring(v) == tostring(data) then
        --TODO: Stuffs
    end
end
