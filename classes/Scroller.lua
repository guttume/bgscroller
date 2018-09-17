require "lib.class"

Scroller = class()

function Scroller:init(image)

    self.paint = {
        type = "image",
        filename = image
    }

    self.topBg = display.newRect(display.contentCenterX, 0, display.contentWidth, display.contentHeight)
    self.topBg.anchorY = 0
    self.topBg.fill = self.paint

    self.bottomBg = display.newRect(display.contentCenterX, -display.contentHeight, display.contentWidth, display.contentHeight)
    self.bottomBg.anchorY = 0
    self.bottomBg.fill = self.paint
end

function Scroller:scroll(speed)
    self.topBg.y = self.topBg.y + speed
    self.bottomBg.y = self.bottomBg.y + speed

    if (self.topBg.y >= display.contentHeight) then
        self.topBg.y = self.bottomBg.y - display.contentHeight
    end

    if (self.bottomBg.y >= display.contentHeight) then
        self.bottomBg.y = self.topBg.y - display.contentHeight
    end
end

