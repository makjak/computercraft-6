function change(startX, startY, endX, endY, screen, color, alpha)
    local tempScreen = screen
    for i=startY, endY do
        for j=startX, endX do
            tempScreen[j][k] = screen[j][k]
        end
    end
end
