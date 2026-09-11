gg.setVisible(false)
hehe = gg.alert(os.date([[
═══क════ ⊹⊱✫⊰⊹ ════क═══
     🛡️ ELGG By DarkEarl Version {VII}🛡️️
═══क════ ⊹⊱✫⊰⊹ ════क═══
Fiture Encrypt🛡 :
➣ Fast Encrypt
➣ New Blocker & Base
➣ Added Block Lasm 2GB+ (NEW)
➣ Added Block Log 1GB+ (NEW)
➣ SHA + String + 1-0
➣ Block SSTool/TC (Auto Crash)
═══════════════════
📅Date    : %A %d %B %Y
⏰Time   : %H:%M%p 
═══════════════════
Credits :
@DarkEarls 🇮🇩
═══════════════════
]]),'🛡️ Encrypt', '🔍 About', '❎Exit')
if hehe == 1 then
local g = {};local FD = {}
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
g.data = loadfile(g.config)
if g.data ~= nil then g.info = g.data() g.data = nil end
if g.info == nil then g.info = {g.last, g.last:gsub("/[^/]+$", "")} end
while true do
g.info = gg.prompt({
"📁 Select File Encrypt :",
"📁 Select Output :",
"🕒 Add Expirity Date",--3
"🔐 Add Password",--4
"🛡️ Add Minimal GG Required",--5
"✏️ Add Rename Blocker",--6
},g.info,{
"file",
"path",
"checkbox",--3
"checkbox",--4
"checkbox",--5
"checkbox"})--6
if g.info == nil then break end
gg.saveVariable(g.info,g.config)
DATA = io.input(g.info[1]):read("*a")
if not load(DATA) then os.exit() end

g.last = g.info[1]
g.out = g.last:match("[^/]+$")
g.out = g.out:gsub(".lua", ".enc")
g.out = g.info[2]..'/'..g.out..'.lua'
local DATA = io.input(g.last):read('*a')
if g.info[3] == true then
day = os.date("%d")
exp_date = gg.prompt({
"📆 Set Expired Date : ",
"📝 Type Expired Message : "},
{os.date("%Y%m" .. day + 7),"⚠️ Script Expired ⚠️️"},{"number", "text"})
end
if not exp_date then
gg.setVisible(true)
elseif exp_date[1] == nil then gg.alert("📆 Date Can Not Be Empty !") gg.setVisible(true)
else
print("\n📅 Added Expired Date : ".. exp_date[1])
DATA = '\n if os.date("%Y%m%d") >= "' ..exp_date[1].. '" then print("'..exp_date[2]..'") return gg.alert("' ..exp_date[2] ..'")end\n' .. DATA
end

if g.info[4] == true then
PASS = gg["prompt"]({
"🔐 Set Password For Script :",
"📝 Type Message For Wrong Password : "
}, {"","⚠️ Wrong Password ⚠️"},{
"text",
"text"})
end
if not PASS then
gg.setVisible(true)
elseif PASS[1] == nil then
gg.alert("⚠️ Input Password !")
gg.setVisible(true)
else
print("\n🔐Added Password Script : ".. PASS[1])
DATA = 'PASSW = gg.prompt({\'🔒 Input password: \'},{[1]=\'\'},{[1]=\'text\'})\nif not PASSW the﻿n return\nend \nif PASSW[1] == "" then gg.alert("Password Can Not Be Empty❕") end\nif PASSW[1] =="' .. PASS[1] .. '" then\ngg.toast(\'✅ Password correct❕\')\nelse\nreturn gg.alert("' .. PASS[2] .. '") end\n' .. DATA
end

if g.info[5] == true then
VERSION = gg.prompt({
"🔐 Set Minimal GG Version : ",
"🗒️ Set Error GG Message :"
}, {gg.VERSION,"⚠️ Error GG VERSION ⚠️"}, {
"number",
"text"})
end--if
if not VERSION then
gg.setVisible(true)
elseif VERSION[1] == nil then
gg.alert("🛡️ Input Minimal Required GG Version !")
gg.setVisible(true)
else
print("🛡 Minimal Version Required : "..VERSION[1])
DATA = '\nlocal LynX = gg;local Xslow = LynX.VERSION;if Xslow ~= "'..VERSION[1] .. '" then print("'..VERSION[2]..'") return gg.alert("' ..VERSION[2].. '")end\n' .. DATA
end--if
if g.info[6] == true then
NAME = gg.prompt({
"🗒️ Set Name For Script :",
"📝 Type Message For Name Changed :",
}, {g.out:match("[^/]+$"),
"⚠️ RENAME DETECTED ⚠️"}, {
"text",
"text"})
end
if not NAME then
gg.setVisible(true)
elseif NAME[1] == nil then
gg.alert("📝 Set Name Can Not Be Empty !")
gg.setVisible(true)
else
print("\n📝Added Rename Blocker : "..NAME[1])
DATA = '\nNAME = gg.getFile():match("[^/]+$")\n jancokx = "'..NAME[1]..'"\n if NAME == jancokx then else gg.copyText("'..NAME[1]..'") gg.setVisible(true) print("'..NAME[2]..'") return gg.alert("'..NAME[2].. '")end\n' ..DATA
end

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

DATA =[[
local function _8()
]]..DATA..[[

end
_8()
]]

function encodegg(A0_67)
	return 'gg[SHA({MePeru = "' .. Sha(A0_67) .. '"})]('
end
function encodeggg(A0_67)
	return '' .. enc(A0_67) .. ')'
end
function encodeos(A0_68)
	return 'os[DarkEarlChannel(\n' .. enc(A0_68) .. '\n)]('
end
function encodeos(A0_68)
	return 'io[DarkEarlChannel(\n' .. enc(A0_68) .. '\n)]('
end
function encodestr(A0_69)
	return 'string[DarkEarlChannel(\n' .. enc(A0_69) .. '\n)]('
