function createPacket(data, length)
        local start = 1
        local i = 1
        local packet = {}
        while true do
                packet[i] = string.sub(data, start, start + (length - 1)
                start = start + length
        end
        return packet
end

for i = 1, text in pairs(createPacket("qwertyuiopasdfghjklzxcvbnm", 2)) do
        print(text)
end
