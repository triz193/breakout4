-- LockedBrick.lua
LockedBrick = Class{}

function LockedBrick:init(x, y, image, quads)
    self.image = image
    self.tier = 0
    self.color = 1
    self.quads = quads
    self.x = x
    self.y = y
    self.width = 32
    self.height = 16
    self.inPlay = true
    self.ball = nil -- Initialize ball property


end

function LockedBrick:hit()
     
end

function LockedBrick:destroy()
    -- For example, set a flag to mark it for removal from the bricks list
    self.inPlay = false
end

function LockedBrick:update(dt)
end

function LockedBrick:render()
    love.graphics.draw(self.image, gFrames['lockedbrick'][1], self.x, self.y)
end

function LockedBrick:renderParticles()
    love.graphics.draw(self.psystem, self.x + 16, self.y + 8)
end

function LockedBrick:isLockedBrick()
    return true
end

return LockedBrick

