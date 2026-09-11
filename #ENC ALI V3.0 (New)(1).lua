local PQj = table.concat
cCc = function(c, s)
NZ = {}
for i in ipairs(c) do
CZ = "["..i.."]="..c[i]
table.insert(NZ, CZ)
end
return PQj(NZ, ",")
end
local g = {}
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
g.DATA = loadfile(g.config)
if g.DATA ~= nil then g.info = g.DATA() g.DATA = nil end
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
print("\n📎Succeeded Encrypt File✓\n\n\n📩Save in "..g.out.."\n\n\n💎ᴇɴᴄʀʏᴘᴛ ʙʏ ᴀʟɪ ᴀʟ-ϙᴀɪsɪ ᴠ3 (New) 💎\n\n\n╔═if Need Help Dm \n╚═➣@ALIAL_QAISI\n\n╔═Telegram\n╚═➣ @XU_UQ")
info = {g.out}
end
local DATA = io.input(g.last):read('*a')
KK1 = math.random(1,283)KK2 = math.random(1,283)AB = math.random(1,283) KK3 = math.random(1,283)KEZ = math.random(1,283)KK4 = math.random(1,283)KK5 = math.random(1,283)KK6 = math.random(1,283)Kymy = math.random(1,283)Kyx = math.random(1,283)KK7 = math.random(1,283)KEZ2 = math.random(1,283) KK = math.random(1,283)AC = math.random(1,283) AD = math.random(1,283) KK8 = math.random(1,283)AE = math.random(1,283) AF = math.random(1,283) AG = math.random(1,283) local key = {(AB+AC*AD)-AE,AC,AD*2,AE+AD,AF} local KY1 = (key[5]+key[2]+key[1]*key[4])-key[1]local KY2 = (key[2]+key[3]*1)-key[4]local KY3 = (key[3]+key[1]*key[2])+key[4]local KY4 = (key[1]+key[2]*key[5]*key[5])+key[1]local KY5 = (key[1]+key[5]-key[3])+key[4]local KY6 = (key[5]+key[2]+key[1]*key[4])-key[1]local KY7 = (key[2]+key[3]*1)-key[4]local KY8 = (key[5]+key[1]*key[2])+key[3]local KY9 = (key[3]+key[4]-key[1]*key[2])+key[5]local KY10 = (key[5]+key[1]-key[2])+key[3]
local PORN = {}
local Key53 = KEZ; local Key14 = KEZ2;
local inv256
function Sha(data)
if not inv256 then
inv256 = {}
for M = 0, 127 do
local inv = -1
repeat inv = inv + 2
until inv * (2*M + 1) % 256 == 1
inv256[M] = inv
end
end
if not inv256 then inv256 = {} for M = 0, 127 do local inv = -1 repeat inv = inv + 2 until inv * (2*M + 1) % 256 == 1 inv256[M] = inv end;end local K, F = Key53, Kymy + Key14 return (data:gsub('.', function(m)local L = K % Kyx;local H = (K - L) / Kyx;local M = H % 128;local m = m:byte()local c = (m * inv256[M] - (H - M) / 128) % 256 K = L * F + H + c + m return ('%02x'):format(c)end))end
HUB={KY1,KY2,KY3,KY4,KY5,KY6,KY7,KY8,KY9,KY10,KY9,KY7,KY5,KY4,KY3,KY10,KY5,KY4,KY2,KY3,KY1,KY9}
function PORNN(c)
KEY={}
for i in ipairs(c) do
XNXX = (c[i] + HUB[1] + HUB[2] - HUB[6] + HUB[3] - HUB[8] * HUB[4] + HUB[7] - HUB[5] * HUB[10] + HUB[9] * HUB[11] + HUB[12] + HUB[13] + HUB [14] + HUB[15] - HUB[16] - HUB[17] - HUB[18] - HUB[19] - HUB[20]) % 256
table.insert(KEY, XNXX)
end
return KEY
end
PORNN(HUB)
function PORNN2(c)
KEY2={}
for i in ipairs(c) do
XNXX = (c[i] + KEY[1] - (KEY[4] + i) + (KEY[2] + i) - (KEY[6] + KEY[5]) + (KEY[7] + KEY[9]) - KEY[8] + KEY[10] - KEY[14] + KEY[12] - KEY[17] + KEY[11] + KEY[17] + i + KEY[16] * KEY[10]) % 256
table.insert(KEY2, XNXX)
end
return KEY2
end
PORNN2(KEY)
function PORNN3(c)
KEY3={}
for i in ipairs(c) do
XNXX = (c[i] + KEY2[1] - (KEY2[2] + i) + (KEY2[3] + i) - (KEY2[4] + KEY2[8]) + (KEY2[6] + KEY2[7]) - KEY2[5] + KEY2[9] - KEY2[13] + KEY2[11] - KEY2[15] + KEY2[12] + KEY2[13] + i + KEY2[10] * KEY2[16]) % 256
table.insert(KEY3, XNXX)
end
return KEY3
end
PORNN3(KEY2)
function XNX(str)
str=Sha(str)
sd = {}
gb = {str:byte(0,-1)}
res = ''
LESS = '\\000'
for i = 1, #gb do
gb[i] = (gb[i] - KEY3[1] + KEY3[2] - KEY3[6] + KEY3[3] - KEY3[8] * KEY3[4] + KEY3[7] - KEY3[5] * KEY3[10] + KEY3[9] * KEY3[11] + KEY3[12] + KEY3[13] + KEY3 [14] + KEY3[15] - KEY3[16] - KEY3[17] - KEY3[18] - KEY3[19] - KEY3[20]) % 256
K=LESS:rep(gb[i])
table.insert(sd, '"'..K..'"')
end
return "{"..cCc(sd, ",").."}"
end
XNXX = 0
repeat
DATA=DATA
:gsub("gg.getRangesList","ggetRngesList")
:gsub("end", "end\nif true then else return end if true then else return end\n")
:gsub('"(.-)"', function(c)
c = load('return "'..c..'"')()
XN = XNX(c)
table.insert(PORN, XN)
XNXX = XNXX + 1
return "ALI(g.ALI["..XNXX.."])"
end)
until DATA:match('"(.-)"') == nil
for k, v in pairs(gg) do
repeat
ambl = "gg." .. k
DATA=DATA
:gsub(ambl, function()
XN = XNX(k)
table.insert(PORN, XN)
XNXX = XNXX + 1
return "gg[ALI(g.ALI["..XNXX.."])]"
end)
until DATA:match(ambl) == nil
end
local XNXXX = table.concat(PORN, ",")
ALI =[[
local g ={}
;if(nil)then;(function()end)();end;
g.ALI = g.ALI
g.ALI = {]]..XNXXX..[[}
g.ALI = g.ALI
;if(nil)then;(function()end)();end;
local Key53 = ]]..KEZ..[[;local Key14 = ]]..KEZ2..[[;local inv256
local QAISI = function(data)
local K, F = Key53, ]]..Kymy..[[ + Key14 return (data:gsub('%x%x', function(c) local L = K % ]]..Kyx..[[ local H = (K - L) / ]]..Kyx..[[ local M = H % 128 c = tonumber(c, 16) local m = (c + (H - M) / 128) * (2*M + 1) % 256 K = L * F + H + c + m return string.char(m)end))end
local AB = ]]..AB..[[;local iimi = Key10;local iimi = 8271;local iimi = 4817;local AC = ]]..AC..[[;local iimi = 9272;local iimi = 2727;local iimi = 3727;local iimi = 4783;local iimi = 9473;local iimi = 4783;local iimi = 8363;local AD = ]]..AD..[[;local iimi = 3073;local iimi = 8362;local iimi = 7392;local AE = ]]..AE..[[;local iimi = 7494;local AF = ]]..AF..[[;local iimi = 3728;local AG = ]]..AG..[[; local key = {(AB+AC*AD)-AE,AC,AD*2,AE+AD,AF}  local KY1 = (key[5]+key[2]+key[1]*key[4])-key[1] local KY2 = (key[2]+key[3]*1)-key[4] local KY3 = (key[3]+key[1]*key[2])+key[4] local KY4 = (key[1]+key[2]*key[5]*key[5])+key[1]local KY5 = (key[1]+key[5]-key[3])+key[4]local KY6 = (key[5]+key[2]+key[1]*key[4])-key[1]local KY7 = (key[2]+key[3]*1)-key[4]local KY8 = (key[5]+key[1]*key[2])+key[3]local KY9 = (key[3]+key[4]-key[1]*key[2])+key[5]local KY10 = (key[5]+key[1]-key[2])+key[3]
HUB={KY1,KY2,KY3,KY4,KY5,KY6,KY7,KY8,KY9,KY10,KY9,KY7,KY5,KY4,KY3,KY10,KY5,KY4,KY2,KY3,KY1,KY9}
function PORNN(c)
KEY={}
for i in ipairs(c) do
XNXX = (c[i] + HUB[1] + HUB[2] - HUB[6] + HUB[3] - HUB[8] * HUB[4] + HUB[7] - HUB[5] * HUB[10] + HUB[9] * HUB[11] + HUB[12] + HUB[13] + HUB [14] + HUB[15] - HUB[16] - HUB[17] - HUB[18] - HUB[19] - HUB[20]) % 256
table.insert(KEY, XNXX)
end
return KEY
end
PORNN(HUB)
function PORNN2(c)
KEY2={}
for i in ipairs(c) do
XNXX = (c[i] + KEY[1] - (KEY[4] + i) + (KEY[2] + i) - (KEY[6] + KEY[5]) + (KEY[7] + KEY[9]) - KEY[8] + KEY[10] - KEY[14] + KEY[12] - KEY[17] + KEY[11] + KEY[17] + i + KEY[16] * KEY[10]) % 256
table.insert(KEY2, XNXX)
end
return KEY2
end
PORNN2(KEY)
function PORNN3(c)
KEY3={}
for i in ipairs(c) do
XNXX = (c[i] + KEY2[1] - (KEY2[2] + i) + (KEY2[3] + i) - (KEY2[4] + KEY2[8]) + (KEY2[6] + KEY2[7]) - KEY2[5] + KEY2[9] - KEY2[13] + KEY2[11] - KEY2[15] + KEY2[12] + KEY2[13] + i + KEY2[10] * KEY2[16]) % 256
table.insert(KEY3, XNXX)
end
return KEY3
end
PORNN3(KEY2)
function ALI(c) res = "" for i in ipairs(c) do res = res..string.char((#c[i] + KEY3[1] - KEY3[2] + KEY3[6] - KEY3[3] + KEY3[8] * KEY3[4] - KEY3[7] + KEY3[5] * KEY3[10] - KEY3[9] * KEY3[11] - KEY3[12] - KEY3[13] - KEY3[14] - KEY3[15] + KEY3[16] + KEY3[17] + KEY3[18] + KEY3[19] + KEY3[20]) % 256)  end return QAISI(res) end
;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;
]]
DATA = ALI..DATA
io.output(g.out,"w")
io.write([[
local _ = "\n\n\n             💎 Encryption By ALi AL-Qaisi Version 3.0 (New)💎\n\n\n                        if Need Encrypt Dm : @XU_UQ\n\n\n"
local Q = {}
Q.Q = function()
]]..DATA..[[
 end
Q.Q()
]])
XN1 = math.random(45,63)XN2 = math.random(XN1,71)XN3 = math.random(XN2,73)XN4 = math.random(XN3,75)XN5 = math.random(XN4,77) XN6 = math.random(XN5,79)
KSMK ="SETTABLE XN1 XN2 XN3\nGETTABLE XN3 XN1 XN2\nGETTABLE XN3 XN1 XN2\nSETTABLE XN3 'gg.alert' XN4\nCALL XN3..XN4 XN3..XN3\nSETTABLE XN1 XN2 XN3\nLOADNIL XN1..XN1\nTEST XN1 0\nMOVE XN4 XN1\nTEST XN1 0\nLOADBOOL XN1 0\nSETTABLE XN1 XN2 XN3\nCALL XN2..XN2\nSETTABLE XN3 'ALLAWI' XN4\nTEST XN1 0\nSETTABLE XN4 XN5 XN6\nGETTABLE XN6 XN3 XN6\nLOADNIL XN2..XN6\nNEWTABLE XN3 0 0\nGETTABUP XN5 u0 'N'\nGETTABLE XN4 XN3 'S'\nGETTABLE XN4 XN2 'G'\nNEWTABLE XN2 0 0\nLOADNIL XN1..XN1\nMOVE XN2 XN1\nNEWTABLE XN4 0 0\nGETTABLE XN4 XN3 'ALLAWI'\nSETTABLE XN3 'ALLAWI' XN4\nTEST XN3 0\nGETTABLE XN3 XN1 XN2\nCALL XN4..XN5 XN4..XN4\nMOVE XN4 XN1\nSELF XN4 XN4 'G'\nCALL XN4..XN4 XN4..XN4\nCALL XN3..XN4 XN3..XN3\nTEST XN1 0\nNEWTABLE XN1 0 0\nGETTABUP XN6 u0 'G'\nLOADNIL XN1..XN1\nSETTABLE XN1 XN2 XN3\nGETTABLE XN3 XN1 XN2\nGETTABLE XN3 XN1 XN2\n"
KSMK = KSMK:gsub("XN1", "v"..XN1):gsub("XN2", "v"..XN2):gsub("XN3", "v"..XN3):gsub("XN4", "v"..XN4):gsub("XN5", "v"..XN5):gsub("XN6", "v"..XN6)
KSMK = KSMK.."\n"
--os.exit()
io.input(g.out, "r")
local DATA = io.read("*a")
DATA = string.dump(load(DATA), true, true)
DATA = gg.internal2(load(DATA), g.out)
io.input(g.out, "r")
DATA = io.read("*a")
DATA = DATA
:gsub('RETURN  ; garbage', KSMK)
:gsub("numparams [^\n]*","numparams 2")
:gsub("is_vararg [^\n]*","is_vararg 8")
:gsub("maxstacksize [^\n]*","maxstacksize 99")
:gsub("linedefined [^\n]*","linedefined 0")
:gsub("lastlinedefined [^\n]*","lastlinedefined 0")
DATA = string.dump(load(DATA), true)
DATA=DATA
:gsub(string.char(table.unpack({0, 0, 0, 0, 0, 2, 8, 99})), 
string.char(table.unpack({219, 0, 0, 0, 237, 250, 1, 250})))
:gsub(string.char(0x01,0x00,0x00,0x00,0x1f,0x00,0x80,0x00), string.char(0x00,0x00,0x00,0x00))
io.open(g.out,"w"):write(DATA):close()
gg.alert("📎Succeeded Encrypt File✓\n\n\n📩Save in "..g.out.."\n\n\n💎ᴇɴᴄʀʏᴘᴛ ʙʏ ᴀʟɪ ᴀʟ-ϙᴀɪsɪ ᴠ3 (New) 💎\n\n\n╔═if Need Help Dm \n╚═➣@ALIAL_QAISI\n\n╔═Telegram\n╚═➣ @XU_UQ","[OK]")
return 
end