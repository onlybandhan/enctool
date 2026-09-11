local g = {}
g.sel = gg.prompt({"File"},{"/sdcard/download/"},{"file"}) if g.sel == nil then return end


---------------------------------Don-t Tuch Those------------------------------------
code = io.open(g.sel[1],"r"):read("*a")
bytess = table.concat({code:byte(1,-1)},',')
Bytes = "pcall(load(string.char(table.unpack({" .. bytess .. "}))))"
----------------------------------------------------------------------------------------------------



------------------------Change Credits Of the end it enc----------------
local Credits = [====[
🛡 Encode By MafiaWar 
🛡 Version 1.0
🛡 Channel @MafiaDecrypter
]====]
--------------------------------------------------------------------------------------------------






----------------------------Here You Put SSTool Codes----------------------
local CodesBlockSS = [[
for i = 1, 0 do local sssss = {} sssss.sel = sssss.data() if sssss.data ~= nil then sssss.sel = sssss.data() end sssss = nil end
for i = 1, 0 do local sssss = {} sssss.sel = sssss.data() if sssss.data ~= nil then sssss.sel = sssss.data() end sssss = nil end
----Like those Codes Hehe
for i = 1, 0 do local sssss = {} sssss.sel = sssss.data() if sssss.data ~= nil then sssss.sel = sssss.data() end sssss = nil end
for i = 1, 0 do local sssss = {} sssss.sel = sssss.data() if sssss.data ~= nil then sssss.sel = sssss.data() end sssss = nil end
]]
----------------------------------------------------------------------------------------------------







------------------Don't Tuch Those Only For Edit Credits--------------------
mp = CodesBlockSS .. "\n" .. Bytes

io.open(g.sel[1].."m", "w"):write(string.gsub(string.dump(load('local ff = [[🛡 Encode By Mafia]]\nfunction M()'..mp..[[

end 
M()]]),true),"LuaR","LuaM",1).."\n\n\n\n"..Credits)
----------------------------------------------------------------------------------------------------



