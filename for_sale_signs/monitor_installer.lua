local monitor = peripheral.find("monitor")
local monitor_x,_ = monitor.getSize()

if monitor_x == 5 then
    shell.run("wget https://raw.githubusercontent.com/connorhedgehog/foxmall/refs/heads/main/for_sale_signs/monitor_5x4.lua startup.lua")
else
    shell.run("wget https://raw.githubusercontent.com/connorhedgehog/foxmall/refs/heads/main/for_sale_signs/monitor_6x4.lua startup.lua")
end

-- run the morefonts installer
shell.run("wget run https://pinestore.cc/d/37")

-- reboot to run the sign software!
os.reboot()