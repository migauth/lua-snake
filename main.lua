--Snake Game

--Add controls
--Add boundaries


local speed = 1000
local length = 10
local x = 100
local y = 100

local function createRect()
  rect = {}
  rect.width = 10
  rect.length = 10
  rect.x = 100
  rect.y = 100

  table.insert(rectangles, rect)
end

function love.load()
  rectangles = {}
  tick = require"tick"

  -- card = love.graphics.newImage("creamboi.png")

  createSquare = false

  tick.delay(function () createSquare = true end, 2)

  createRect()
end

function love.keypressed(key)
  if key == "space" then
    createRect()
  end
end

function love.update(dt)
  print("X= ", rect.x, "Y= ", rect.y)

  tick.update(dt)

  if love.keyboard.isDown("d") then
    rect.x = rect.x + speed * dt
  elseif love.keyboard.isDown("a") then
    rect.x = rect.x - speed * dt
  elseif love.keyboard.isDown("s") then
    rect.y = rect.y + speed * dt
  elseif love.keyboard.isDown("w") then
    rect.y = rect.y - speed * dt
  end

  if rect.x < 0 then
    rect.x = 1
  elseif rect.x > 790 then
    rect.x = 789
  elseif rect.y < 0 then
    rect.y = 1
  elseif rect.y > 590 then
    rect.y = 589
  end
end

function love.draw()
  love.graphics.rectangle('fill', rect.x, rect.y, rect.length, rect.width)
  -- love.graphics.draw(card, 200, 200)
  if rect.x > 100 then
    love.graphics.print("hi!", 100, 100)
  end

  if createSquare then
    -- love.graphics.rectangle("fill", math.random(100,500), math.random(100,500), 10, 10)
  end
end
