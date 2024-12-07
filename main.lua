--Snake Game

--Add controls
--Add boundaries

local speed = 1000
local length = 10



function love.load()
  x = 100
  y = 100
end

function love.update(dt)
  print("X= ", x, "Y= ", y)

  if love.keyboard.isDown("right") then
    x = x + speed * dt
  elseif love.keyboard.isDown("left") then
    x = x - speed * dt
  elseif love.keyboard.isDown("down") then
    y = y + speed * dt
  elseif love.keyboard.isDown("up") then
    y = y - speed * dt
  end

  if x < 0 then
    x = 1
  elseif x > 790 then
    x = 789
  elseif y < 0 then
    y = 1
  elseif y > 590 then
    y = 589
  end

end

function love.draw()
  love.graphics.rectangle('fill', x, y, length, 10)
  if x > 100 then
    love.graphics.print("hi!", 100, 100)
  end
end

