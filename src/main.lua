currentScreen = 0

function onTick()
    mouseX = input.getNumber(3)
    mouseY = input.getNumber(4)
    pressed = input.getBool(1)
    if pressed and isInBox(5, 5, 200, 20, mouseX, mouseY) then
        currentScreen = 1
    end
end

function onDraw()
    if currentScreen == 0 then
        screen.drawRectF(5, 5, 200, 20)
        screen.drawTextBox(5, 5, 200, 20, "Winch", 0, 0)
    end
    if currentScreen == 1 then

    end
end

function isInBox(x, y, w, h, mouseX, mouseY)
    if x > mouseX and x + w < mouseX and y > mouseY and y + h < mouseY then
        return true
    else
        return false
    end
end
