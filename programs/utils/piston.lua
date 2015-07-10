tArgs = {...}
local usr = tArgs[1]
local package = tArgs[2]
local installPath = ""
if usr = %ROOT% then
    installPath = "/usr/pkgs" .. package
elseif usr ~= string.match(usr, "[%w_-]*") then
    error("User contains invalid characters")
elseif not fs.isDir("/home/" .. usr)
else
    installPath = "/home/" .. usr .. "/bin/pkgs"
end
