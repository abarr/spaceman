push = require 'lib/push'

WINDOW_WIDTH = 1200
WINDOW_HEIGHT = 500

VIRTUAL_WIDTH = 1200
VIRTUAL_HEIGHT = 500

local stars = love.graphics.newImage('assets/stars.png')
local starsScroll = 0

local stars_twinkle = love.graphics.newImage('assets/stars_twinkle.png')
local starsScroll = 0

local sun = love.graphics.newImage('assets/sun.png')
local sunScroll = 0

local hills = love.graphics.newImage('assets/hills.png')
local hillsScroll = 0

-- local BACKGROUND_SCROLL_SPEED = 30
-- local GROUND_SCROLL_SPEED = 60

-- local BACKGROUND_LOOPING_POINT = 707

function love.load()
    
    love.graphics.setDefaultFilter('nearest', 'nearest')

    love.window.setTitle('Spaceman')

    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        vsync = true,
        fullscreen = false,
        resizable = true
    })

end

function love.resize(w, h)
    push:resize(w, h)
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end   
end

function love.draw()
    push:start()
    love.graphics.draw(stars, 0, 0)
    love.graphics.draw(sun, 0, 0)
    love.graphics.draw(hills, 0, 0)
    
    push:finish()
end

function love.update(dt)
    love.graphics.draw(stars_twinkle, 0, 0)
end

