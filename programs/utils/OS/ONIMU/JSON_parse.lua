function parseLayer(txt)
    local parsed = string.sub(txt, (string.sub(txt, 1, 1) == "{") ? 2 : 1, string.len(txt) - ((string.sub(txt, string.len(txt) - 1)) ? 1 : 0))
	return parsed
end

--print(parseLayer("{Stuff:\"TXT\"}"))

print(tostring(#txt))
