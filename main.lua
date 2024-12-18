--Snake Game

--Add controls
--Add boundaries

push = require 'push'

WINDOW_HEIGHT = 600
WINDOW_WIDTH = 800

VIRTUAL_HEIGHT = 20
VIRTUAL_WIDTH = 50


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
  -- love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
  --   fullscreen = false,
  --   resizable = false,
  --   vsync = true
  -- })

  push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
    fullscreen = false,
    resizable = false,
    vsync = true
  })

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
  love.graphics.printf(
    "SNAKE",
    0,
    WINDOW_HEIGHT / 2-6,
    WINDOW_WIDTH,
    "center"
  )

  love.graphics.rectangle('fill', player1.x, player1.y, player1.length, player1.width)

  if player1.x > 100 then
    love.graphics.print("hi!", 100, 100)
  end

  if createSquare then
    -- love.graphics.rectangle("fill", math.random(100,500), math.random(100,500), 10, 10)
  end
end
