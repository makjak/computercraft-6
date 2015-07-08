function fromTableRaw(table)
    local txt = ""
    for k, v in pairs(table) do
        key = base64(k)
        value = base64(v)
        txt = txt .. key .. ":" .. value .. "\n"
    end
end
