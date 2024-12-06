speed = 50

function love.load()
  x = 100
end

function love.update(dt)
  x = x + speed * dt
end

function love.draw()
  love.graphics.print("POOP", 400, 300) 
  love.graphics.rectangle('fill', x, 100, 100, 10)
end

