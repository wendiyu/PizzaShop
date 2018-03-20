-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Wendi Yu
-- Created on: Mar 2018
-- 
--calculate the cost of pizza
-----------------------------------------------------------------------------------------

local question1Text = display.newText("What size of pizza would you like, large or extra large? ", 924, 300, native.systemFont, 75)
local question1TextField = native.newTextField( display.contentCenterX - 400, display.contentCenterY - 300, 700, 110 )
question1TextField.id = "size of pizza textField"

local question2Text = display.newText("What kind of topping would you want to have? (number 1 to 4) ", 1024, 700, native.systemFont, 70)
local question2TextField = native.newTextField( display.contentCenterX - 400, display.contentCenterY + 90, 700, 110 )
question2TextField.id = "pizza topping textField"

local subtotal = display.newText("subtotal:", 324, 1100, native.systemFont, 90)
local tax = display.newText("Tax:", 924, 1100, native.systemFont, 90)
local total = display.newText("Total Cost:", 1624, 1100, native.systemFont, 90)

local enterButton = display.newImageRect("./assets/sprites/enterButton.png", 500, 157 )
enterButton.x = display.contentCenterX + 600
enterButton.y = display.contentCenterY + 90
enterButton.id = "enter button"

