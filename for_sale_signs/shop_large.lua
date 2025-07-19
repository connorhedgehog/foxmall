local monitor = peripheral.find("monitor")
local monitor_x,monitor_y = monitor.getSize()
monitor.setTextColor(colors.black)
monitor.setBackgroundColor(colors.white)
monitor.setCursorPos(1,1)
monitor.clear()

local expect = require "cc.expect".expect

--- Draws a line of text, centering it inside a box horizontally.
---@param win window The window to draw on
---@param x number The X position of the left side of the box
---@param y number The Y position of the box
---@param width number The width of the box to draw in
---@param text string The text to draw
---@param fgColor color|nil The color of the text (defaults to white)
---@param bgColor color|nil The color of the background (defaults to black)
local function centerLabel(win, x, y, width, text, fgColor, bgColor)
    expect(1, win, "table")
    expect(2, x, "number")
    expect(3, y, "number")
    expect(4, width, "number")
    expect(5, text, "string")
    fgColor = expect(6, fgColor, "number", "nil") or colors.white
    bgColor = expect(7, bgColor, "number", "nil") or colors.black
    assert(#text <= width, "string is too long")
    win.setCursorPos(x + math.floor((width - #text) / 2), y)
    win.setTextColor(fgColor)
    win.setBackgroundColor(bgColor)
    win.write(text)
end

local window = window.create(monitor, 1, 1, monitor_x, monitor_y)
window.setTextColor(colors.black)
window.setBackgroundColor(colors.white)
window.clear()

centerLabel(window, 1, 1, monitor_x, "This shop space is for sale!", colors.black, colors.white)

centerLabel(window, 1, 3, monitor_x, "Price: 15KRO every 2 weeks", colors.black, colors.white)

centerLabel(window, 1, 5, monitor_x, "Contact bugrey (MC or Disc) to purchase", colors.black, colors.white)