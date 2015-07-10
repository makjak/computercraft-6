tArgs = {...}
local usr = tArgs[1]
local package = tArgs[2]
local installPath = ""
if usr = %ROOT% then
    installPath = "/usr/pkgs" .. package
elseif 
else
    installPath = "/home/" .. usr .. "/bin/pkgs"
end