end
function encvalues(A0_70)
	return 'DarkEarlChannel(\n' .. enc(A0_70) .. '\n)'
end

DarkEarlChannel =[[
local getKey = function(c)
;if(nil)then;(function() end)()end;
local TableKey = {]]..CcC(lkk, ",")..[[}
function Dc(c)
;if(nil)then;(function() end)()end;
local zZz = function(M, C) ;if(nil)then;(function() end)()end; return M - C end
local xXx = function(M, C) ;if(nil)then;(function() end)()end; return M + C end
local Ni,Sf,Oo,Zo,sSs1,sSs2,ii,iii, iiii = 9,7,1,0,75271,41,90,70,60
local Taw = zZz(Ni, Sf)
local Oan = xXx(Zo, Oo)
local IndezZz = Taw - Oan + Oo - Oo
local IndezZz2 = xXx(ii, Ni)
local IndezZz2 = IndezZz2 + Taw - Oo + Oo - Taw
local IndezZz3 = xXx(iii, Sf)
local IndezZz3 = IndezZz3 - Oo
local IndezZz4 = xXx(iiii, Sf)
local IndezZz4 = IndezZz4 - Oo
local M={}
for i = 1,#c do
M.O = (c[i][IndezZz] - IndezZz2 + IndezZz3 - IndezZz4) % 256
table.insert(M, M.O)
end
return M
end
return Dc(TableKey)
end
getKey = getKey()
function _SS(c)
;if(nil)then;(function() end)()end;
local zZz = function(M, C) ;if(nil)then;(function() end)()end; return M - C end
local xXx = function(M, C) ;if(nil)then;(function() end)()end; return M + C end
local Ni,Sf,Oo,Zo,sSs1,sSs2,ii = 9,7,1,0,75271,41,0
local Taw = zZz(Ni, Sf)
local Oan = xXx(Zo, Oo)
local IndezZz = Taw - Oan + Oo - Oo
local IndezZz2 = Taw
local IndezZz3 = Taw + Oo
local IndezZz4 = Taw + Oo + Oo
local IndezZz5 = Taw + Oo + Oo + Oo
local IndezZz6 = Taw + Oo + Oo + Oo + Oo
local IndezZz7 = Taw + Oo + Oo + Oo + Oo + Oo
local IndezZz8 = Taw + Oo + Oo + Oo + Oo + Oo + Oo
local IndezZz9 = Taw + Oo + Oo + Oo + Oo + Oo + Oo + Oo
local IndezZz10 = Taw + Oo + Oo + Oo + Oo + Oo + Oo + Oo + Oo
local res={}
for i in ipairs(c) do
res.hi = (c[i][IndezZz] - getKey[IndezZz] + getKey[IndezZz2] - getKey[IndezZz6] + getKey[IndezZz3] - getKey[IndezZz8] * getKey[IndezZz4] + getKey[IndezZz7] - getKey[IndezZz5] * getKey[IndezZz10] + getKey[IndezZz9]) % 256
table.insert(res, res.hi)
end
return string.char(table.unpack(res))
end
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
;if(nil)then;(function()end)();end;while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
MFA4 = "address";MFA5 = "flags";MFA6 = "values";MFA7 = "ERROR\nRESTART SCRIPT";MFA8 = "";MFA9 = "";local gg = gg;local os = os;local io = io;local debug = debug;local math = math;local table = table;for i = 1,5 do;loadfile = loadfile;load = load;loadfile(gg.getFile()) load(string.dump(load("os.exit()"),false,false)) io.open(gg.getFile() .. "c" .. tostring(string.dump(loadfile(gg.getFile()),false,false)),"w") end;a = {};for i = 1, string.char(53,48,48,48,48) do;table.insert(a, {[MFA4] = 0 + i,[MFA5] = 4,[MFA6] = 0});end;t1 = os.time();for i = 1, 6 do;gg.removeResults(a);end;gg.clearList();t2, a = os.time(), MFA7;if t2 < t1 then;gg.alert(MFA8, "");do return end;return;end;if t2 > t1 then;a = MFA9;end;if os.difftime(t2, t1) > 2 then;return F(a, "");end;
for i = 1, 0 do;local ssss = {}if ssss ~= nil then;ssss.ssss=ssss.ssss()end;ssss=nil;end
for i = 1, 0 do;local ssss = {}if ssss ~= nil then;ssss.ssss=ssss.ssss()end;ssss=nil;end
for i = 1, 0 do;local DarkEarlChannel = {}if DarkEarlChannel ~= nil then;DarkEarlChannel.DarkEarlChannel=DarkEarlChannel.DarkEarlChannel(x)end;DarkEarlChannel=nil;end
for i = 1, 0 do;local DarkEarlChannel = {}if DarkEarlChannel ~= nil then;DarkEarlChannel.DarkEarlChannel=DarkEarlChannel.DarkEarlChannel(x)end;DarkEarlChannel=nil;end
for i = 1, 0 do;local DarkEarlChannel = {}if DarkEarlChannel ~= nil then;DarkEarlChannel.DarkEarlChannel=DarkEarlChannel.DarkEarlChannel(x)end;DarkEarlChannel=nil;end
for i = 1, 0 do;local DarkEarlChannel = {}if DarkEarlChannel ~= nil then;DarkEarlChannel.DarkEarlChannel=DarkEarlChannel.DarkEarlChannel(x)end;DarkEarlChannel=nil;end
for i = 1, 0 do local XxX = ({(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),{nil},{nil},{nil},{nil},{},{},{},{},{},{},(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil),(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil),{} }) local GVV = {} local pc = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil)pc() local xnXx = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil) local TF = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local NHH ={} local NG ={} local HG =  {} local AGG = NG.HG.NHH.NG.HG.NHH.NG.HG(NHH.NG.HG({NHH.NG.HG}))()   NHH.NG.HG(NHH.NG.HG({NHH.NG.HG}))() local GHG = NHH.NG.NG.HG() ANNN():HG() NHH.NHH[X] =NHH[P]  local TC = {} local TFTC = TC(TF) local TFTV = TFTC({TFTC}) local TFTF=TFTC.NG TFTF() local BV = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil)   GHG:pc() TF(xnXx)({FHG})({pc}) TFTF(BV) TFTF(BV+2); if TFTF(BV) <= TFTF(BV+1) then pc(xnXx); TFTF(BV+3)({TFTF(BV)}) TFTF(TFTF(XxX()))() GHG(TFTF(XxX()))() GHG(TFTF(XxX()))() TFTF(TFTF(XxX()))() TFTF(TFTF(XxX()))() TFTV(TFTF(XxX()))() TFTV(TFTF(XxX()))() GHG(AGG())() GHG(AGG())() GHG(AGG())() HG({TFTF})();end;end
for i = 1, 0 do local DarkEarlChannel = {} DarkEarlChannel.sel = DarkEarlChannel.data() if DarkEarlChannel.data ~= nil then DarkEarlChannel.sel = DarkEarlChannel.data() end DarkEarlChannel = nil end
for x =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local x = {} x[''] = x local t = (x)(x, x) t[1] = 1 end
for ali = 1,10 do
gg.toast("🇮🇩 Encrypt By DarkEarl 🇮🇩")
gg.searchNumber(string.char(4,17,39,0,0,4,255,255,1,0)
:rep(999)
:rep(999), 5)
gg.searchNumber(string.char(4,255,255,1,0,0,0,0,236,0,0,0)
:rep(999)
:rep(999), 5)
debug.traceback(5, nil, string.char(4,17,39,0,0,4,255,255,1,0)
:rep(999)
:rep(999)
:rep(10))
debug.traceback(5, nil, string.char(4,255,255,1,0,0,0,0,236,0,0,0)
:rep(999)
:rep(999)
:rep(10))
end
gg.toast("Success")
gg.clearResults()
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
]]
local Key53 = 8186484168865098;local Key14 = 4887;local inv256
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
if not inv256 then inv256 = {} for M = 0, 127 do local inv = -1 repeat inv = inv + 2 until inv * (2*M + 1) % 256 == 1 inv256[M] = inv end;end local K, F = Key53, 16384 + Key14 return (data:gsub('.', function(m)local L = K % 274877906944;local H = (K - L) / 274877906944;local M = H % 128;local m = m:byte()local c = (m * inv256[M] - (H - M) / 128) % 256 K = L * F + H + c + m return ('%02x'):format(c)end))end

