function removeIf(txt, i, match)
    return string.sub(txt, 1, i - 1) .. ((string.sub(txt, i, i) == match) ? "" : string.sub(txt, i, i)) .. string.sub(txt, i + 1)
end

function parseLayer(txt)
    local parsed = string.sub(txt, (string.sub(txt, 1, 1) == "{") ? 2 : 1, string.len(txt) - ((string.sub(txt, string.len(txt) - 1) == "}") ? 1 : 0))
	return parsed
end

--print(parseLayer("{Stuff:\"TXT\"}"))

--fun = "fun"
--print(fun[1])

print(removeIf("Fun", 1, "F"))
