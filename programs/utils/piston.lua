tArgs = {...}
local usr = tArgs[1]
local package = tArgs[2]
local installPath = ""
if usr = %ROOT% then
    installPath = "/usr/pkgs" .. package
elseif usr ~= string.match(usr, "[%w_-]*") or fs.isDir("/home/" .. usr) == false
    error("User contains invalid characters")
else
    installPath = "/home/" .. usr .. "/bin/pkgs"
end
