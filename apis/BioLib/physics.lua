local worldMeta = {
    function passSecond(self)
        local logReturn = ""
        for k, v in ipairs(self.points) do
            self:updateMotion()
            local pos = self.points[k].pos
            local x, y, z = unpack(pos)
            local motion = self.points[k].motion
            local motionX, motionY, motionZ = unpack(motion)
            local newX, newY, newZ = motionX + x, motionY + y, motionZ + z
            logReturn = logReturn + format("Moved %s from %d, %d, %d to %d, %d, %d at %", self.points[k].name, x, y, z, newX, newY, newZ, )
        end
    end
end
