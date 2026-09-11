
local g = {}
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
g.DATA = loadfile(g.config)
if g.DATA ~= nil then g.info = g.DATA() g.DATA = nil end
if g.info == nil then g.info = {g.last, g.last:gsub("/[^/]+$", "")} end
while true do
g.info = gg.prompt({
"📤File📤",
"📥path📥",
},g.info,{
"file",
"path",
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
local DATA = io.input(g.last):read('*a')
SO = math.random(0x20,0x50)
SN = math.random(0x20,0x50)
ST = math.random(0x20,0x50)
SF = math.random(0x20,0x50)
k = math.random(100,2000)
kk = math.random(300,4000)
F = math.random(500,6000)
A = math.random(700,8000)
B = math.random(900,10000)
C = math.random(1000,20000)
D = math.random(3000,40000)
H = math.random(5000,60000)
Q = math.random(7000,80000)
W = math.random(9000,100000)
local Key = {k+kk+F+A+B+C+D+H+Q+W,kk*k+F+A+B+C+D+H+Q+W}
local Kye = {W-Q-H-D-C-B-A-F-kk-k,k+kk+F+A+B+C+D+H+Q+W}
local Kye2 ={kk*k+W+Q+H+D+C+B+A+F,kk+k+F+A+B+C+D+H+Q+W}
local Key2 ={kk*k+H+Q+W+D+A+B+C+F,Q+k+kk+F+A+B+C+D+H+W}
function enc(str)
sd = {}
str=str:gsub("\\n","\n")
gb = {str:byte(1,-1)}
res = ''
for i = 1, #gb do
gb[i] = (gb[i] - Kye[1] - (Key[2] + i) * (Key[1] + i)) % 256
end
return "\n{\nS14 = {"..table.concat(gb, ",").."\n}\n}"
end

-- function 2


Angela=([[
gg.searchNumber(string.char(4,255,255,1,0)
:rep(200)
:rep(200), 5)
debug.traceback(5, nil, string.char(4,255,255,1,0)
:rep(200)
:rep(200)
:rep(10))
]])
KREST=([[
;if(nil)then;(function()end)();end

if true then else return end if true then else return end
]])
DATA = DATA:gsub("end","end\n"..Angela)
DATA = DATA:gsub("end","end\n"..KREST)
lasm = 'B = "AnGeLu"\n'
lasm = lasm:rep(30000)
Angel =[[
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local B
]]..lasm..[[

local k = ]]..k..[[
local kk = ]]..kk..[[
local F = ]]..F..[[
local A = ]]..A..[[
local B = ]]..B..[[
local C = ]]..C..[[
local D = ]]..D..[[
local H = ]]..H..[[
local Q = ]]..Q..[[
local W = ]]..W..[[
local Key = {k+kk+F+A+B+C+D+H+Q+W,kk*k+F+A+B+C+D+H+Q+W}
local Kye = {W-Q-H-D-C-B-A-F-kk-k,k+kk+F+A+B+C+D+H+Q+W}
local Kye2 ={kk*k+W+Q+H+D+C+B+A+F,kk+k+F+A+B+C+D+H+Q+W}
local Key2 ={kk*k+H+Q+W+D+A+B+C+F,Q+k+kk+F+A+B+C+D+H+W}
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end



function Angel(c)
c = c.S14
res = ''
for i in ipairs(c) do
res = res..string.char((c[i] + Kye[1] + (Key[2] + i) * (Key[1] + i)) % 256)
end
return res
end
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local Key53 = ]]..SO..[[;local Key14 = ]]..SN..[[;local inv256
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
local AnGel = function(data)
data = data.S14
local K, F = Key53, ]]..ST..[[ + Key14 return (data:gsub('%x%x', function(c) local L = K %]]..SF..[[ local H = (K - L) / ]]..SF..[[ local M = H % 128 c = tonumber(c, 16) local m = (c + (H - M) / 128) * (2*M + 1) % 256 K = L * F + H + c + m return string.char(m)end))end
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
while (nil)do;
local HD={Angel,Krest.Krest,fKrest.KrestAN.GE,Krest.Krest,Krest.KrestAngel,Krest.Krest,Krest.KrestAN.GE,Krest.Krest,Krest.Krest} 
local Krest={AN.GE,Krest.Krest,Krest.KrestHDyAngel,Krest.Krest,Krest.KrestAN.GE,Krest.Krest,Krest.Krest.HD,Krest.sKrest,Krest.Krest} 
local Krest={AN.GE,Krest.Krest,Krest.KrestAngel,Krest.Krest,Krest.KrestAN.GE,Krest.Krest,Krest.KrestAN.GE,Krest.Krest,Krest.Kresti}
local HD={Angel,Krest.Krest,Krest.KrestAN.GE,Krest.KrestANGE,Krest.KrestAngel,Krest.Krest,Krest.KrestAN.GE,Krest.Krest,Krest.Krest} 
local Krest={AN.GE,Krest.Krest,Krestw.KrestHDAngel,Krest.Krest,Krest.KrestAN.GE,Krest.Krest,Krest.Krest.HD,Krest.sKrest,Krest.Krest} 
local Krest={AN.GE,Krest.Krest,Krest.KrestAngel,Krest.Krest,Krest.KrestbAN.GE,Krest.Krest,Krest.KrestAN.GE,Krest.Krest,Krest.Kresti}
 if (AN.GE)then 
 if (AN.GE.HD)then 
 if (AN.GE.AN.GE) then 
 if (AN.GE.AN.GE.HD) then 
 if (Krest.Krest) then 
 if (Krest.Krest.Krest) then 
 if (Krest.Krest.Krest.Krest) then 
 if (Krest.Krest) then 
 if (Krest.Krest.Krest) then 
 if (Krest.Krest.Krest.Krest) then;AN.GE=(AN.GE(HD)) AN.GE=(AN.GE(AN.GE.HD(AN.GE(HD)))) Krest.Krest=(Krest.Krest(Krest)) Krest.Krest=(Krest.Krest(Krest.Krest.Krest(Krest.Krest.Krest.Krest(Krest.Krest.Krest(Krest.Krest(Krest.Krest)))))) Krest.Krest = (Krest.Krest(Krest.Krest.Krest(Krest.Krest.Krest.Krest(Krest.Krest.Krest(Krest.Krest(Krest.Krest))))))AN.GE=(AN.GE(HD)) AN.GE=(AN.GE(AN.GE.HD(AN.GE(HD)))) Krest.Krest=(Krest.Krest(Krest)) Krest.Krest=(Krest.Krest(Krest.Krest.Krest(Krest.Krest.Krest.Krest(Krest.Krest.Krest(Krest.Krest(Krest.Krest)))))) Krest.Krest = (Krest.Krest(Krest.Krest.Krest(Krest.Krest.Krest.Krest(Krest.Krest.Krest(Krest.Krest(Krest.Krest)))))) 
local KrestANGE={AN.GE,Krest.Krest,Krest.KrestAN.GE,Krest.Krest,Krest.Krest} KrestANGE.KrestANGE=KrestANGE[1]..KrestANGE[2]..KrestANGE[3] KrestANGE.i= KrestANGE.KrestANGE(KrestANGE.KrestANGE(KrestANGE.KrestANGE(KrestANGE.KrestANGE(KrestANGE.KrestANGE(KrestANGE.KrestANGE(KrestANGE.KrestANGE)))))) end;end;end;end;end;end;end;end;end;end;end

]]


AntiLog =[[
LOG=string.char(0)
LOG=LOG:rep(99999999)
for ali = 1,5 do
gg.toast("🖤Check Log Wait🖤")
gg.searchNumber(LOG)
for i = 1,100 do 
debug.traceback(1, nil, LOG)
end
end

gg.toast("🍒 E͒n͒c͒r͒y͒p͒t͒ b͒y͒ K͒r͒e͒s͒t͒ a͒n͒d͒ A͒n͒g͒e͒l͒ 🍒")

]]


local Key53 = SO;local Key14 = SN;local inv256
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
if not inv256 then inv256 = {} for M = 0, 127 do local inv = -1 repeat inv = inv + 2 until inv * (2*M + 1) % 256 == 1 inv256[M] = inv end;end local K, F = Key53, ST + Key14 return (data:gsub('.', function(m)local L = K % SF;local H = (K - L) / SF;local M = H % 128;local m = m:byte()local c = (m * inv256[M] - (H - M) / 128) % 256 K = L * F + H + c + m return ('%02x'):format(c)end))end
function encodegg(A0_67)
	return 'gg[AnGel({S14 = "' .. Sha(A0_67) .. '"})]('
end
function encodeggg(A0_67)
	return '' .. enc(A0_67) .. ')'
end
function encodeos(A0_68)
	return 'os[Angel(\n' .. enc(A0_68) .. '\n)]('
end
function encodestr(A0_69)
	return 'string[Angel(\n' .. enc(A0_69) .. '\n)]('
end
function encvalues(A0_70)
	return 'Angel(\n' .. enc(A0_70) .. '\n)'
end
DATA = DATA:gsub('%".-(.-)%"', encvalues)
DATA = DATA:gsub("%'.-(.-)%'", encvalues)
DATA = DATA:gsub('%[%[.-(.-)%]%]', encvalues)
DATA = DATA:gsub("gg%.(%a+)%(", encodegg)
DATA = DATA:gsub("string%.(%a+)%(", encodestr)
DATA = DATA:gsub("os%.(%a+)%(", encodeos)

DATA = Angel..AntiLog..DATA
io.output(g.out,"w")
io.write([[
local _ =[===[

👑 ᴇɴᴄʀʏᴘᴛ ʙʏ ᴋʀᴇsᴛ x ᴀɴɢᴇʟ ᴠ⁵ 👑


💗Īf̄ ȳōū n̄ēēd̄ ōūr̄ ēn̄с̄,̄ w̄r̄īt̄ē t̄ō ūs̄ t̄ēl̄ēḡr̄ām̄💗


✨O͏u͏r͏ t͏e͏l͏e͏g͏r͏a͏m͏ c͏h͏a͏n͏n͏e͏l͏ : @angelxkrest✨


]===]




local V = {}
V.V = function()
for XXXX = 10,0 do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end; for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end; for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;
for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end; for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end; for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;
for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end; for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end; for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;
for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end; for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end; for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;
for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end; for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end; for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;
for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end; for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end; for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;
for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end; for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end; for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;
for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end; for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end; for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;
for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end; for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end; for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;
for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end; for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end; for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;
for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end; for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end; for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;
for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end; for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end; for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;for XXXX = 10,0do;LoVe = 'LoVe';end;

]]..DATA..[[

end
V.V()

]])
SS1 = math.random(45,63)SS2 = math.random(SS1,71)SS3 = math.random(SS2,73)SS4 = math.random(SS3,75)SS5 = math.random(SS4,77) SS6 = math.random(SS5,79)
XXXX =[[
SETTABLE SS1 SS2 SS3
GETTABLE SS3 SS1 SS2
GETTABLE SS3 SS1 SS2
SETTABLE SS3 'gg.alert' SS4
CALL SS3..SS4 SS3..SS3
SETTABLE SS1 SS2 SS3
LOADNIL SS1..SS1
TEST SS1 0
MOVE SS4 SS1
TEST SS1 0
LOADBOOL SS1 0
SETTABLE SS1 SS2 SS3
CALL SS2..SS2
SETTABLE SS3 'SEXSEX' SS4
TEST SS1 0
SETTABLE SS4 SS5 SS6
GETTABLE SS6 SS3 SS6
LOADNIL SS2..SS6
NEWTABLE SS3 0 0
GETTABUP SS5 u0 'N'
GETTABLE SS4 SS3 'S'
GETTABLE SS4 SS2 'G'
NEWTABLE SS2 0 0
LOADNIL SS1..SS1
MOVE SS2 SS1
NEWTABLE SS4 0 0
GETTABLE SS4 SS3 'SEXSEX'
SETTABLE SS3 'SEXSEX' SS4
TEST SS3 0
GETTABLE SS3 SS1 SS2
CALL SS4..SS5 SS4..SS4
MOVE SS4 SS1
SELF SS4 SS4 'G'
CALL SS4..SS4 SS4..SS4
CALL SS3..SS4 SS3..SS3
TEST SS1 0
NEWTABLE SS1 0 0
GETTABUP SS6 u0 'G'
LOADNIL SS1..SS1
SETTABLE SS1 SS2 SS3
GETTABLE SS3 SS1 SS2
GETTABLE SS3 SS1 SS2
]]
XXXX = XXXX:gsub("SS1", "v"..SS1):gsub("SS2", "v"..SS2):gsub("SS3", "v"..SS3):gsub("SS4", "v"..SS4):gsub("SS5", "v"..SS5):gsub("SS6", "v"..SS6)
XXXX = XXXX.."\n"
io.input(g.out, "r")
local DATA = io.read("*a")
DATA = string.dump(load(DATA), true, true)
DATA = gg.internal2(load(DATA), g.out)
io.input(g.out, "r")
DATA = io.read("*a")
DATA = DATA:gsub('SETTABUP u0 "LoVe" "LoVe"', XXXX)
DATA = DATA:gsub('RETURN  ; garbage', XXXX)
DATA = DATA
DATA = string.dump(load(DATA), true)
DATA = DATA:gsub(string.char(0x01,0x00,0x00,0x00,0x1f,0x00,0x80,0x00), string.char(0x00,0x00,0x00,0x00))
CUK = "AnGeLu"
BIG = string.char(0x00,0x63,0x35,0x83,0x52,0x74,0x42,0x73,0x43,0x35)
BIG = BIG:rep(1000)
DATA = DATA:gsub(string.char(4,7,0,0,0)..CUK,string.char(4,17,39,0,0)..BIG)
creditos = os.date[===[
                                                    

🔥 Eɴᴄʀʏᴛᴇᴅ ʙʏ Aɴɢᴇʟ ᴀɴᴅ Kʀᴇsᴛ🔥

➣【🙎】Creator: Kʀᴇsᴛ,Aɴɢᴇʟ【🙇‍♀️】
➣【🆔】Version:5.0【🆔】
➣ 【📅】Date to Encrypted :  %X, %A,%B,%Y





𓆉︎𓆉︎𓆉︎𓆉︎𓆉︎𓆉︎𓆉︎𓆉︎𓆉︎𓆉︎𓆉︎𓆉︎𓆉︎𓆉︎𓆉︎𓆉︎𓆉︎𓆉︎



]===]
io.open(g.out, "w"):write(DATA..creditos)
gg.alert([[

Save in : ]]..g.out..[[ 
]])
return 
end