term.clear()
term.setCursorPos(0, 0)

function copyInternet(url, file)
    if type(url) != "string" then
        error(2, "Expected String For URL")
    elseif type(file) != "string" then
        error(2, "Expected String For File Name")
    
    local http = http.get(url)
    local fileHandle = fs.open(file, "w")
    fileHandle.write(http)
    fs.close(fileHandle)
end

function githubURL(repository, user, filePath, branch)
    branch = branch or "master"
    if string.sub(filePath, 1, 1) == "/" then
        filePath = string.sub(user, 2)
    end
    return format("http://raw.github.com/%s/%s/%s/%s", user, repository, branch, filePath)
end
