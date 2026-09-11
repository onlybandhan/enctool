local ChByte = {0,10,0,240,159,135,174,240,159,135,169,32,82,65,82,32,65,67,73,76,32,72,65,78,68,83,79,77,69,32,240,159,135,174,240,159,135,169,10,0}
local WRT = ([[function NS()
for i = 1, 0 do
ACIL
end
gg.alert("HALLO RAR BABY CUTE❤")
end
NS()]])
local WRT = WRT:gsub("ACIL", function()
local x = "do return end\n"
x = x:rep(12)
return x
end)

io.output(gg.getFile()..".chunk.lua")
io.write(WRT)
local DT = string.dump(loadfile(gg.getFile()..".chunk.lua"), true)
local T = {}
for i = 1, 10 do
table.insert(T, 31)
table.insert(T, 0)
table.insert(T, 128)
table.insert(T, 0)
end
DT = DT:gsub(string.char(table.unpack(T)), string.char(table.unpack(ChByte)))
io.output(gg.getFile()..".chunk.lua")
io.write(DT)



