-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Wendi Yu
-- Created on: Mar 2018
-- 
--calculate the cost of pizza
-----------------------------------------------------------------------------------------

local result = display.newText( "", 1000, 1150, native.systemFont, 70 )

local question1Text = display.newText("What size of pizza would you like, Large or Extra Large? ", 1024, 300, native.systemFont, 75)
local question1TextField = native.newTextField( display.contentCenterX - 400, display.contentCenterY - 300, 700, 110 )
question1TextField.id = "size of pizza textField"

local toppingText = display.newText("What kind of topping would you want to have? (number 1 to 4) ", 1024, 700, native.systemFont, 70)
local toppingTextField = native.newTextField( display.contentCenterX - 400, display.contentCenterY + 90, 700, 110 )
toppingTextField.id = "pizza topping textField"

local enterButton = display.newImageRect("./assets/sprites/enterButton.png", 500, 157 )
enterButton.x = display.contentCenterX + 600
enterButton.y = display.contentCenterY + 100
enterButton.id = "enter button"

local function costofpizza( event )
	-- body
	local costSize = question1TextField.text
	local costToppings = tonumber(toppingTextField.text)
	local subtotal
	local tax
	local total

	if costToppings < 1 or costToppings> 4 then
		result.text = ("Please enter the number between 1 to 4")
	elseif costSize ~= "Large" and costSize ~= "Extra Large" then
		result.text = ("Please enter a vaild size Large or Extra Large")
	elseif costSize == "Extra Large" and costToppings >= 1 then
		subtotal = 10.0+ (0.25+(costToppings*0.75))
		tax = (subtotal*0.13)
		total = subtotal + tax
		result.text = ("Subtotal : $ "..subtotal..  "  Tax : $ "..tax..  "  Total Cost : $ "..total)
	elseif costSize == "Large" and costToppings >= 1 then
		subtotal = 6.0+ (0.25+(costToppings*0.75))
		tax = (subtotal*0.13)
		total = subtotal + tax
		result.text = ("Subtotal : $ "..subtotal.."Tax : $ "..tax.."Total Cost : $ "..total)
	end
end

enterButton:addEventListener("touch", costofpizza)
