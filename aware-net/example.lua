--[[<self.param>
    onPain{
        %normal%;
    }
END]]--

term.clear()
local width, height = term.getSize()
term.setCursorPos(width / 2, height / 2)
term.setTextColor(colors.red)
term.write("Hello World")
