function change(startX, startY, endX, endY, screen, color, name)
    local tempScreen = screen
    for y=startY, endY do
        for x=startX, endX do
            screen[name][x][y] = screen[x][y]
            screen[x][y]
        end
    end
end
