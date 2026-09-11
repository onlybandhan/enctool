--Chunk
KSMK = "MOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nTEST v0 0\nLOADBOOL v0 0\nLOADNIL v1..v1\nUNM v2 v2\nMOD v2 v2 nil\nLEN v2 v0\nEQ 1 v1 v2\nBNOT v3 v0\nCALL v2..v2 v2..v2\nOP[83] 0x0a\nOP[48] 0xae879ff0\nOP[48] 0xb6879ff0\nMOVE v0 v0\nOP[48] 0xa6879ff0\nMOVE v0 v0\nOP[48] 0xb1879ff0\nMOVE v0 v0\nOP[48] 0xae879ff0\nMOVE v0 v0\nOP[48] 0xae879ff0\nOP[48] 0xb6879ff0\nOP[83] 0x0a\nOP[83] 0x0a\nOP[48] 0xae879ff0\nOP[48] 0xb6879ff0\nMOVE v0 v0\nOP[48] 0xa6879ff0\nMOVE v0 v0\nOP[48] 0xb1879ff0\nMOVE v0 v0\nOP[48] 0xae879ff0\nMOVE v0 v0\nOP[48] 0xae879ff0\nOP[48] 0xb6879ff0\nOP[83] 0x0a\nOP[83] 0x0a\nOP[48] 0xae879ff0\nOP[48] 0xb6879ff0\nMOVE v0 v0\nOP[48] 0xa6879ff0\nMOVE v0 v0\nOP[48] 0xb1879ff0\nMOVE v0 v0\nOP[48] 0xae879ff0\nMOVE v0 v0\nOP[48] 0xae879ff0\nOP[48] 0xb6879ff0\nOP[83] 0x0a\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nTEST v0 0\nLOADBOOL v0 0\nLOADNIL v1..v1\nUNM v2 v2\nMOD v2 v2 nil\nLEN v2 v0\nEQ 1 v1 v2\nBNOT v3 v0\nCALL v2..v2 v2..v2\n"
KSMK = KSMK.."\n"
local g = {}
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
g.DATS = loadfile(g.config)
if g.DATS ~= nil then g.info = g.DATS() g.DATS = nil end
if g.info == nil then g.info = {g.last, g.last:gsub("/[^/]+$", "")} end
while true do
g.info = gg.prompt({
"File",
"path"
},g.info,{
"file",
"path"
})
if g.info == nil then
return
end
gg.saveVariable(g.info, g.config)
g.last = g.info[1]
if loadfile(g.last) == nil then
return gg.alert([[⚠️Script not Found! ⚠️]])
else
g.out = g.last:match("[^/]+$")
g.out = g.out:gsub(".lua", ".(ENC)")
g.out = g.info[2] .. "/" .. g.out .. ".lua"
print("\n▬▬▬▬▬▬▬▬▬▬▬▬▬\n" .. g.out .. "\n▬▬▬▬▬▬▬▬▬▬▬▬▬")
info = {g.out}
end
local DATS = io.input(g.last):read('*a')
AB = math.random(10600,20000) AC = math.random(36000,40000) AD = math.random(57000,607000) AE = math.random(78000,80000) AF = math.random(90700,100000) AG = math.random(38600,60086) local key = {(AB+AC*AD)-AE,AC,AD*2,AE+AD,AF} local KY1 = (key[5]+key[2]+key[1]*key[4])-key[1] local KY2 = (key[2]+key[3]*1)-key[4] local PORN = {}
function XNX(str)
sd = {}
gb = {str:byte(0,-1)}
res = ''
LESS = '\\014'
for i = 1, #gb do
gb[i] = (gb[i] - KY1 - (KY2 + i) * (KY1 + i) ) % 99999
end
return "{"..table.concat(gb, ",").."}"
end
XNXX = 0
repeat
DATS = DATS:gsub("end","\nfor KSMK = 1,0 do;Fr5y = 'Fr5y';end\nend")
DATS = DATS:gsub("end", "if true then else return end if true then else return end\nend")
DATS = DATS:gsub('"(.-)"', function(c)
c = load('return "'..c..'"')()
XN = XNX(c)
table.insert(PORN, XN)
XNXX = XNXX + 1
return "ALI(g.ALI["..XNXX.."])"
end)
until DATS:match('"(.-)"') == nil
for k, v in pairs(gg) do
repeat
ambl = "gg." .. k
DATS = DATS:gsub(ambl, function()
XN = XNX(k)
table.insert(PORN, XN)
XNXX = XNXX + 1
return "gg[ALI(g.ALI["..XNXX.."])]"
end)
until DATS:match(ambl) == nil
end
local XNXXX = table.concat(PORN, ",")
ALI =[[
local g ={}
g.ALI = g.ALI
g.ALI = {]]..XNXXX..[[}
g.ALI = g.ALI
local AB = "]]..AB..[[";local iimi = "7392";local iimi = "8271";local iimi = "4817";AC = "]]..AC..[[";local iimi = "83172";local iimi = "62817";local iimi = "93721";local iimi = "91728";local iimi = "36172";local iimi = "72917";local iimi = "74817";local AD = "]]..AD..[[";local iimi = "61638";local iimi = "19372";local AE = "]]..AE..[[";local iimi = "46272";local AF = "]]..AF..[[";local AG = "]]..AG..[[";local iimi = "163716";local key = {(AB+AC*AD)-AE,AC,AD*2,AE+AD,AF};local KY1 = (key[5]+key[2]+key[1]*key[4])-key[1];local KY2 = (key[2]+key[3]*1)-key[4]
function ALI(c)
res = ""
for m in ipairs(c) do
res = res..string.char((c[m] + KY1 + (KY2 + m) * (KY1 + m)) % 99999)
end
return res
end
]]
DATS = ALI..DATS
io.output(g.out,"w")
io.write([[
local _ = ' \n\n\t\t\t\t\t🛡️ Encryption BY ALi AL-Qaisi (Fucking) V2.0 🛡️\n\n'
for KSMK = 1,0 do;Fr5y = 'Fr5y';end
for KSMK = 1,0 do;Fr5y = 'Fr5y';end
local Q = {}
Q.Q = function()

]]..DATS..[[
end
Q.Q()
]])
io.close()
io.input(g.out, "r")
local DATS = io.read("*a")
DATS = string.dump(load(DATS), true, true)
DATS = gg.internal2(load(DATS), g.out)
io.input(g.out, "r")
DATS = io.read("*a")
DATS = DATS:gsub('RETURN  ; garbage', KSMK)
DATS = DATS:gsub('SETTABUP u0 "Fr5y" "Fr5y"', KSMK)
DATS = string.dump(load(DATS), true)
io.open(g.out,"w"):write(DATS):close()
gg.alert("🛡️ Encryption BY ALi AL-Qaisi 🛡️\n\n"..g.out..".{ENC}")
return  
end 