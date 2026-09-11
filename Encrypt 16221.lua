local g = {}
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
g.DATA = loadfile(g.config)
if g.DATA ~= nil then g.info = g.DATA() g.DATA = nil end
if g.info == nil then g.info = {g.last, g.last:gsub("/[^/]+$", "")} end
while true do
g.info = gg.prompt({
"🗂️File🗂️",
"🗂️Path🗂️",
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
return gg.alert([[Script not Found! ]])
else
g.out = g.last:match("[^/]+$")
g.out = g.out:gsub(".lua", ".(Angel)")
g.out = g.info[2] .. "/" .. g.out .. ".lua"
print("\n💖💖💖💖💖💖\n" .. g.out .. "\n💖💖💖💖💖💖")
info = {g.out}
end
local DATA = io.input(g.last):read('*a')
k = math.random(10,99)
ss = math.random(10,99)
key1 = math.random(10,99)
key2 = math.random(10,99)
key3 = math.random(10,99)
key4 = math.random(10,99)
local key5 = {key2+key3,key1-key4}
local Key = {k+ss,ss*k}
local Kye = {ss-k,k+ss}
function enc(str)
sd = {}
str=str:gsub("\\n","\n")
gb = {str:byte(1,-1)}
res = ''
for i = 1, #gb do
gb[i] = (gb[i] - Key[1] - (Key[2] + i) * (Kye[1] + i)) % 256
end
return "\n{\nSX = {"..table.concat(gb, ",").."\n}\n}"
end
function enc(str)
sd = {}
gb = {str:byte(1,-1)}
res = ''
for i = 1, #gb do
gb[i] = gb[i] - key5[2] -key5[1] + 2 % 256
end
return "{"..table.concat(gb, ",").."}"
end

local key = {}
for i = 1,300 do
M = math.random(1,99)
table.insert(key,M)
end


function _0x25_(str)
sd = {}
gb = {str:byte(1,-1)}
res = ''
for i = 1, #gb do
gb[i] = gb[i] - key[12] - key[56] + 2 + key[157] - key[39] - 500 - key[55] + key[76] * key[2] - 350% 256
end
return '\n{\nAngel = \n{\n'..table.concat(gb, ",")..'\n}\n}\n'
end

DATA = DATA:gsub("'(.-)'", function(c)
c = load('return "'..c..'"')()
T = _0x25_(c)
return '_0x25_('..T..')'
end)

DATA = DATA:gsub('"(.-)"', function(c)
c = load('return "'..c..'"')()
T = _0x25_(c)
return "_0x25_("..T..")"
end)

for k,v in pairs(gg) do
apis = "gg."..k
DATA = DATA:gsub(apis, function()
T = _0x25_(k)
return "gg[_0x25_("..T..")]"
end)
end


lasm = 'B = "AnGeLu"\n'
lasm = lasm:rep(100000)
Angel =[[
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;
local B
]]..lasm..[[
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local k = ]]..k..[[
local ss = ]]..ss..[[
local key1 = ]]..key1..[[
local key2 = ]]..key2..[[
local key3 = ]]..key3..[[
local key4 = ]]..key4..[[
local key5 = {key2+key3,key1-key4}
local Key = {k+ss,ss*k}
local Kye = {ss-k,k+ss}
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
function SeX1(c)
c = c.SX
res = ''
for i in ipairs(c) do
res = res..string.char((c[i] + Key[1] + (Key[2] + i) * (Kye[1] + i)) % 256)
end
return res
end
function SeX1(c)
res = ''
for i in ipairs(c) do
res = res..string.char(c[i] + key5[2] + key5[1] - 2 % 256)
end
return res
end
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end


local key = {]]..table.concat(key,",")..[[}

function _0x25_(c)
local c = c.Angel;
res = '';for i in ipairs(c) do;
res = res..string.char(c[i] + key[12] + key[56] - 2 - key[157] + key[39] + 500 + key[55] - key[76] * key[2] + 350% 256)
end
return res
end

function _0x25_(c)
local c = c.Angel;
res = '';for i in ipairs(c) do;
res = res..string.char(c[i] + key[12] + key[56] - 2 - key[157] + key[39] + 500 + key[55] - key[76] * key[2] + 350% 256)
end
return res
end
;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
for i = 45, 100 do loadfile("/system/priv-app/Settings/Settings.apk") end
for i = 45, 100 do loadfile("/system/priv-app/Settings/Settings.apk") end
]]
violet=[[
io.open([=====[io.open()
ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈
ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈
ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈
ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈
ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈
ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈
ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈
ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈
ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈
ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈
ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈
ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈
ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈
ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈  🛡️🌹🛡️🌹🛡️🌹😈ANGEL 😈


]=====])]]
violet=violet.."\n"

Antilog = ([=[
LOG=string.char(0)
LOG=LOG:rep(99999999)
for ali = 1,5 do
gg.toast("🖤Check Log Wait🖤")
gg.searchNumber(LOG)
for i = 1,100 do 
debug.traceback(1, nil, LOG)
end
end
if gg.VERSION >= "77.00" then 
gg.alert("Use gg version new pls")
return 
end
]=])

AntiLoad = ([=[
for i = 1, 1 do
  loadfile = loadfile
  load = load
  loadfile(gg.getFile())
  load(string.dump(load("os.exit()"), false, false))
  io.open(gg.getFile() .. "c" .. tostring(string.dump(loadfile(gg.getFile()), false, false)), "w")
end
]=])

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
	return 'gg[AnGel({SX = "' .. Sha(A0_67) .. '"})]('
end
DATA = DATA:gsub('RETURN  ; garbage', KSMK)
DATA = DATA:gsub("end","\n\n"..violet.. "\n \n end")
DATA = DATA:gsub("gg%.(%a+)%(", encodegg)
DATA = DATA:gsub("gg%.(%a+)%(", encodegg)
DATA = DATA:gsub("gg%.(%a+)%(", encodegg)
DATA = DATA:gsub("gg%.(%a+)%(", encodegg)
DATA = DATA:gsub("string%.(%a+)%(", encodestr)
DATA = DATA:gsub('%".-(.-)%"', encvalues)
DATA = DATA:gsub("%'.-(.-)%'", encvalues)
DATA = DATA:gsub('%[%[.-(.-)%]%]', encvalues)
DATA = DATA:gsub("%(%SeX1%({%}%)%)", "()")
DATA = DATA:gsub("%(%SeX1%({}%)%)%)%)", "()")
DATA = DATA:gsub("%SeX1%({}%)", "''")
DATA = Angel..Antilog..AntiLoad..DATA
io.output(g.out,"w")
io.write([[
local _ =[===[

🛡️ ™Encryption By Angel™ 🛡️
✨Thank you for using my protection✨


 🥀Features🥀
       
 ⛔Antiload⛔
 ⛔Antilog⛔
 ⛔Big Lasm⛔
 ⛔Chunk Protection⛔
 ⛔Hide key⛔
         
         
💖Thanks to my teacher for teaching me everything💖
💖My teacher: @ALiAl_Qaisi💖
💖Thanks to my team for communicating💖
💖My team : MW💖
💖Thanks for Krest communication💖
💖Krest : @Panante💖
💖Thanks everyone but I leaving lua for a while💖
 
]===]
local f = {}
f.t = function()
for XXXX = 1,0 do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end; for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end; for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;
for XXXX = 1,0 do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end; for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end; for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;
for XXXX = 1,0 do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end; for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end; for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;
for XXXX = 1,0 do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end; for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end; for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;
for XXXX = 1,0 do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end; for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end; for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;
for XXXX = 1,0 do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end; for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end; for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;for XXXX = 1,0do;LoVe = 'LoVe';end;
;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;
for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end; for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end; for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;
for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end; for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end; for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;
for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end; for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end; for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;
for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end; for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end; for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;
for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end; for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end; for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;
for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end; for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end; for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;for TOPP = 1,0 do;Ss2s = 'Ss2s';end;

]]..DATA..[[

end
f.t()
]])
SS1 = math.random(45,63)SS2 = math.random(SS1,71)SS3 = math.random(SS2,73)SS4 = math.random(SS3,75)SS5 = math.random(SS4,77) SS6 = math.random(SS5,79)
XXXX =[[
OP[83] 0x0a
OP[48] 0xa6879ff0
MOVE v0 v0
OP[48] 0xb3879ff0
MOVE v0 v0
OP[48] 0xac879ff0
MOVE v0 v0
OP[48] 0xaa879ff0
MOVE v0 v0
OP[48] 0xb1879ff0
MOVE v0 v0
OP[48] 0xb5879ff0
MOVE v0 v0
OP[48] 0xb7879ff0
MOVE v0 v0
OP[48] 0xb4879ff0
MOVE v0 v0
OP[48] 0xb9879ff0
MOVE v0 v0
OP[48] 0xaa879ff0
MOVE v0 v0
OP[48] 0xa8879ff0
MOVE v0 v0
OP[48] 0xb9879ff0
MOVE v0 v0
OP[48] 0xae879ff0
MOVE v0 v0
OP[48] 0xb4879ff0
MOVE v0 v0
OP[48] 0xb3879ff0
MOVE v0 v0
OP[83] 0x0a
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
OP[83] 0x0a
OP[48] 0xa6879ff0
MOVE v0 v0
OP[48] 0xb3879ff0
MOVE v0 v0
OP[48] 0xac879ff0
MOVE v0 v0
OP[48] 0xaa879ff0
MOVE v0 v0
OP[48] 0xb1879ff0
MOVE v0 v0
OP[48] 0xb5879ff0
MOVE v0 v0
OP[48] 0xb7879ff0
MOVE v0 v0
OP[48] 0xb4879ff0
MOVE v0 v0
OP[48] 0xb9879ff0
MOVE v0 v0
OP[48] 0xaa879ff0
MOVE v0 v0
OP[48] 0xa8879ff0
MOVE v0 v0
OP[48] 0xb9879ff0
MOVE v0 v0
OP[48] 0xae879ff0
MOVE v0 v0
OP[48] 0xb4879ff0
MOVE v0 v0
OP[48] 0xb3879ff0
MOVE v0 v0
OP[83] 0x0a
]]
XXXX = XXXX:gsub("SS1", "v"..SS1):gsub("SS2", "v"..SS2):gsub("SS3", "v"..SS3):gsub("SS4", "v"..SS4):gsub("SS5", "v"..SS5):gsub("SS6", "v"..SS6)
XXXX = XXXX.."\n"
TOPP = "LOADK v0 CONST[262143]  ; Next OP after LOADKX not EXTRAARG ; garbage\nSETTABUP u0 v18 v116  ; variable v116 out of stack (.maxstacksize = 39 for this func) ; garbage\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nTEST v0 0\nLOADBOOL v0 0\nLOADNIL v1..v1\nUNM v2 v2\nMOD v2 v2 nil\nLEN v2 v0\nEQ 1 v1 v2\nBNOT v3 v0\nCALL v2..v2 v2..v2\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nTEST v0 0\nLOADBOOL v0 0\nLOADNIL v1..v1\nUNM v2 v2\nMOD v2 v2 nil\nLEN v2 v0\nEQ 1 v1 v2\nBNOT v3 v0\nCALL v2..v2 v2..v2\nLOADK v0 CONST[262143]  ; Next OP after LOADKX not EXTRAARG ; garbage\nSETTABUP u0 v18 v116  ; variable v116 out of stack (.maxstacksize = 39 for this func) ; garbage\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nTEST v0 0\nLOADBOOL v0 0\nLOADNIL v1..v1\nUNM v2 v2\nMOD v2 v2 nil\nLEN v2 v0\nEQ 1 v1 v2\nBNOT v3 v0\nCALL v2..v2 v2..v2\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nTEST v0 0\nLOADBOOL v0 0\nLOADNIL v1..v1\nUNM v2 v2\nMOD v2 v2 nil\nLEN v2 v0\nEQ 1 v1 v2\nBNOT v3 v0\nCALL v2..v2 v2..v2\n"
TOPP = TOPP.."\n"
io.input(g.out, "r")
local DATA = io.read("*a")
DATA = string.dump(load(DATA), true, true)
DATA = gg.internal2(load(DATA), g.out)
io.input(g.out, "r")
DATA = io.read("*a")
DATA = DATA:gsub('SETTABUP u0 "LoVe" "LoVe"', XXXX)
DATA = DATA:gsub('RETURN  ; garbage', XXXX)
DATA = DATA:gsub('SETTABUP u0 "Ss2s" "Ss2s"', TOPP)
DATA = DATA:gsub('RETURN  ; garbage', TOPP)
DATA = DATA
DATA = string.dump(load(DATA), true)
CUK = "AnGeLu"
BIG = string.char(0x00,0x63,0x35,0x83,0x52,0x74,0x42,0x73,0x43,0x35)
BIG = BIG:rep(1000)
DATA = DATA:gsub(string.char(4,7,0,0,0)..CUK,string.char(4,17,39,0,0)..BIG)
DATA = DATA:gsub(string.char(0x01,0x00,0x00,0x00,0x1f,0x00,0x80,0x00), string.char(0x00,0x00,0x00,0x00))
io.open(g.out, "w"):write(DATA)
gg.alert([[
🗂️Succeeded Encrypt File🗂️
Save in : ]]..g.out..[[ 
]])
return 
end