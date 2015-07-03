function change(startX, startY, endX, endY, screen, color, alpha)
    local tempScreen = screen
    for i=startY, endY do
        for j=startX, endX do
            local alfaRender = floor(screen[j][k] * (100 - alpha) + 0.5)
        end
    end
end
