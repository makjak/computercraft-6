local worldMeta = {
    function date(self)
        return tostring(self.tick)
    end,
    
    function passSecond(self)
        local logReturn = ""
        
        for k, v in ipairs(self.points) do
            self:updateMotion()
            
            local pos = self.points[k].pos
            local x, y, z = unpack(pos)
            
            local motion = self.points[k].motion
            local motionX, motionY, motionZ = unpack(motion)
            
            local newX, newY, newZ = motionX + x, motionY + y, motionZ + z
            
            logReturn = logReturn .. format("Moved %s from %d, %d, %d to %d, %d, %d at %s", self.points[k].name, x, y, z, newX, newY, newZ, self:date()) .. "\n"
            
            self.tick = self.tick + 1
        end
    end,
    
    tick = 0,
    
    materials = {
        hydrogen = {
            solid = 0,
            liquid = 0,
            gas = 0,
            plasma = 0
        oxygen
        water
    }
}