local KEYO = {
'3773737',
'627',
}
local TTable, Table, TTTable = {}, {}, {};AB = math.random(1000,20000);ABB = math.random(1000,20000);ABBB = math.random(1000,20000);AC = math.random(3000,40000);ACC = math.random(3000,40000);ACCC = math.random(3000,40000);AD = math.random(5000,60000);ADD = math.random(5000,60000);ADDD = math.random(5000,60000);AE = math.random(7000,80000);AEE = math.random(7000,80000);AEEE = math.random(7000,80000);AF = math.random(9000,100000);AFF = math.random(9000,100000);AFFF = math.random(9000,100000);AG = math.random(300,600);AGG = math.random(300,600);AGGG = math.random(300,600);local key = {(ACC+ABB*AEE)-ADD,AEE,ADD*1,ACC+AFF,ADD};local KY1 = (key[5]+key[3]+key[4]*key[2])-key[4];local KY2 = (key[1]+key[4]*2)-key[2];local inv256;local keyy = {(AB+AC*AD)-AE,AC,AD*2,AE+AD,AF};local Key1 = (keyy[1]+keyy[2]+keyy[4]*keyy[3])-keyy[4] ;local Key2 = (keyy[5]+keyy[4]*4)-keyy[1];local Key3 = (keyy[3]+keyy[1]*2)-keyy[2];local Key4 = (keyy[2]+keyy[4]*2)-keyy[3];local Key5 = (keyy[1]+keyy[3]*4)-keyy[3];local Key6 = (keyy[2]+keyy[4]*1)-keyy[5];local keYy = {(ACCC+ABBB*AEEE)-ADDD,ACCC,ADDD*4,AEEE+ADDD,AFFF};local KYY1 = (keYy[3]+keYy[1]+keYy[2]*keYy[3])-keYy[5]i19922 = math.random(99000,99600);i77 = math.random(58,80)
local _I1 = math.random(1122,36131)
function Sha(str)str = str:gsub("\\n", "\n"):gsub("\\t","\t")if not inv256 then inv256 = {} for M = 0, 127 do local inv = -1 repeat inv = inv + 2 until inv * (2*M + 1) % 256 == 1 inv256[M] = inv end;end local K, F = KY1 - AG, AG - KY2 return (str:gsub('.', function(m)local L = K % i19922 local H = (K - L) / i19922 local M = H % i77 local m = m:byte()local c = (m * inv256[M] - (H - M) / i77) % 256 K = L * F + H + c + m  return ('%02x'):format(c)end)):gsub(" $", "", 1) end
k = math.random(1,20)
function EncSTR(str)
str = str:gsub("\\n", "\n"):gsub("\\t","\t")
c = {str:byte(1, -1)}
LESS = "\\"..k..""
sd ={}
for i = 1, #c do
c[i] = (c[i] - Key1 - Key2 - Key3 % Key4 % Key5 - Key6 * Key1) % _I1
--res = LESS:rep(c[i])
--table.insert(sd, '"'..res..'"')
end
return "{D5={"..table.concat(c, ",").."}}"
end
KYE={}
KYEEE={}
for i = 1,15 do
Gener=math.random(333,333)
table.insert(KYE, Gener)
end
Mke= 1 * math.random(11,71)
Mke2= 2 * math.random(7,71)
Mker= 3 * math.random(5,71)
Mker2= 4 * math.random(2,61)
Mk1 = (Mke+Mke2)
Mk2 = (Mke2-Mke)
Key_v1 = (Mker2*Mker)
Key_v2 = (Mke+Mker2)
Key_Veru = Key_v1 + Key_v2
for i in ipairs(KYE) do
c = ((KYE[i] - Key_Veru  + (Mk1 + i)  * Mk2) % 256)
table.insert(KYEEE, c)
end
local Kontol_Memek53 = 67020730192927293799382936366; local Kontol_Memek53 = 6702073019292729379382936366; local Kontol_Memek53 = 90670207301929272937382936366; local Kontol_Memek53 = 670207301929800272937382936366; local Kontol_Memek53 = 1670207301929272937382936366; local Kontol_Memek53 = 00000008888880000098777097898899; local Kontol_Memek53 = 16708207301929272975837382936366; local Kontol_Memek53 = 180067020730192920072937382936366; local Kontol_Memek53 = 06708539099; local Kontol_Memek53 = 96996090089865210; local Kontol_Memek53 = 0099421189086700099075; local Kontol_Memek53 = 1670207301929; local Kontol_Memek53 = 29272937382936366; local Kontol_Memek53 = 16702073019292729373829; local Kontol_Memek53 = 1670207301937382936366; local Kontol_Memek53 = 937497937939374993749; local Kontol_Memek53 = 9839382939374939374993749; local Kontol_Memek53 = 9927293738724993749; local Kontol_Memek53 = 93749799272938293934993749; local Kontol_Memek53 = 1937497382939939374939374993749; local Kontol_Memek53 = 93793799379937993799379987898899; local Kontol_Memek53 = 19374937973339374939374993749; local Kontol_Memek53 = 1893799937993797293747484993749; local Kontol_Memek53 = 93799374979337999; local Kontol_Memek53 = 9937499993749937999395219379; local Kontol_Memek53 = 937993799942999937975; local Kontol_Memek53 = 193749293797393791929; local Kontol_Memek53 = 29272937939374993749; local Kontol_Memek53 = 19374977919292729373829; local Kontol_Memek53 = 4939374993749; local Kontol_Memek14 = 10849292; local Kontol_Memek14 = 903738383; local Kontol_Memek14 = 109302939; local Kontol_Memek14 = 0383839393; local Kontol_Memek14 = 748494949; local Kontol_Memek14 = 029303938; local Kontol_Memek14 = 738393939; local Kontol_Memek14 = 7383939384; local Kontol_Memek14 = 4848488; local Kontol_Memek14 = 838494848448; local Kontol_Memek14 = 7383848499494; local Kontol_Memek14 = 9484944997; local Kontol_Memek14 = 8448494948; local Kontol_Memek14 = 7474844848; local Kontol_Memek14 = 7474494949; local Kontol_Memek14 = 748448488458; local Kontol_Memek14 = 74747484848484; local Kontol_Memek14 = 03939484888; local Kontol_Memek14 = 12345363829; local Kontol_Memek14 = 8203883939393; local Kontol_Memek14 = 778874399346; local Kontol_Memek14 = 948448849494; local Kontol_Memek14 = 848484847474; local Kontol_Memek14 = 84848484848; local Kontol_Memek14 = 848484747; local Kontol_Memek14 = 029393939302937; local Kontol_Memek14 = 8493030203; local Kontol_Memek14 = 0202929393939;
local Kontol_Memek14 = 67020730192927293799382936366; local Kontol_Memek14 = 6702073019292729379382936366; local Kontol_Memek14 = 90670207301929272937382936366; local Kontol_Memek14 = 670207301929800272937382936366; local Kontol_Memek14 = 1670207301929272937382936366; local Kontol_Memek14 = 00000008888880000098777097898899; local Kontol_Memek14 = 16708207301929272975837382936366; local Kontol_Memek14 = 180067020730192920072937382936366; local Kontol_Memek14 = 06708539099; local Kontol_Memek14 = 96996090089865210; local Kontol_Memek14 = 0099421189086700099075; local Kontol_Memek14 = 1670207301929; local Kontol_Memek14 = 29272937382936366; local Kontol_Memek14 = 16702073019292729373829; local Kontol_Memek14 = 1670207301937382936366; local Kontol_Memek14 = 937497937939374993749; local Kontol_Memek14 = 9839382939374939374993749; local Kontol_Memek14 = 9927293738724993749; local Kontol_Memek14 = 93749799272938293934993749; local Kontol_Memek14 = 1937497382939939374939374993749; local Kontol_Memek14 = 93793799379937993799379987898899; local Kontol_Memek14 = 19374937973339374939374993749; local Kontol_Memek14 = 1893799937993797293747484993749; local Kontol_Memek14 = 93799374979337999; local Kontol_Memek14 = 9937499993749937999395219379; local Kontol_Memek14 = 937993799942999937975; local Kontol_Memek14 = 193749293797393791929; local Kontol_Memek14 = 29272937939374993749; local Kontol_Memek14 = 19374977919292729373829; local Kontol_Memek14 = 4939374993749; local Kontol_Memek14 = 10849292; local Kontol_Memek14 = 903738383; local Kontol_Memek14 = 109302939; local Kontol_Memek14 = 0383839393; local Kontol_Memek14 = 748494949; local Kontol_Memek14 = 029303938; local Kontol_Memek14 = 738393939; local Kontol_Memek14 = 7383939384; local Kontol_Memek14 = 4848488; local Kontol_Memek14 = 838494848448; local Kontol_Memek14 = 7383848499494; local Kontol_Memek14 = 9484944997; local Kontol_Memek14 = 8448494948; local Kontol_Memek14 = 7474844848; local Kontol_Memek14 = 7474494949; local Kontol_Memek14 = 748448488458; local Kontol_Memek14 = 74747484848484; local Kontol_Memek14 = 03939484888; local Kontol_Memek14 = 12345363829; local Kontol_Memek14 = 8203883939393; local Kontol_Memek14 = 778874399346; local Kontol_Memek14 = 948448849494; local Kontol_Memek14 = 848484847474; local Kontol_Memek14 = 84848484848; local Kontol_Memek14 = 848484747; local Kontol_Memek14 = 029393939302937; local Kontol_Memek14 = 8493030203; local Kontol_Memek14 = 0202929393939;
 
