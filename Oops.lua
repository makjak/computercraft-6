local name = string

local clock = os.clock

function sleep(n)
    local start = clock()
    while clock() - start <= n do end
end

for k, v in pairs(name) do
    print(k .. " = " .. tostring(v))
end

sleep(1)
print("Erasing contents...")
sleep(1)
for k, v in pairs(name) do
    if type(name[k]) == "function" then
        name[k] = function(...)
            print("No using this")
        end
    else
        name[k] = nil
    end
end
