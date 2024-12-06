--Snake Game

--Add controls
--Add boundaries

local speed = 200
local length = 10



function love.load()
  x = 100
  y = 100
end

function love.update(dt)
  print("X= ", x, "Y= ", y)

  if love.keyboard.isDown("right") then
    x = x + 100 * dt
  end
  if love.keyboard.isDown("left") then
    x = x - 100 * dt
  end
  if love.keyboard.isDown("down") then
    y = y + 100 * dt
  end
  if love.keyboard.isDown("up") then
    y = y - 100 * dt
  end
end

function love.draw()
  love.graphics.rectangle('fill', x, y, length, 10)
end

