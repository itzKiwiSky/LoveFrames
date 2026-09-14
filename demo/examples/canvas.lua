local example = {}
example.title = "Button"
example.category = "Object Demonstrations"

function example.func(loveframes, centerarea)
    local rectX = 0
    local rectY = 0
    local speedX = 2.5
    local speedY = 2.5

    local frame = loveframes.Create("frame")
    frame:SetName("Canvas")
    frame:SetWidth(600)
    frame:SetHeight(400)
    frame:CenterWithinArea(unpack(centerarea))

    local canvas = loveframes.Create("canvas")
    canvas:SetParent(frame)
    canvas:SetSize(frame:GetWidth(), frame:GetHeight())
    canvas.DrawOnCanvas = function(obj)
        love.graphics.rectangle("fill", x, y, 32, 32)
    end

    frame.Update = function(obj, elapsed)
        if x + 32 >= frame:GetWidth() or x <= 0 then
            speedX = -speedX
        end

        if y + 32 >= frame:GetHeight() or y <= 0 then
            speedY = -speedY
        end

        x = x + speed
        y = y + speed
    end
end

return example
