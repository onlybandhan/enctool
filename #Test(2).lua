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


--- HIDE KEYS BAD
Key1 = math.random(1,283)Key2 = math.random(1,283)Key3 = math.random(1,283)Key4 = math.random(1,283)Kay1 = math.random(1,283)Kay2 = math.random(1,283)Kay3 = math.random(1,283)Kay4 = math.random(1,283)Kiy1 = math.random(1,283)Kiy2 = math.random(1,283)Kiy3 = math.random(1,283)Kiy4 = math.random(1,283)
local KY = {Key1-Key2*Key4+Key3+Key4}
local KE = {Kay3+Kay2-Kay4}
local KI = {Kiy1+Kiy4*Kiy3+Kiy1}
--END HIDE KEYS BAD


-- function 1
function enc(str)
sd = {}
gb = {str:byte(1,-1)}
res = ''
LESS = '\\000'
for i = 1, #gb do
gb[i] = (gb[i] - KY[1] - (KY[1] + i) * (KY[1] + i)) % 256
K=LESS:rep(gb[i])
table.insert(sd, '"'..K..'"')
end
return "\n{\nALI = {"..cCc(sd, ",").."\n}\n}"
end


-- function 2
function enc2(str)
sd = {}
gb = {str:byte(1,-1)}
res = ''
LESS = '\\000'
for i = 1, #gb do
gb[i] = (gb[i] - KE[1] - (KE[1] + i) * (KE[1] + i)) % 256
K=LESS:rep(gb[i])
table.insert(sd, '"'..K..'"')
end
return "\n{\nIRAQ = {"..cCc(sd, ",").."\n}\n}"
end


-- function 3
function enc3(str)
sd = {}
gb = {str:byte(1,-1)}
res = ''
LESS = '\\000'
for i = 1, #gb do
gb[i] = (gb[i] - KI[1] - (KI[1] + i) * (KI[1] + i)) % 256
K=LESS:rep(gb[i])
table.insert(sd, '"'..K..'"')
end
return "\n{\nQAISI = {"..cCc(sd, ",").."\n}\n}"
end


-- function 1
function encode(c) return 'gg[xnxx(\n' .. enc(c) .. ')](' end
function encode1(c) return '' .. enc(c) .. ')' end


-- function 2
function encode2(c) return 'PORN(\n' .. enc2(c) .. '\n)' end



-- function 3 
function encode3(c) return 'HUB(\n' .. enc3(c) .. '\n)' end




xnxx=[[
local _ = '\n\n💎 Encryption By Person God Of M3Edy💎\n\n'
local Q = {}
Q.Q = function()
local Key1 = ]]..Key1..[[local Key3 = ]]..Key3..[[local Key2 = ]]..Key2..[[local Key4 = ]]..Key4..[[local Kay1 = ]]..Kay1..[[local Kay3 = ]]..Kay3..[[local Kay2 = ]]..Kay2..[[local Kay4 = ]]..Kay4..[[local Kiy1 = ]]..Kiy1..[[local Kiy3 = ]]..Kiy3..[[local Kiy2 = ]]..Kiy2..[[local Kiy4 = ]]..Kiy4..[[
local KY = {Key1-Key2*Key4+Key3+Key4}
local KE = {Kay3+Kay2-Kay4}
local KI = {Kiy1+Kiy4*Kiy3+Kiy1}
-- function 1
function xnxx(c)
c = c.ALI
res = ''
for i in ipairs(c) do
res = res..string.char((#c[i] + KY[1] + (KY[1] + i) * (KY[1] + i)) % 256)
end
return res
end


-- function 2
function PORN(c)
c = c.IRAQ
res = ''
for i in ipairs(c) do
res = res..string.char((#c[i] + KE[1] + (KE[1] + i) * (KE[1] + i)) % 256)
end
return res
end

-- function 3
function HUB(c)
c = c.QAISI
res = ''
for i in ipairs(c) do
res = res..string.char((#c[i] + KI[1] + (KI[1] + i) * (KI[1] + i)) % 256)
end
return res
end
end
Q.Q()
]]


DATA = DATA
:gsub('%".-(.-)%"', encode2)
:gsub("%'.-(.-)%'", encode3)
:gsub('%[%[.-(.-)%]%]', encode2)
:gsub("gg%.(%a+)%(", encode)
DATA=xnxx..DATA
io.open(g.ALI[1]..".lua","w"):write(string.gsub(string.dump(load(DATA),true),"LuaR.","LuaR\t",1)):close()