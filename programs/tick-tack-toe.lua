local x, y = term.getSize()
local thirdX, thirdY = x / 3, y / 3
local two-thirdX, two-thirdY = thirdX * 2, thirdY * 2

if term.isColor() then
        paintutils.drawBox(0, 0, thirdX, thirdY, color.black)
        paintutils.drawBox(thirdX, 0, two-thirdX, thirdY, color.black)
        paintutils.drawBox(two-thirdX, 0, x, thirdY, color.black)
        
        paintutils.drawBox(0, thirdY, thirdX, two-thirdY, color.black)
        paintutils.drawBox(thirdX, thirdY, two-thirdX, two-thirdY, color.black)
        paintutils.drawBox(two-thirdX, thirdY, x, two-thirdY)
        
        paintutils.drawBox(0, two-thirdY, thirdX, y, color.black)
        term.setBackgroundColor(color.white)

