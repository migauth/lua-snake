--Snake Game

--Add controls
--Add boundaries

speed = 200
length = 10



function love.load()
  x = 100
end

function love.update(dt)
  if x < 790 then
    x = x + speed * dt
    print(x)
  end
  if love.keyboard.isDown("right") then
    x = x + 100 * dt
  end

end

function love.draw()
  love.graphics.rectangle('fill', x, 100, length, 10)
end

