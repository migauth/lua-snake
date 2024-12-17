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

local function Rect()
  return {
    width = 10,
    length = 10,
    x = 100,
    y = 100,
  }
end

function love.load()
  -- rectangles = {}
  -- tick = require"tick"

  -- card = love.graphics.newImage("creamboi.png")

  -- createSquare = false

  -- tick.delay(function () createSquare = true end, 2)

  player1 = Rect()
end

function love.keypressed(key)
  if key == "space" then
    createRect()
  end
end

function love.update(dt)
  print("X= ", player1.x, "Y= ", player1.y)

  -- tick.update(dt)

  local player1 = Rect()


  if love.keyboard.isDown("d") then
    player1.x = player1.x + speed * dt
  elseif love.keyboard.isDown("a") then
    player1.x = player1.x - speed * dt
  elseif love.keyboard.isDown("s") then
    player1.y = player1.y + speed * dt
  elseif love.keyboard.isDown("w") then
    player1.y = player1.y - speed * dt
  end

  if player1.x < 0 then
    player1.x = 1
  elseif player1.x > 790 then
    player1.x = 789
  elseif player1.y < 0 then
    player1.y = 1
  elseif player1.y > 590 then
    player1.y = 589
  end
end

function love.draw()
  love.graphics.rectangle('fill', player1.x, player1.y, player1.length, player1.width)
  -- love.graphics.draw(card, 200, 200)
  if player1.x > 100 then
    love.graphics.print("hi!", 100, 100)
  end

  if createSquare then
    -- love.graphics.rectangle("fill", math.random(100,500), math.random(100,500), 10, 10)
  end
end