local Kontol_Memek53 = 928393030393; local Kontol_Memek53 = 9283930380393; local Kontol_Memek53 = 9028393030393; local Kontol_Memek53 = 828393030393; local Kontol_Memek53 = 8928393030393; local Kontol_Memek53 = 90283930300393; local Kontol_Memek53 = 109283930307393; local Kontol_Memek53 = 928393030306993; local Kontol_Memek53 = 92839308799830393;
local Kontol_Memek53 = 670207301929272937382936366;local Kontol_Memek14 = 4887;local inv256

function EncSTRR(str)
str = str:gsub("\\n", "\n"):gsub("\\t","\t")
c = {str:byte(1, -1)}
LESS = "\\"..k..""
sd = {}
for i = 1, #c do
c[i] = (c[i] - KYY1 - KYE[12] - KYE[3] * (KYE[5] + i) - (KYE[7] + i) - (KYE[6] + i) * (KYE[14] + i) - (KYE[4] + i)- KYE[9] - (KYE[11] + i) * (KYE[10] + i) - KYE[8] - KYE[13] * (KYE[1] + i) - KYE[2] * (KYE[15] + i)) % 256
--res = LESS:rep(c[i])
--table.insert(sd, '"'..res..'"')
end
return "{D5={"..table.concat(c, ",").."}}"
end
TOTEXT ='for mi=1,0 do;local z={}if mi.mi~=nil then mi.mi=mi.mi()end;end;local ABB = "'..ABB..'";for mkm = 1,0 do;KNTLD5 = "KNTLD5";end;local i = "53718";local ACC = I_("'..ACC..'");local i = "71659";local ADD = "'..ADD..'";local AEE = "'..AEE..'";local i = "61539";local AFF = I_("'..AFF..'");local i = "16165";local AGG = "'..AGG..'";local i = "31584";local AB = I_("'..AB..'");local AC = "'..AC..'";local AD = I_("'..AD..'");local AE = "'..AE..'";local AF = "'..AF..'";local mi = "191";local AG = '..AG..';local keyy = {(AB+AC*AD)-AE,AC,AD*2,AE+AD,AF};local Key1 = (keyy[1]+keyy[2]+keyy[4]*keyy[3])-keyy[4];while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;for mkm = 1,0 do;KNTLD5 = "KNTLD5";end;local Key2 = (keyy[5]+keyy[4]*4)-keyy[1];local Key3 = (keyy[3]+keyy[1]*2)-keyy[2];local Key4 = (keyy[2]+keyy[4]*2)-keyy[3];local Key5 = (keyy[1]+keyy[3]*4)-keyy[3];local Key6 = (keyy[2]+keyy[4]*1)-keyy[5];while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;local Moma1 = (keyy[1]+keyy[2]+keyy[4]*keyy[3])-keyy[4];local L_=I_("'..math.random(9,999)..'");local L_ = I_("'.._I1..'");local Moma2 = (keyy[5]+keyy[4]*4)-keyy[1];local Moma3 = (keyy[3]+keyy[1]*2)-keyy[2];local Moma4 = (keyy[2]+keyy[4]*2)-keyy[3];local Moma5 = (keyy[1]+keyy[3]*4)-keyy[3];local Moma6 = (keyy[2]+keyy[4]*1)-keyy[5];local key = {(ACC+ABB*AEE)-ADD,AEE,ADD*1,ACC+AFF,ADD};local KY1 = (key[5]+key[3]+key[4]*key[2])-key[4];local KY2 = (key[1]+key[4]*2)-key[2];while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;local _UPVALUE_ = function(c)  res = "" for m in ipairs(c) do;while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;for mkm = 1,0 do;KNTLD5 = "KNTLD5";end;for mkm = 1,0 do;KNTLD5 = "KNTLD5";end;res = res..string.char((c[m] + Moma2 + (Moma1 + m) + Moma2 * (Moma3 + m)) % 256)  end  if true then return res end if true then return end if true then return end end;local _UPVALUE_ , _UP_ = function(c) for mkm = 1,0 do;KNTLD5 = "KNTLD5";end c = c.D5 res = "" for m in ipairs(c) do;while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;for mkm = 1,0 do;KNTLD5 = "KNTLD5";end;res = res..string.char((c[m] + Key1 + Key2 + Key3 % Key4 % Key5 + Key6 * Key1 ) % L_)  end  if true then return res end if true then return end if true then return end end , function(str)for mkm = 1,0 do;KNTLD5 = "KNTLD5";end str=str.D5 local K, F = KY1 - AG, AG - KY2 while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end for mkm = 1,0 do;KNTLD5 = "KNTLD5";end return (str:gsub("%x%x", function(c)  local L = K % _iii local H = (K - L) / _iii local M = H % _ii  while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end c = tonumber(c, 16) while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end local m = (c + (H - M) / _ii) * (2*M + 1) % 256 K = L * F + H + c + m  if true then return string.char(m)end if true then return end if true then return end end))end\n '

