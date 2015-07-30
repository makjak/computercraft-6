setmetatable(G_, {__call = function()
    print("Hi")
end})

()

io.read()
