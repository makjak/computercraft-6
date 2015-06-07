local x, y = term.getSize()
if term.isColor() then
        paintutils.drawBox(0, 0, x / 3, y / 3, color.black)
        paintutils.drawBox(x / 3, 0, x * 2 / 3, y / 3, color.black)
        paintutils.drawBox(x * 2 / 3, 0, x, y / 3, color.black)
        paintutils.drawBox(0,
        term.setBackgroundColor(color.white)

