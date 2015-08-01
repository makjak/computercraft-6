tArgs = {...}
local package = tArgs[1]
local usr = tArgs[2] or "%ROOT%"
local installPath = ""

if usr == "%ROOT%" then
    installPath = "/os/programs/pkgs" .. package
elseif usr ~= string.match(usr, "[%w_-]*") then
    error("User contains invalid characters")
elseif not fs.isDir("/home/" .. usr) then
    error("User does not exist")
else
    installPath = "/home/" .. usr .. "/bin/pkgs"
end

local dataFile = "/os/programData/pkgs/"
do
    local file = fs.open(dataFile .. "pkgURLs.data", "r")
    if not file then
        print("Creating pkgURLs.data")
        fs.close(fs.open("pkgURL.data", "w"))
        print("File pkgURL.data created")
        print("Downloading database...")
    end
    local packageURL = 
