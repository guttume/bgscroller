require("lib.class")
require("classes.Scroller")

-- nebula background
bgScroller = Scroller("bg1.png")
starScroller = Scroller("stars2.png")

Runtime:addEventListener("enterFrame", function(event) bgScroller:scroll(2) end)
Runtime:addEventListener("enterFrame", function(event) starScroller:scroll(1) end)