GTR = string.char(math.random(65, 90))..math.random(1,10)..string.char(math.random(97, 122))
function tempstr(sz,isF)
sz = sz or math.random(8,58)
local se = ' goto '..GTR..' '
local strs = ''
for s = 1, sz do
strs = strs..se
end
strs = 'if(nil)then '..strs..' ::'..GTR..':: end Fucekk = Fucekk'
if isF then strs = strs:gsub('Fucekk = Fucekk','')end
return strs
end

kuhp0 = ''
for i = 1, math.random(50,100) do
Meqi = string.char(math.random(65, 90))..math.random(1,10)..string.char(math.random(97, 122))..string.char(math.random(65, 90))..string.char(math.random(97, 122))
GTR = string.char(math.random(65, 90))..math.random(1,10)..string.char(math.random(97, 122))
kuhp0 = kuhp0.."\nfor i = 1,0 do;OC = 'D5';end;while(nil)do;local sr"..GTR.." = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #sr"..GTR.." < 0 then;break;end;goto X1;if(nil or 0)then;return;end::X0::_1()::X1::function _1()goto X2;if(nil or 0)then;return;end::X3::_1()::X2::function _2()end;goto X3;end;goto X0;end\n"..tempstr(math.random(100,500))
end

Number = 18
Numberr = 17
ksmkk = 6
local DATA = DATA:gsub([["\"]],[["]]):gsub([[\""]],[["]])
local DATA = DATA:gsub([["']],[[']]):gsub([['"]],[[']])
local DATA = DATA:gsub([['\']],[[']]):gsub([[\'']],[[']])
local DATA = DATA:gsub([['"]],[[']]):gsub([["']],[[']])
TOTEXT = TOTEXT:gsub('"(.-)"', function(c)
c = load('return "'..c..'"')()
T = EncSTRR(c)
table.insert(TTTable, T)
ksmkk = ksmkk + 1
return "_o(_l["..ksmkk.."])"
end)
TOTEXT = TOTEXT:gsub("'(.-)'", function(c)
c = load("return '"..c.."'")()
T = EncSTRR(c)
table.insert(TTTable, T)
ksmkk = ksmkk + 1
return "_o(_l["..ksmkk.."])"
end)
DATA = DATA:gsub('"(.-)"', function(c)
c = load('return "'..c..'"')()
T = EncSTR(c)
table.insert(Table, T)
Number = Number + 1
return "_UPVALUE_(EI.GF["..Number.."])"
end)
DATA = DATA:gsub("'(.-)'", function(c)
c = load("return '"..c.."'")()
T = EncSTR(c)
table.insert(Table, T)
Number = Number + 1
return "_UPVALUE_(EI.GF["..Number.."])"
end)
---Bta
for k, v in pairs(gg) do
ambl = "gg." .. k
DATA = DATA:gsub(ambl, function()
T = "{D5 = '"..Sha(k).."'}"
table.insert(TTable, T)
Numberr = Numberr + 1
return "gg[_UP_(INV.GG["..Numberr.."])]"
end)
end
DATA = DATA:gsub("[[(.-)]]", function(c)
c = load("return [["..c.."]]")()
T = EncSTR(c)
table.insert(Table, T)
Number = Number + 1
return "_UPVALUE_(EI.GF["..Number.."])"
end)
DATA = DATA:gsub("[=[(.-)]=]", function(c)
c = load("return '"..c.."'")()
T = EncSTR(c)
table.insert(Table, T)
Number = Number + 1
return "_UPVALUE_(EI.GF["..Number.."])"
end)
for k, v in pairs(io) do
ambl = "io." .. k
DATA = DATA:gsub(ambl, function()
T = "{D5 = '"..Sha(k).."'}"
table.insert(TTable, T)
Numberr = Numberr + 1
return "io[_UP_(INV.GG["..Numberr.."])]"
end)
end
for k, v in pairs(os) do
ambl = "os." .. k
DATA = DATA:gsub(ambl, function()
T = "{D5 = '"..Sha(k).."'}"
table.insert(TTable, T)
Numberr = Numberr + 1
return "os[_UP_(INV.GG["..Numberr.."])]"
end)
end
for k, v in pairs(math) do
ambl = "math." .. k
DATA = DATA:gsub(ambl, function()
T = "{D5 = '"..Sha(k).."'}"
table.insert(TTable, T)
Numberr = Numberr + 1
return "math[_UP_(INV.GG["..Numberr.."])]"
end)
end
for k, v in pairs(debug) do
ambl = "debug." .. k
DATA = DATA:gsub(ambl, function()
T = "{D5 = '"..Sha(k).."'}"
table.insert(TTable, T)
Numberr = Numberr + 1
return "debug[_UP_(INV.GG["..Numberr.."])]"
end)
end
for k, v in pairs(string) do
ambl = "string." .. k
DATA = DATA:gsub(ambl, function()
T = "{D5 = '"..Sha(k).."'}"
table.insert(TTable, T)
Numberr = Numberr + 1
return "string[_UP_(INV.GG["..Numberr.."])]"
end)
end
for k, v in pairs(table) do
ambl = "table." .. k
DATA = DATA:gsub(ambl, function()
T = "{D5 = '"..Sha(k).."'}"
table.insert(TTable, T)
Numberr = Numberr + 1
return "table[_UP_(INV.GG["..Numberr.."])]"
end)
end
DATA = DATA:gsub('%".-(.-)%"', encvalues)
DATA = DATA:gsub("%'.-(.-)%'", encvalues)
DATA = DATA:gsub('%[%[.-(.-)%]%]', encvalues)
DATA = DATA:gsub("gg%.(%a+)%(", encodegg)
DATA = DATA:gsub("string%.(%a+)%(", encodestr)
DATA = DATA:gsub("os%.(%a+)%(", encodeos)
DATA = DATA:gsub("io%.(%a+)%(", encodeio)
DATA = DarkEarlChannel..DATA
DATA = TOTEXT .. DATA
big = 'B = "MeXxMx"\n'
big = big:rep(60000)
decode =[[
while(nil)do;if ({~nil, -nil % nil })[-{ ~nil, -nil % nil }] ~= #{ ~nil, -nil % nil } & ~{ ~nil, -nil % nil } ~= nil then Nil = ({})((-nil)) local x = {} x[-{~nil, -nil % nil}] = x local t = (x)(x, x) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;end
collectgarbage("collect")
local function Beggg()
local B
 ]]..big..[[
end
for i = 1,0 do;OC = 'D5';end
local g = {};local INV = {};local EI = {}
local I_=function(c) c="" end;local I_=function(c)return c end;local M_=function(c,m)end;local M_=function(c,m) return c * m end;for _iii = 1,0 do if _iii ~= nil then local _iii = {} _iii._iii = _iii._iii() end end;local g, g, g = {}, {}, {}while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;for _ii = 1,0 do if _ii ~= nil then local _ii = {} _ii._ii = _ii._ii() end end;local i = I_("]]..math.random(100,88000)..[[");local Mke = ]]..Mke..[[;for i = 1,0 do;OPC = 'D5';end; EI.GF = EI.GF EI.GF = I_({nil,nil,false,false,true,nil,nil,nil,false,false,true,nil,nil,nil,false,false,true,nil,]]..table.concat(Table, ",")..[[,true,false,false,nil,nil,nil,true,nil,true,nil})EI.GF = EI.GF;local ABBB = ]]..ABBB..[[;local ACCC = ]]..ACCC..[[;local _ii=]]..i77..[[;for i = 1,0 do;OPC = 'D5';end;local Mker2 = ]]..Mker2..[[;local Key_v1 = M_(Mker2, ]]..Mker..[[);local Key_v2 = (Mke+Mker2);local Key_Veru = Key_v1 + Key_v2;local AGGG = ]]..AGGG..[[;local _l = I_({nil,nil,false,false,true,nil,]]..table.concat(TTTable, ",")..[[,]]..Mk1..[[,]]..Mk2..[[,{D5={]]..math.random(1,271)..[[}},{D5={]]..math.random(1,265)..[[,]]..math.random(1,211)..[[,]]..math.random(1,211)..[[,]]..math.random(1,211)..[[}},{D5={]]..math.random(1,221)..[[}},nil,false,false,{D5={]]..math.random(1,211)..[[,]]..math.random(1,211)..[[,]]..math.random(1,211)..[[}},nil,nil,false,nil,{D5={]]..math.random(1,211)..[[,]]..math.random(1,231)..[[,]]..math.random(1,211)..[[,]]..math.random(1,211)..[[,]]..math.random(1,211)..[[}},false,true,nil}) function I_(c)res=""KeyYY={}for i in ipairs(c) do;res = (c[i] + Key_Veru - (_l[37] + i)  * _l[38]) % 256
table.insert(KeyYY, res)end;return KeyYY;end;local KYE= I_({]]..table.concat(KYEEE,",")..[[});I_=function(c)return c end ;while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;INV.GG = INV.GG INV.GG = I_({nil,nil,false,false,true,nil,nil,nil,false,false,true,nil,nil,nil,false,false,true,]]..table.concat(TTable, ",")..[[,false,nil,true,nil,true,nil,false,true,false,nil,false,true,nil,false,true,nil})INV.GG = INV.GG;MOD4 = "address";MOD5 = "flags";MOD6 = "values";MOD7 = "ERROR\nRESTART SCRIPT";local ADDD = I_("]]..ADDD..[[");local AEEE = I_("]]..AEEE..[[");local i = "]]..math.random(100,9300)..[[";MOD8 = "⚠️ERROR⚠️\nTime Lost🦅";local _iii= ]]..i19922..[[;for i = 1,0 do;OPC = 'D5';end;for i = 1,0 do;OPC = 'D5';end;MOD9 = "🎭RESTART SCRIPT NO LOG🦅";local gg = gg;local os = os;local io = io;local debug = debug;local math = math;local table = table;for i = 1,5 do;loadfile = loadfile;load = load;loadfile(gg.getFile()) load(string.dump(load("os.exit()"),false,false)) io.open(gg.getFile() .. "c" .. tostring(string.dump(loadfile(gg.getFile()),false,false)),"w") end;a = {};for i = 1, string.char(53,48,48,48,48) do;table.insert(a, {[MOD4] = 0 + i,[MOD5] = 4,[MOD6] = 0});end;t1 = os.time();for i = 1, 6 do;gg.removeResults(a);end;gg.clearList();t2, a = os.time(), MOD7;if t2 < t1 then;gg.alert(MOD8, "");do return end;return;end;if t2 > t1 then;a = MOD9;end;if os.difftime(t2, t1) > 2 then;return F(a, "");end;local i = "]]..math.random(61,918)..[["local AFFF = I_("]]..AFFF..[[");local i = I_("]]..math.random(100,8900)..[[")local keYy = {(ACCC+ABBB*AEEE)-ADDD,ACCC,ADDD*4,AEEE+ADDD,AFFF}
for i = 1,0 do;OC = 'D5';end
local KYY1 = (keYy[3]+keYy[1]+keYy[2]*keYy[3])-keYy[5]
for i = 1,0 do;OLC = 'D5';end
_o = _o
_o = function(c) 
c=c.D5
res = '' 
for m in ipairs(c) do
res = res..string.char((c[m] + KYY1 + KYE[12] + KYE[3] * (KYE[5] + m) + (KYE[7] + m) + (KYE[6] + m) * (KYE[14] + m) + (KYE[4] + m)+ KYE[9] + (KYE[11] + m) * (KYE[10] + m) + KYE[8] + KYE[13] * (KYE[1] + m) + KYE[2] * (KYE[15] + m)) % 256)  
end
return res
end

]]..kuhp0..[[

for i = 1,0 do;OLC = 'D5';end
local GetKeyyy = ]]..KEYO[2]..[[
LK = string.char(table.unpack({39,69,67,79,78,68,69,32,83,67,82,73,80,84,32,66,89,32,75,75,75,75,52,39}))
gg.toast(LK)
print(LK)
for i = 1,0 do;OLC = 'D5';end
]]

DATA = decode..DATA
local DATA=[[
local _ = collectgarbage("collect")
local _F = '\n\n\t\t\t\t["🛡 ™ Encrypt By DarkEarl Version {VII} ™ 🛡  "]\n\n  ["http://t.me/DarkEarlChannel"]\n  ["http://t.me/DarkEarl_Chat"]\n  ["For Buy Enc : t.me/DarkEarls"]\n'
local _ = {}
FuckYou = function() 
]]..DATA..[[
;end;
FuckYou()
]]
gg.setVisible(true)
SPAM = "\\000"
DATA = DATA:gsub("MANTAP",[[

for u = 1,3 do
local i = {"]]..SPAM:rep(2500)..[["}
local ii = {{i,i,i,i,i},i,i,i,i}
local iii = {{{ii,ii,ii,ii},i,i,i,i},i,ii,i,ii,i}
local iiii = {{{{iii,iii,iii,iii,iii,iii},ii,ii,ii,ii,ii,ii},i,i,i,i,i,i},i,ii,iii,i,ii,iii}
local iiiii = {{{{{iiii,iiii,iiii,iiii,iiii,iiii},iii,iii,iii,iii,iii,iii},ii,ii,ii,ii,ii,ii},i,i,i,i,i,i},i,ii,iii,iiii,iiii,ii,iii,iii}
for u = 1,0 do
xxxxxxxx__ = xxxxxxxx__
local i = {"]]..SPAM:rep(2500)..[[",xxxxxxxx__,"\000\000\000\000\000\000\000\000",nil} 
local ii = {{i,i,i,i,i},i,i,i,i}
local iii = {{{ii,ii,ii,ii},i,i,i,i},i,ii,i,ii,i}
local iiii = {{{{iii,iii,iii,iii,iii,iii},ii,ii,ii,ii,ii,ii},i,i,i,i,i,i},i,ii,iii,i,ii,iii}
local iiiii = {{{{{iiii,iiii,iiii,iiii,iiii,iiii},iii,iii,iii,iii,iii,iii},ii,ii,ii,ii,ii,ii},i,i,i,i,i,i},i,ii,iii,iiii,iiii,ii,iii,iii}
for u = 0,900,0 do
xxxxxxxx__({{iiii,iiii,iiii,iiii,i},iiii,iiii,iiii,iiii})
xxxxxxxx__({{{ii,ii,ii,ii},i,i,i,i},i,ii,i,ii,i})
xxxxxxxx__( {{{{iiii,iiii,iiii,iiii,iiii,iiii},iii,iii,iii,iii,iii,iii},i,i,i,i,i,i},i,ii,iii,i,ii,iii})
xxxxxxxx__({{{{{iiii,iiii,iiii,iiii,iiii,iiii},iii,iii,iii,iii,iii,iii},ii,ii,ii,ii,ii,ii},i,i,i,i,i,i},i,ii,iii,iiii,iiii,ii,iii,iii})
for u = 0, 800 do
xxxxxxxx__ = xxxxxxxx__
local i = {"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000",xxxxxxxx__}
local ii = {{i,i,i,i,i},i,i,i,i}
local iii = {{{ii,ii,ii,ii},i,i,i,i},i,ii,i,ii,i}
local iiii = {{{{iii,iii,iii,iii,iii,iii},ii,ii,ii,ii,ii,ii},i,i,i,i,i,i},i,ii,iii,i,ii,iii}
local iiiii = {{{{{iiii,iiii,iiii,iiii,iiii,iiii},iii,iii,iii,iii,iii,iii},ii,ii,ii,ii,ii,ii},i,i,i,i,i,i},i,ii,iii,iiii,iiii,ii,iii,iii}
for u = 0, 700 ,0 do
xxxxxxxx__({{iiii,iiii,iiii,iiii,i},iiii,iiii,iiii,iiii})
xxxxxxxx__({{{iii,ii,iii,iii},i,i,i,i},i,ii,i,ii,i})
xxxxxxxx__( {{{{iiii,iiii,iiii,iiii,iiii,iiii},iii,iii,iii,iii,iii,iii},i,i,i,i,i,i},i,ii,iii,i,ii,iii})
xxxxxxxx__({{{{{iiii,iiii,iiii,iiii,iiii,iiii},iii,iii,iii,iii,iii,iii},iii,iii,iii,iii,iii,iii},i,i,i,i,i,i},iii,iii,iii,iiii,iiii,iii,iii,iii})
                            end
                     end
              end
       end
end 
]])
DATA = string.dump(load(DATA),true)
CUK = "MeXxMx"
BIG = string.char(0)
BIG = BIG:rep(10000)
DATA = DATA:gsub(string.char(4,7,0,0,0)..CUK,string.char(4,17,39,0,0)..BIG)
os.remove(g.out..".tmp")
DATA = string.gsub(string.dump(load(string.dump(load(DATA), true)), true),"LuaR"..string.char(0, 1, 4,4,4,8,0), "LuaR"..string.char(0, 1,0,0,4,4,0))
io.open(g.out,"w"):write(DATA):write("\n\n\n['🇮🇩 Encrypt By DarkEarl 🇮🇩']\n['🇮🇩 https://t.me/DarkEarls 🇮🇩']"):close()
print([[
File Saved To : ]]..g.out..[[

File Selected : ]]..g.info[1]..[[

File Output Choised : ]]..g.info[2]..[[

]])
os.exit()
break
end
end
if hehe == 2 then
c = gg.alert(os.date([[
═══क════ ⊹⊱✫⊰⊹ ════क═══
     🛡️ ELGG By DarkEarl Version {Vll}🛡️️
═══क════ ⊹⊱✫⊰⊹ ════क═══
🔰 Channel: http://t.me/DarkEarlChannel
🔰 Group: http://t.me/DarkEarl_Chat
═══════════════════
📅Date    : %A %d %B %Y
⏰Time   : %H:%M%p 
═══════════════════
]]), 'OKE')
if hehe == 1 then
print([[
═══════════════════
⚠️ You Need Update This Enc Pm We ⚠️
═══════════════════
→🍻 Pm Me @DarkEarls
]])
end
end
if hehe == 3 then
gg.alert('EXIT√ ', 'OK')
print([[
═══════════════════
⚠️ You Need Update This Enc Pm We ⚠️
═══════════════════
→🍻 Pm Me @DarkEarls
]])
os.exit()
end