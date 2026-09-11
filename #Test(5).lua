local g = {}
g.ALI = gg.prompt({
"📂Select File"},
{"/sdcard/download/#TEST.lua"},{"file"})

local DATA = io.input(g.ALI[1], "r"):read("*a")
Mk = math.random(2,63)
KY={}
-- u can make it 999 Keys
for i = 1,20 do 
S = Mk + math.random(2,53)
table.insert(KY, S)
end
function PORN(c)
KEY={}
for i in ipairs(c) do
XNXX = (c[i] + KY[1] + KY[2] * KY[3] + KY[4] * KY[5]) % 256
table.insert(KEY, XNXX)
end
return KEY
end
PORN(KY)
local KAY = (KEY[1]+KEY[2]*KEY[3])*KEY[5]
local KAY2 = (KEY[1]+KEY[5]-KEY[6]*KEY[7])+KEY[8]
local KAY3 = (KEY[3]+KEY[4]*KEY[7])*KEY[8]
function enc(str)
sd = {}
gb = {str:byte(1,-1)}
res = ''
LESS = '\\000'
for i = 1, #gb do
gb[i] = (gb[i] - KAY - (KAY2 + i) * (KAY3 + i)) % 256
K=LESS:rep(gb[i])
table.insert(sd, '"'..K..'"')
end
return "\n{\nALI = {"..table.concat(sd, ",").."\n}\n}"
end


function encode(c) 
return 'gg[xnxx(\n' .. enc(c) .. ')](' 
end

function encode2(c) 
return 'xnxx(\n' .. enc(c) .. '\n)' 
end




xnxx=[[
local GetKey = {]]..table.concat(KY, ",")..[[}

function PORN(c)
KEY={}
for i in ipairs(c) do
XNXX = (c[i] + GetKey[1] + GetKey[2] * GetKey[3] + GetKey[4] * GetKey[5]) % 256
table.insert(KEY, XNXX)
end
return KEY
end
PORN(GetKey)

local KAY = (KEY[1]+KEY[2]*KEY[3])*KEY[5]
local KAY2 = (KEY[1]+KEY[5]-KEY[6]*KEY[7])+KEY[8]
local KAY3 = (KEY[3]+KEY[4]*KEY[7])*KEY[8]

function xnxx(c)
c = c.ALI
res = ''
for i in ipairs(c) do
res = res..string.char((#c[i] + KAY + (KAY2 + i) * (KAY3 + i)) % 256)
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
io.open(g.ALI[1]..".lua","w"):write(DATA):close()