local monitor = peripheral.find("monitor")
local mf = require("morefonts")

local monitor_x,monitor_y = monitor.getSize()

monitor.setTextColor(colors.black)
monitor.setBackgroundColor(colors.white)
monitor.setCursorPos(1,1)
monitor.clear()

monitor.setCursorPos(monitor_x/2-7, 10)
monitor.write("This monitor is")

mf.writeOn(monitor, "up for grabs!", nil, 12)

monitor.setCursorPos(monitor_x/2-26, 16)
monitor.write("Contact bugrey (/mail or Discord) to claim it for free!")

monitor.setCursorPos(monitor_x/2-9, 26)
monitor.write("Limit 2 per person.")
