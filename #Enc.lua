local g = {}
g.ALI = gg.prompt({
"📂Select File"},
{"/sdcard/download/#TEST.lua"},{"file"})

local DATA = io.input(g.ALI[1], "r"):read("*a")
local PQj = table.concat
cCc = function(c, s)
NZ = {}
for i in ipairs(c) do
CZ = "["..i.."]="..c[i]
table.insert(NZ, CZ)
end
return PQj(NZ, ",")
end
AB = math.random(1,283)
AC = math.random(1,283)
AD = math.random(1,283)
AE = math.random(1,283)
AF = math.random(1,283)
AG = math.random(1,283)
local key = {(AB+AC*AD)-AE,AC,AD*2,AE+AD,AF}local KY1 = (key[5]+key[2]+key[1]*key[4])-key[1]local KY2 = (key[2]+key[3]*1)-key[4]local KY3 = (key[3]+key[1]*key[2])+key[4]local KY4 = (key[1]+key[2]*key[5]*key[5])+key[1]local KY5 = (key[1]+key[5]-key[3])+key[4]local KY6 = (key[5]+key[2]+key[1]*key[4])-key[1]local KY7 = (key[2]+key[3]*1)-key[4]local KY8 = (key[5]+key[1]*key[2])+key[3]local KY9 = (key[3]+key[4]-key[1]*key[2])+key[5]local KY10 = (key[5]+key[1]-key[2])+key[3]
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
function enc2(str)
sd = {}
gb = {str:byte(1,-1)}
res = ''
LESS = '\\144'
for i = 1, #gb do
gb[i] = (gb[i] - KEY3[5] + KEY3[3] - KEY3[6] + KEY3[3] - KEY3[8] * KEY3[4] + KEY3[7] - KEY3[5] * KEY3[10] + KEY3[9] * KEY3[15] + KEY3[12] + KEY3[13] + KEY3 [14] + KEY3[15] - KEY3[16] - KEY3[17] - KEY3[18] - KEY3[19] - KEY3[20]) % 256
K=LESS:rep(gb[i])
table.insert(sd, '"'..K..'"')
end
return "\n{\nALI = {"..cCc(sd, ",").."\n}\n}"
end
local Key53 = KEY2[2];local Key14 = KEY2[3];local inv256
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
if not inv256 then inv256 = {} for M = 0, 127 do local inv = -1 repeat inv = inv + 2 until inv * (2*M + 1) % 256 == 1 inv256[M] = inv end;end local K, F = Key53, KEY2[4] + Key14 return (data:gsub('.', function(m)local L = K % KEY2[5];local H = (K - L) / KEY2[5];local M = H % 128;local m = m:byte()local c = (m * inv256[M] - (H - M) / 128) % 256 K = L * F + H + c + m return ('%02x'):format(c)end))end

function encode(c) return 'gg[ALIQ({ALI = "' .. Sha(c) .. '"})]('
end
function encode1(c) 
return '' .. enc(c) .. ')' 
end


-- function 2
function encode2(c)
 return 'PORN(\n' .. enc2(c) .. '\n)'
 end


function encode3(c) 
return 'PORN(\n' .. enc2(c) .. '\n)' 
end




xnxx=[[
local AB = ]]..AB..[[;local iimi = Key10;local iimi = 8271;local iimi = 4817;local AC = ]]..AC..[[;local iimi = 9272;local iimi = 2727;local iimi = 3727;local iimi = 4783;local iimi = 9473;local iimi = 4783;local iimi = 8363;local AD = ]]..AD..[[;local iimi = 3073;local iimi = 8362;local iimi = 7392;local AE = ]]..AE..[[;local iimi = 7494;local AF = ]]..AF..[[;local iimi = 3728;local AG = ]]..AG..[[;local key = {(AB+AC*AD)-AE,AC,AD*2,AE+AD,AF} local KY1 = (key[5]+key[2]+key[1]*key[4])-key[1]local KY2 = (key[2]+key[3]*1)-key[4]local KY3 = (key[3]+key[1]*key[2])+key[4]local KY4 = (key[1]+key[2]*key[5]*key[5])+key[1]local KY5 = (key[1]+key[5]-key[3])+key[4]local KY6 = (key[5]+key[2]+key[1]*key[4])-key[1]local KY7 = (key[2]+key[3]*1)-key[4]local KY8 = (key[5]+key[1]*key[2])+key[3]local KY9 = (key[3]+key[4]-key[1]*key[2])+key[5]local KY10 = (key[5]+key[1]-key[2])+key[3]
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

local Key53 = KEY2[2];local Key14 = KEY2[3];local inv256
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
local ALIQ = function(data)
data = data.ALI
local K, F = Key53, KEY2[4] + Key14 return (data:gsub('%x%x', function(c) local L = K % KEY2[5] local H = (K - L) / KEY2[5] local M = H % 128 c = tonumber(c, 16) local m = (c + (H - M) / 128) * (2*M + 1) % 256 K = L * F + H + c + m return string.char(m)end))end
function PORN(c)
c = c.ALI
res = ''
for i in ipairs(c) do
res = res..string.char((#c[i] + KEY3[5] - KEY3[3] + KEY3[6] - KEY3[3] + KEY3[8] * KEY3[4] - KEY3[7] + KEY3[5] * KEY3[10] - KEY3[9] * KEY3[15] - KEY3[12] - KEY3[13] - KEY3[14] - KEY3[15] + KEY3[16] + KEY3[17] + KEY3[18] + KEY3[19] + KEY3[20]) % 256)
end
return res
end
]]

DATA = DATA
:gsub('%".-(.-)%"', encode2)
:gsub("%'.-(.-)%'", encode3)
:gsub('%[%[.-(.-)%]%]', encode2)
:gsub("gg%.(%a+)%(", encode)
DATA=xnxx..DATA
DATA=[[
local _ = '💎 Encryption by ALI AL-Qaisi \\000 + Sha 💎'
local Q = {}
Q.Q = function()


]]..DATA..[[

end
Q.Q()
]]
io.open(g.ALI[1]..".lua","w"):write(string.dump(load(DATA), true)):close()
gg.alert(":(")