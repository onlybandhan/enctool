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
print("Ufff")
info = {g.out}
end
local DATS = io.input(g.last):read('*a')
Key = math.random(99,817)
Key1 = math.random(99,817)
Key2 = math.random(99,817)
Key3 = math.random(99,817)
Key4 = math.random(99,817)
Key5 = math.random(99,817)
Key6 = math.random(99,817)
Key7 = math.random(99,817) 
Key8 = math.random(99,817)
Key9 = math.random(99,817)
Key10 = math.random(99,817)
local KAY = {Key+Key1*Key2}
local KEY = {Key+Key1+Key1*Key2}
local KAY1 = {Key3+Key5*Key4}
local KEY1 = {Key3+Key6+Key5*Key4}
local KAY2 = {Key6*Key8-Key5}
local KEY2 = {Key6+Key10-Key6*Key8-Key5}
local KAY3 = {Key7+Key9*Key10+Key1-Key7+1}
local KEY3 = {Key7+Key9*Key6+Key9-Key10+Key1-Key7+7}
local KAY4 = {Key4+Key8*Key5+Key3-Key10}
local KEY4 = {Key4+Key8-Key6+Key1*Key5+Key3-Key10}
local KAY5 = {Key6-Key2*Key9+Key10}
local KEY5 = {Key6-Key2*Key9+Key10-Key8+Key10}
mk = math.random(99,817)
lk={}
lkk={}
for i = 1,10 do
F = mk * math.random(61,91)
table.insert(lk, F)
end
for i = 1,#lk do
FF = (lk[i] + KAY[1] - KAY1[1] + KAY2[1] * KEY3[1] + KAY4[1] - KAY5[1]) % 256
table.insert(lkk, FF)
end
KMA=table.concat
CcC = function(c, s)NZ = {}for i in ipairs(c) do;CZ = "["..i.."]={"..c[i].."}"table.insert(NZ, CZ)end;return KMA(NZ, ",");end
function enc(str)
sd = {}
gb = {str:byte(1,-1)}
res = ''
LESS = '\\144'
for i = 1, #gb do
gb[i] = (gb[i] + lk[1] - lk[2] + lk[6] - lk[3] + lk[8] * lk[4] - lk[7] + lk[5] * lk[10] - lk[9]) % 256
end
return "\n{\nPORN = {"..CcC(gb, ",").."\n}\n}"
end
function encodegg(A0_67) return 'gg[xnxx(\n' .. enc(A0_67) .. ')](' end
function encodeggg(A0_67) return '' .. enc(A0_67) .. ')' end
function encodeos(A0_68) return 'os[xnxx(\n' .. enc(A0_68) .. '\n)](' end
function encodestr(A0_69) return 'string[xnxx(\n' .. enc(A0_69) .. '\n)](' end
function encvalues(A0_70) return 'xnxx(\n' .. enc(A0_70) .. '\n)' end
function enc11(A0_70) A0_70 = "TYPE_" return '' .. enc(A0_70) .. '' end
DATS = DATS:gsub('%".-(.-)%"', encvalues):gsub("%'.-(.-)%'", encvalues):gsub('%[%[.-(.-)%]%]', encvalues):gsub("gg%.(%a+)%(", encodegg):gsub("string%.(%a+)%(", encodestr):gsub("os%.(%a+)%(", encodeos)
XNXX=([[
local Gay = function(c)
;if(nil)then;(function() end)()end;
local TableKey = {]]..CcC(lkk, ",")..[[}
function Dc(c)
;if(nil)then;(function() end)()end;
local zZz = function(M, C) return M - C end
local xXx = function(M, C) return M + C end
local Ni,Sf,Oo,Zo,sSs1,sSs2,ii = 9,7,1,0,75271,41,0
local Taw = zZz(Ni, Sf)
local Oan = xXx(Zo, Oo)
local IndezZz = Taw - Oan + Oo - Oo
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local iimi = A_L_I
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local iimi = 62
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local iimi = 19
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local iimi = 927
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local iimi = 18
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local iimi = 9
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local iimi = 10
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local Key = ]]..Key..[[
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local iimi = 15
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local Key1 = ]]..Key1..[[
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local iimi = 627
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local Key2 = ]]..Key2..[[
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local iimi = 52
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local iimi = 72
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local Key3 = ]]..Key3..[[
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local iimi = 92
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local Key4 = ]]..Key4..[[
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local iimi = 502
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local Key5 = ]]..Key5..[[
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local Key6 = ]]..Key6..[[
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local Key7 = ]]..Key7..[[
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local iimi = 293
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local Key8 = ]]..Key8..[[
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local iimi = 373
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local Key9 = ]]..Key9..[[
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local Key10 = ]]..Key10..[[
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local KAY = {Key+Key1*Key2}
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local KEY = {Key+Key1+Key1*Key2}
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local KAY1 = {Key3+Key5*Key4}
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local KEY1 = {Key3+Key6+Key5*Key4}
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local KAY2 = {Key6*Key8-Key5}
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local KEY2 = {Key6+Key10-Key6*Key8-Key5}
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local KAY3 = {Key7+Key9*Key10+Key1-Key7+1}
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local KEY3 = {Key7+Key9*Key6+Key9-Key10+Key1-Key7+7}
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local KAY4 = {Key4+Key8*Key5+Key3-Key10}
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local KEY4 = {Key4+Key8-Key6+Key1*Key5+Key3-Key10}
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local KAY5 = {Key6-Key2*Key9+Key10}
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local KEY5 = {Key6-Key2*Key9+Key10-Key8+Key10}
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
;if(nil)then;(function()end)();end;
local M={}
for i = 1,#c do
M.O = (c[i][IndezZz] - KAY[1] + KAY1[1] - KAY2[1] * KEY3[1] - KAY4[1] + KAY5[1]) % 256
table.insert(M, M.O)
end
return M
end
return Dc(TableKey)
end
Gay = Gay()
function xnxx(c)
;if(nil)then;(function() end)()end;
local zZz = function(M, C)  return M - C end
local xXx = function(M, C) ;if(nil)then;(function() end)()end; return M + C end
local Ni,Sf,Oo,Zo,sSs1,sSs2,ii = 9,7,1,0,75271,41,0
local Taw = zZz(Ni, Sf)
local Oan = xXx(Zo, Oo)
local IndezZz = Taw - Oan + Oo - Oo
c = c.PORN
local res={}
for i in ipairs(c) do
res.hi = (c[i][IndezZz] - Gay[1] + Gay[2] - Gay[6] + Gay[3] - Gay[8] * Gay[4] + Gay[7] - Gay[5] * Gay[10] + Gay[9]) % 256
table.insert(res, res.hi)
end
return string.char(table.unpack(res))
end
]])
DATS=([[
local _ = '\n\n💎 Encryption By ALI AL-QAISI Version°Free 💎\n\n'
local Q = {}
Q.Q = function()

]]..DATS..[[
end
Q.Q()
]])
DATS=XNXX..DATS
io.open(g.out,"w"):write(string.dump(load(DATS), true)):close()
gg.alert("📎Succeeded Encrypt File✓\n\n\n📩Save in "..g.out.."\n\n\n","[OK]")
return 
end