local worldMeta = {
    function passSecond(self)
        for k, v in ipairs(self.points) do
            pos = self.points[k].pos
            x, y, z = unpack(pos)
        end
    end
