local worldMeta = {
    function passSecond(self)
        for k, v in ipairs(self.points) do
            local pos = self["points"][k]["pos"]
            local x, y, z = unpack(pos)
            local motion = self["points"][k]["motion"]
            local motionX, motionY, motionZ = unpack(motion)
            local newX, newY, newZ = motionX + x, motionY + y, motionZ + z
        end
    end
end
