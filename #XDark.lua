local HEADERNYA = 'GAPAKE'
function encvalues(code)
return 'B({' .. table.concat({code:byte(1, -1)}, ",") .. "})"
end
local g = {}
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
g.data = loadfile(g.config)
if g.data ~= nil then g.info = g.data() g.data = nil end
if g.info == nil then g.info = {g.last, g.last:gsub("/[^/]+$", "")} end
DuarMmx = gg.alert(os.date([[✅ IOHacker Compiler Version I {BETA II}) 🥝
🗓️ Date : %A, %d %b %Y

==================
📌 Feautures :
 - Block SSTool
 - Block Unluac
 - Block Compiler
 - Anti Log System Injected
==================]]), "START ↗️", "↙️ EXIT")
if DuarMmx == nil then end
if DuarMmx == 1 then end
if DuarMmx == 2 then print([[==================
🛡️ Encryption Tool by XDark 🛡️
==================]]) return os.exit() end
while true do
g.info = gg.prompt({
"📁 Choose Script to Encrypt : ",
"📁 Select Output Folder: ",
"🕒 Add Expirity Date",
"🔐 Add Password",
"🛡️ Add Minimal GG Required",
"✏️ Add Rename Blocker",
"🎃 Custom Header Chunk (LuaxXx)"},
g.info,
{"file",
"path",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox"})
if g.info == nil then
return
end
gg.saveVariable(g.info, g.config)
g.last = g.info[1]
if loadfile(g.last) == nil then
return gg.alert([[⚠️Script not Found! ⚠️]])
else
g.out = g.last:match("[^/]+$")
g.out = "[VIP]" .. g.out:gsub(".lua", ".XDark")
g.out = g.info[2] .. "/" .. g.out .. ".lua"
print([[🛡️ Encryption by XDark v3.0 (BETA) 🛡️]])
print("\n\n☑️ Succes Encrypted!")
print("📁 File Saved in: ".. g.out.."\n")
info = {g.out}
end
local DATA = io.input(g.last):read('*a')
if g.info[3] == true then
day = os.date("%d")
exp_date = gg.prompt({
"📆 Set Expiry Date",
"📝 Type Expired Message"},
{
os.date("%Y%m" .. day + 7),
"⚠️ Script Expired ⚠️️"},
{"number", "text"})
end
if not exp_date then
gg.setVisible(true)
elseif exp_date[1] == nil then gg.alert("📆 Date Can Not Be Empty !") gg.setVisible(true)
else
print("📅 Expired Date: ".. exp_date[1])
DATA = '\
if os.date("%Y%m%d") >= ' .. encvalues(exp_date[1]) .. ' then gg.alert(' .. encvalues(exp_date[2]) .. ') end\n' .. DATA
end
if g.info[4] == true then
PASS = gg["prompt"]({
"🔐 Set Password For Script:",
"📝 Type Message For Wrong Password"
}, {
"",
"⚠️ Wrong Password ⚠️"
}, {
"text",
"text"
})
end
if not PASS then
gg.setVisible(true)
elseif PASS[1] == nil then
gg.alert("⚠️ Input Password !")
gg.setVisible(true)
else
print("🔐 Password: ".. PASS[1])
DATA = 'PASSW = gg.prompt({\'🔒 Input password: \'},{[1]=\'\'},{[1]=\'text\'})\
if not PASSW the﻿n return\
end \
if PASSW[1] == "" then gg.alert("Password Can Not Be Empty ❕") end\
if PASSW[1] ==' .. encvalues(PASS[1]) .. ' then\
gg.toast(\'✔️ Password correct❕\')\
else\
return gg.alert(' .. encvalues(PASS[2]) .. ') end\n' .. DATA
end
if g.info[5] == true then
VERSION = gg.prompt({"🔐 Set Minimal GG Version",
"🗒️ Error GG Message"
}, {
gg.VERSION,
"⚠️ Error GG VERSION ⚠️"
}, {
"number",
"text"
})
end
if not VERSION then
gg.setVisible(true)
elseif VERSION[1] == nil then
gg.alert("🛡️ Input Minimal Required GG Version !")
gg.setVisible(true)
else
print("🛡️ Minimal Version Required: "..VERSION[1])
DATA = '\
if gg.VERSION < '.. encvalues(VERSION[1]) .. ' then gg.alert(' .. encvalues(VERSION[2]) .. ') end\n' .. DATA
end
if g.info[6] == true then
NAME = gg.prompt({
"🗒️ Set Name For Script:",
"📝 Type Message For Name Changed",
}, {
g.out:match("[^/]+$"),
"⚠️ RENAME DETECTED ⚠️"}, {
"text",
"text"
})
end
if not NAME then
gg.setVisible(true)
elseif NAME[1] == nil then
gg.alert("📝 Set Name Can Not Be Empty !")
gg.setVisible(true)
else
print("📝 Added Rename Blocker")
DATA = '\
NAME = gg.getFile()\
NAME = NAME:match("[^/]+$")\
if NAME == ' .. encvalues(NAME[1]) .. ' then else gg.copyText('.. encvalues(NAME[1]) ..') return gg.alert(' .. encvalues(NAME[2]) .. ') end\n' .. DATA
end
if g.info[7] == true then
HEADERCST = gg.prompt({
"🍎 Type Custom Header (LuaxXx)",
}, {
"XDark",
}, {
"text",
})
Head45 = HEADERCST[1]
local HEADERNYA = 'PAKE'
else
Head45 = "XDark"
end
if not HEADERCST then
gg.setVisible(true)
elseif HEADERCST[1] == nil then
print("🍓 Lua Header: LuaXDarkNS")
return
else
print("🍓 Lua Header: Lua".. HEADERCST[1])
end
local CstHdr = Head45
if not load(DATA) then
print("⚠️ ERROR\n\nFile Can Not Be Encrypted !")
break 
else
function encodegg(code)
return 'N[B({103,103})][B({' .. table.concat({code:byte(1, -1)}, ",") .. '})]('
end
function encodeos(code)
return 'N[B({111,115})][B({' .. table.concat({code:byte(1, -1)}, ",") .. '})]('
end
function encodetbl(code)
return 'N[B({116,97,98,108,101})][B({' .. table.concat({code:byte(1, -1)}, ",") .. '})]('
end
function encodestr(code)
return 'N[B({115,116,114,105,110,103})][B({' .. table.concat({code:byte(1, -1)}, ",") .. '})]('
end
function encodeload(code)
return 'N[B({108,111,97,100})]('
end
function encodeloadf(code)
return 'N[B({108,111,97,100,102,105,108,101})]('
end
function encodeprint(code)
return 'N[B({112,114,105,110,116})]('
end
function encodeio(code)
return 'N[B({105,111})][B({'.. table.concat({code:byte(1, -1)}, ",") ..'})]('
end
function encvalue(code)
return '(load(B({' .. table.concat({code:byte(1, -1)}, ",") .. "}))()"
end
function encvalues(code)
return 'B({' .. table.concat({code:byte(1, -1)}, ",") .. "})"
end
local DATA = string.gsub(DATA, "%(%)", "()\nfor i = 1, 0 do local x_z = {12,36,48,56,78,121,64} if x_z ~= x_z then x_z."..string.char(math.random(97, 122)).." = x_z."..string.char(math.random(97, 122)).."() break end local x_x = {12,36,48,56,78,121,64} if x_x ~= x_x then x_x."..string.char(math.random(97, 122)).." = x_x."..string.char(math.random(97, 122)).."() break end local xnx = {12,36,48,56,78,121,64} if xnx ~= xnx then while true do xnx.c = x.x.g() xnx = nil _ENV = nil end end break end\nwhile(nil)do;local y={56,101,253,78,55,68,44,139}if(y.y)then;y.y=(y.y(y))end;end\nwhile(nil)do;for y=y,y do;local y={56,101,253,78,55,68,44,139}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={56,101,253,78,55,68,44,139}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={56,101,253,78,55,68,44,139}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={56,101,253,78,55,68,44,139}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={56,101,253,78,55,68,44,139}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={56,101,253,78,55,68,44,139}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={56,101,253,78,55,68,44,139}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={56,101,253,78,55,68,44,139}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end\n")
local DATA = [[
local N = _G
collectgarbage("collect")
local CR = "🛡 Encrypt Tool By IOHacker (Version I {BETA II}) 🛡";if(nil)then if(true)then else goto WSO end if(nil)then else goto WSO end if(nil)then else goto WSO end ::WSO:: end
function XDark()
while (nil) do;local _ , __= {} _[__] = nil,nil,nil,nil if (_[__])then;_[__]=(_[__](_)) _[__]=(_[__](_))end;end;local function XD()
if(nil)then if(true)then else goto WSO end if(nil)then else goto WSO end if(nil)then else goto WSO end ::WSO:: end;;
if(nil)then if(true)then else goto WSO end if(nil)then else goto WSO end if(nil)then else goto WSO end ::WSO:: end
local function BVBV() local XLua = ({ (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),{nil},{nil},{nil},{nil},{},{},{},{},{},{},(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil),(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil),{} }) local GVV = {} local pc = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil)pc() local sBx = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil) local TF = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local NHH ={} local NG ={} local HG =  {} local AGG = NG.HG.NHH.NG.HG.NHH.NG.HG(NHH.NG.HG({NHH.NG.HG}))()   NHH.NG.HG(NHH.NG.HG({NHH.NG.HG}))() local GHG = NHH.NG.NG.HG() ANNN():HG() NHH.NHH[X] =NHH[P]  local TC = {} local TFTC = TC(TF) local TFTV = TFTC({TFTC}) local TFTF=TFTC.NG TFTF() local BV = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil)   GHG:pc() TF(SBX)({FHG})({pc}) TFTF(BV) TFTF(BV+2); if TFTF(BV) <= TFTF(BV+1) then pc(sBx); TFTF(BV+3)({TFTF(BV)}) TFTF(TFTF(XLua()))() GHG(TFTF(XLua()))() GHG(TFTF(XLua()))() TFTF(TFTF(XLua()))() TFTF(TFTF(XLua()))() TFTV(TFTF(XLua()))() TFTV(TFTF(XLua()))() GHG(AGG())() GHG(AGG())() GHG(AGG())() HG({TFTF})();end;end
function BVBV() local XLua = ({ (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),{nil},{nil},{nil},{nil},{},{},{},{},{},{},(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil),(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil),{} }) local GVV = {} local pc = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil)pc() local sBx = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil) local TF = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local NHH ={} local NG ={} local HG =  {} local AGG = NG.HG.NHH.NG.HG.NHH.NG.HG(NHH.NG.HG({NHH.NG.HG}))()   NHH.NG.HG(NHH.NG.HG({NHH.NG.HG}))() local GHG = NHH.NG.NG.HG() ANNN():HG() NHH.NHH[X] =NHH[P]  local TC = {} local TFTC = TC(TF) local TFTV = TFTC({TFTC}) local TFTF=TFTC.NG TFTF() local BV = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil)   GHG:pc() TF(SBX)({FHG})({pc}) TFTF(BV) TFTF(BV+2); if TFTF(BV) <= TFTF(BV+1) then pc(sBx); TFTF(BV+3)({TFTF(BV)}) TFTF(TFTF(XLua()))() GHG(TFTF(XLua()))() GHG(TFTF(XLua()))() TFTF(TFTF(XLua()))() TFTF(TFTF(XLua()))() TFTV(TFTF(XLua()))() TFTV(TFTF(XLua()))() GHG(AGG())() GHG(AGG())() GHG(AGG())() HG({TFTF})();end;end;if(nil)then if(true)then else goto WSO end if(nil)then else goto WSO end if(nil)then else goto WSO end ::WSO:: end
for i = 1, 5 do if nil ~= nil then local XLua = ({ (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),{nil},{nil},{nil},{nil},{},{},{},{},{},{},(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil),(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil),{} }) local GVV = {} local pc = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil)pc() local sBx = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil) local TF = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local NHH ={} local NG ={} local HG =  {} local AGG = NG.HG.NHH.NG.HG.NHH.NG.HG(NHH.NG.HG({NHH.NG.HG}))()   NHH.NG.HG(NHH.NG.HG({NHH.NG.HG}))() local GHG = NHH.NG.NG.HG() ANNN():HG() NHH.NHH[X] =NHH[P]  local TC = {} local TFTC = TC(TF) local TFTV = TFTC({TFTC}) local TFTF=TFTC.NG TFTF() local BV = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil)   GHG:pc() TF(SBX)({FHG})({pc}) TFTF(BV) TFTF(BV+2); if TFTF(BV) <= TFTF(BV+1) then pc(sBx); TFTF(BV+3)({TFTF(BV)}) TFTF(TFTF(XLua()))() GHG(TFTF(XLua()))() GHG(TFTF(XLua()))() TFTF(TFTF(XLua()))() TFTF(TFTF(XLua()))() TFTV(TFTF(XLua()))() TFTV(TFTF(XLua()))() GHG(AGG())() GHG(AGG())() GHG(AGG())() HG({TFTF})();end;end;end
while (nil)do;local o={}if (o.o(o(o.o(o.oo))))then if (o.oo) then oo={} if (oo.o(oo.oo))then;o.o=(o.o(o.o.o(o.oo(oo.o(oo.oo(o.o.o(o.o(o,o)))))))) o={o.o,o.o,o.o,oo.o,oo.oo} p = (nil),(nil)*(nil) o.p = p,p,p,p oo.oo.o = (nil),(nil)..B({9542})..o.p..B({9542})..(nil)*(nil)/(nil)..B({9542,9538,9608,9603,9606,9539}) _G = {oo.oo.o,_G,oo.oo.o} gg = {oo.oo.o,gg,oo.oo.o} end;end;end;end
for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[''] = T local K = (x)(x, x) K[1] = 1 end
				local function BVBV() local XLua = ({ (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),{nil},{nil},{nil},{nil},{},{},{},{},{},{},(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil),(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil),{} }) local GVV = {} local pc = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil)pc() local sBx = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil) local TF = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local NHH ={} local NG ={} local HG =  {} local AGG = NG.HG.NHH.NG.HG.NHH.NG.HG(NHH.NG.HG({NHH.NG.HG}))()   NHH.NG.HG(NHH.NG.HG({NHH.NG.HG}))() local GHG = NHH.NG.NG.HG() ANNN():HG() NHH.NHH[X] =NHH[P]  local TC = {} local TFTC = TC(TF) local TFTV = TFTC({TFTC}) local TFTF=TFTC.NG TFTF() local BV = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil)   GHG:pc() TF(SBX)({FHG})({pc}) TFTF(BV) TFTF(BV+2); if TFTF(BV) <= TFTF(BV+1) then pc(sBx); TFTF(BV+3)({TFTF(BV)}) TFTF(TFTF(XLua()))() GHG(TFTF(XLua()))() GHG(TFTF(XLua()))() TFTF(TFTF(XLua()))() TFTF(TFTF(XLua()))() TFTV(TFTF(XLua()))() TFTV(TFTF(XLua()))() GHG(AGG())() GHG(AGG())() GHG(AGG())() HG({TFTF})();end;end
					while (nil)do;local a={}if (a.a)then if (a.a.a)then if (a.a.a.a) then if(a.a.a.a.a)then if (a.a.a.a.a.a) then;a.a=(a.a(a)) a.a=(a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))) a.b = (a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))),(a.a(a.a.a(a.a.a.a(a.a.a.a.a((a.a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))))) end;end;end;end;end;end
					while (nil) do;local _ , __= {} _[__] = nil,nil,nil,nil if (_[__])then;_[__]=(_[__](_)) _[__]=(_[__](_))end;end
				local function B(code)
local AB = 50 
 for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.multiChoice = xxx.os.exit() end end for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.searchNumber = xxx.TYPE_FLOAT() end end
local AC = 271 
 for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.multiChoice = xxx.os.exit() end end for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.searchNumber = xxx.TYPE_FLOAT() end end
local AD = 352 
 for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.multiChoice = xxx.os.exit() end end for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.searchNumber = xxx.TYPE_FLOAT() end end
local AE = 355 
 for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.multiChoice = xxx.os.exit() end end for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.searchNumber = xxx.TYPE_FLOAT() end end
local AF = 512 
 for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.multiChoice = xxx.os.exit() end end for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.searchNumber = xxx.TYPE_FLOAT() end end
local coc = ''
local Z = code
for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.multiChoice = xxx.os.exit() end end for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.searchNumber = xxx.TYPE_FLOAT() end end
local key =  {AF*2+AB+AF-AD,AC,AD,AD+AE,AF}
for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.multiChoice = xxx.os.exit() end end for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.searchNumber = xxx.TYPE_FLOAT() end end
local newt={}
for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.multiChoice = xxx.os.exit() end end for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.searchNumber = xxx.TYPE_FLOAT() end end
for x = 1,#Z do
table.insert(newt,Z[x] - (key[1]+ key[3] - key[2]) * (key[2]+key[3] + key[4] + key[5])/255)
end
for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.multiChoice = xxx.os.exit() end end for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.searchNumber = xxx.TYPE_FLOAT() end end
return coc..string.char(table.unpack(newt))
end
for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.multiChoice = xxx.os.exit() end end for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.searchNumber = xxx.TYPE_FLOAT() end end

while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.myname = zzzzz.XDark() zzzzz.fullnick = zzzzz.XDark.Phantom() zzzzz.channel = zzzzz.Xplosion.Id() zzzzz.partner = zzzzz.MrTeamz.id() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local sssss = {} sssss.d = sssss.d() if sssss.d ~= sssss.d then sssss.d = sssss.d() end local sssss = {} sssss.clearResults = sssss.clearResults() if sssss.clearResults ~= sssss.clearResults then sssss.clearResults = sssss.clearResults() end end end
for i = 1,5 do _G[B({9606,9609,9595,9598})](B({9603,9600,9530,9608,9609,9614,9530,9606,9609,9595,9598,9530,9609,9612,9530,9608,9609,9614,9530,9606,9609,9595,9598,9600,9603,9606,9599,9530,9609,9612,9530,9608,9609,9614,9530,9614,9595,9596,9606,9599,9544,9603,9608,9613,9599,9612,9614,9530,9609,9612,9530,9608,9609,9614,9530,9601,9601,9544,9595,9598,9598,9574,9603,9613,9614,9571,9614,9599,9607,9613,9530,9609,9612,9530,9608,9609,9614,9530,9609,9613,9544,9612,9599,9607,9609,9616,9599,9530,9530,9609,9612,9530,9608,9609,9614,9530,9601,9601,9544,9595,9606,9599,9612,9614,9530,9614,9602,9599,9608,9530,9612,9599,9614,9615,9612,9608,9530,9599,9608,9598}))() end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local sssss = {} sssss.g = sssss.g() if sssss.g ~= sssss.g then sssss.g = sssss.g() end local sssss = {} sssss.setRanges = sssss.setRanges() if sssss.setRanges ~= sssss.setRanges then sssss.setRanges = sssss.setRanges() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.myname = zzzzz.XDark() zzzzz.fullnick = zzzzz.XDark.Phantom() zzzzz.channel = zzzzz.Xplosion.Id() zzzzz.partner = zzzzz.MrTeamz.id() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local sssss = {} sssss.d = sssss.d() if sssss.d ~= sssss.d then sssss.d = sssss.d() end local sssss = {} sssss.clearResults = sssss.clearResults() if sssss.clearResults ~= sssss.clearResults then sssss.clearResults = sssss.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local sssss = {} sssss.g = sssss.g() if sssss.g ~= sssss.g then sssss.g = sssss.g() end local sssss = {} sssss.setRanges = sssss.setRanges() if sssss.setRanges ~= sssss.setRanges then sssss.setRanges = sssss.setRanges() end end end
if CR ~= B({9738,9657,9653,9659,9530,9567,9608,9597,9612,9619,9610,9614,9530,9582,9609,9609,9606,9530,9564,9619,9530,9571,9577,9570,9595,9597,9605,9599,9612,9530,9538,9584,9599,9612,9613,9603,9609,9608,9530,9571,9530,9621,9564,9567,9582,9563,9530,9571,9571,9623,9539,9530,9738,9657,9653,9659}) then
return _G[B({9601,9601})][B({9595,9606,9599,9612,9614})](B({9724,9652,9658,9737,9682,9641,9530,9567,9612,9612,9609,9612,9530,9566,9599,9614,9599,9597,9614,9599,9598,9530,9724,9652,9658,9737,9682,9641}))
end;if(nil)then if(true)then else goto WSO end if(nil)then else goto WSO end if(nil)then else goto WSO end ::WSO:: end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.myname = zzzzz.XDark() zzzzz.fullnick = zzzzz.XDark.Phantom() zzzzz.channel = zzzzz.Xplosion.Id() zzzzz.partner = zzzzz.MrTeamz.id() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local sssss = {} sssss.d = sssss.d() if sssss.d ~= sssss.d then sssss.d = sssss.d() end local sssss = {} sssss.clearResults = sssss.clearResults() if sssss.clearResults ~= sssss.clearResults then sssss.clearResults = sssss.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local sssss = {} sssss.g = sssss.g() if sssss.g ~= sssss.g then sssss.g = sssss.g() end local sssss = {} sssss.setRanges = sssss.setRanges() if sssss.setRanges ~= sssss.setRanges then sssss.setRanges = sssss.setRanges() end end end
_G[B({9601,9601})][B({9614,9609,9595,9613,9614})](CR)
LL  = _G[B({9606,9609,9595,9598})]
LLL = _G[B({9606,9609,9595,9598,9600,9603,9606,9599})]
for i = 1, 90 do LL (B({9545,9613,9619,9613,9614,9599,9607,9545,9610,9612,9603,9616,9543,9595,9610,9610,9545,9581,9599,9614,9614,9603,9608,9601,9613,9545,9581,9599,9614,9614,9603,9608,9601,9613,9544,9595,9610,9605})) end ;if(nil)then if(true)then else goto WSO end if(nil)then else goto WSO end if(nil)then else goto WSO end ::WSO:: end
if not LL or not LLL or not table.insert or not gg.addListItems or not os.remove  or not gg.alert then return end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.myname = zzzzz.XDark() zzzzz.fullnick = zzzzz.XDark.Phantom() zzzzz.channel = zzzzz.Xplosion.Id() zzzzz.partner = zzzzz.MrTeamz.id() end end
for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[''] = T local K = (x)(x, x) K[1] = 1 end
		for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[''] = T local K = (x)(x, x) K[1] = 1 end
			while (nil) do;local _ , __= {} _[__] = nil,nil,nil,nil if (_[__])then;_[__]=(_[__](_)) _[__]=(_[__](_))end;end
				local function BVBV() local XLua = ({ (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),{nil},{nil},{nil},{nil},{},{},{},{},{},{},(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil),(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil),{} }) local GVV = {} local pc = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil)pc() local sBx = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil) local TF = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local NHH ={} local NG ={} local HG =  {} local AGG = NG.HG.NHH.NG.HG.NHH.NG.HG(NHH.NG.HG({NHH.NG.HG}))()   NHH.NG.HG(NHH.NG.HG({NHH.NG.HG}))() local GHG = NHH.NG.NG.HG() ANNN():HG() NHH.NHH[X] =NHH[P]  local TC = {} local TFTC = TC(TF) local TFTV = TFTC({TFTC}) local TFTF=TFTC.NG TFTF() local BV = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil)   GHG:pc() TF(SBX)({FHG})({pc}) TFTF(BV) TFTF(BV+2); if TFTF(BV) <= TFTF(BV+1) then pc(sBx); TFTF(BV+3)({TFTF(BV)}) TFTF(TFTF(XLua()))() GHG(TFTF(XLua()))() GHG(TFTF(XLua()))() TFTF(TFTF(XLua()))() TFTF(TFTF(XLua()))() TFTV(TFTF(XLua()))() TFTV(TFTF(XLua()))() GHG(AGG())() GHG(AGG())() GHG(AGG())() HG({TFTF})();end;end
					while (nil)do;local a={}if (a.a)then if (a.a.a)then if (a.a.a.a) then if(a.a.a.a.a)then if (a.a.a.a.a.a) then;a.a=(a.a(a)) a.a=(a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))) a.b = (a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))),(a.a(a.a.a(a.a.a.a(a.a.a.a.a((a.a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))))) end;end;end;end;end;end
for i = 1, 200 do LL(B({9574,9609,9595,9598,9530,9570,9609,9609,9605,9530,9566,9599,9614,9599,9597,9614,9599,9598})) end
_G[B({9606,9609,9595,9598})](B({9590,9548,9553,9590,9553,9552,9590,9547,9547,9553,9590,9555,9553,9590,9554,9548,9590,9546,9590,9546,9590,9550,9590,9550,9590,9550,9590,9554,9590,9546,9590,9548,9551,9590,9547,9550,9553,9590,9547,9549,9590,9547,9546,9590,9548,9552,9590,9547,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9547,9590,9548,9590,9546,9590,9546,9590,9546,9590,9548,9551,9590,9546,9590,9546,9590,9546,9590,9549,9553,9590,9546,9590,9552,9550,9590,9546,9590,9553,9546,9590,9546,9590,9546,9590,9546,9590,9555,9547,9590,9547,9548,9554,9590,9550,9590,9547,9548,9554,9590,9548,9549,9590,9546,9590,9552,9550,9590,9552,9550,9590,9553,9546,9590,9546,9590,9546,9590,9546,9590,9555,9547,9590,9547,9548,9554,9590,9549,9590,9547,9555,9548,9590,9548,9549,9590,9546,9590,9552,9550,9590,9547,9548,9554,9590,9553,9546,9590,9546,9590,9547,9555,9548,9590,9547,9555,9548,9590,9553,9547,9590,9546,9590,9546,9590,9546,9590,9555,9547,9590,9547,9548,9554,9590,9548,9590,9547,9555,9548,9590,9548,9549,9590,9546,9590,9552,9551,9590,9546,9590,9553,9546,9590,9546,9590,9547,9555,9549,9590,9552,9550,9590,9553,9547,9590,9546,9590,9546,9590,9546,9590,9555,9547,9590,9547,9548,9554,9590,9547,9590,9547,9555,9548,9590,9548,9549,9590,9546,9590,9552,9551,9590,9547,9548,9554,9590,9553,9546,9590,9546,9590,9547,9555,9549,9590,9547,9555,9548,9590,9553,9547,9590,9546,9590,9546,9590,9546,9590,9555,9547,9590,9547,9548,9554,9590,9546,9590,9547,9555,9548,9590,9548,9549,9590,9546,9590,9552,9551,9590,9546,9590,9553,9546,9590,9546,9590,9547,9555,9550,9590,9546,9590,9553,9547,9590,9546,9590,9546,9590,9552,9550,9590,9555,9547,9590,9547,9548,9554,9590,9546,9590,9546,9590,9548,9549,9590,9546,9590,9547,9548,9554,9590,9546,9590,9549,9547,9590,9546,9590,9547,9548,9554,9590,9546,9590,9549,9547,9590,9546,9590,9546,9590,9546,9590,9555,9590,9550,9590,9546,9590,9546,9590,9546,9590,9551,9590,9547,9546,9554,9590,9547,9547,9547,9590,9555,9553,9590,9547,9546,9546,9590,9546,9590,9550,9590,9546,9590,9546,9590,9546,9590,9555,9590,9547,9546,9554,9590,9547,9547,9547,9590,9555,9553,9590,9547,9546,9546,9590,9547,9546,9548,9590,9547,9546,9551,9590,9547,9546,9554,9590,9547,9546,9547,9590,9546,9590,9550,9590,9546,9590,9546,9590,9546,9590,9552,9590,9547,9547,9552,9590,9555,9553,9590,9555,9554,9590,9547,9546,9554,9590,9547,9546,9547,9590,9546,9590,9550,9590,9546,9590,9546,9590,9546,9590,9553,9590,9547,9546,9551,9590,9547,9547,9546,9590,9547,9547,9551,9590,9547,9546,9547,9590,9547,9547,9550,9590,9547,9547,9552,9590,9546,9590,9550,9590,9546,9590,9546,9590,9546,9590,9549,9590,9547,9546,9549,9590,9547,9546,9549,9590,9546,9590,9550,9590,9546,9590,9546,9590,9546,9590,9547,9549,9590,9555,9553,9590,9547,9546,9546,9590,9547,9546,9546,9590,9553,9552,9590,9547,9546,9551,9590,9547,9547,9551,9590,9547,9547,9552,9590,9553,9549,9590,9547,9547,9552,9590,9547,9546,9547,9590,9547,9546,9555,9590,9547,9547,9551,9590,9546,9590,9550,9590,9546,9590,9546,9590,9546,9590,9549,9590,9547,9547,9547,9590,9547,9547,9551,9590,9546,9590,9550,9590,9546,9590,9546,9590,9546,9590,9553,9590,9547,9547,9550,9590,9547,9546,9547,9590,9547,9546,9555,9590,9547,9547,9547,9590,9547,9547,9554,9590,9547,9546,9547,9590,9546,9590,9550,9590,9546,9590,9546,9590,9546,9590,9552,9590,9555,9553,9590,9547,9546,9554,9590,9547,9546,9547,9590,9547,9547,9550,9590,9547,9547,9552,9590,9546,9590,9546,9590,9546,9590,9546,9590,9547,9590,9546,9590,9546,9590,9546,9590,9547,9590,9546,9590,9546,9590,9546,9590,9547,9590,9546,9590,9546,9590,9547,9555,9590,9546,9590,9546,9590,9547,9590,9554,9547,9590,9553,9590,9547,9548,9554,9590,9546,9590,9547,9547,9590,9546,9590,9546,9590,9546,9590,9552,9554,9590,9546,9590,9547,9548,9554,9590,9546,9590,9554,9549,9590,9546,9590,9546,9590,9546,9590,9547,9549,9548,9590,9547,9590,9546,9590,9546,9590,9547,9550,9553,9590,9547,9590,9552,9550,9590,9546,9590,9547,9549,9551,9590,9547,9590,9552,9550,9590,9546,9590,9547,9553,9547,9590,9547,9590,9552,9550,9590,9546,9590,9547,9553,9547,9590,9547,9590,9546,9590,9547,9548,9554,9590,9555,9549,9590,9546,9590,9546,9590,9546,9590,9547,9549,9548,9590,9547,9590,9546,9590,9546,9590,9547,9550,9553,9590,9547,9590,9546,9590,9547,9548,9554,9590,9555,9549,9590,9546,9590,9546,9590,9546,9590,9547,9549,9548,9590,9547,9590,9546,9590,9546,9590,9547,9550,9553,9590,9547,9590,9552,9550,9590,9546,9590,9547,9549,9551,9590,9547,9590,9552,9550,9590,9546,9590,9547,9553,9547,9590,9547,9590,9552,9550,9590,9546,9590,9547,9553,9547,9590,9547,9590,9546,9590,9547,9548,9554,9590,9555,9549,9590,9546,9590,9546,9590,9546,9590,9547,9549,9548,9590,9547,9590,9546,9590,9546,9590,9547,9550,9553,9590,9546,9590,9546,9590,9546,9590,9547,9555,9552,9590,9547,9590,9547,9548,9554,9590,9546,9590,9548,9547,9547,9590,9547,9590,9547,9555,9548,9590,9546,9590,9547,9555,9555,9590,9547,9590,9547,9555,9548,9590,9546,9590,9548,9549,9551,9590,9547,9590,9547,9555,9548,9590,9546,9590,9548,9549,9551,9590,9547,9590,9546,9590,9547,9548,9554,9590,9547,9551,9553,9590,9546,9590,9546,9590,9546,9590,9547,9555,9552,9590,9547,9590,9547,9548,9554,9590,9546,9590,9548,9547,9547,9590,9547,9590,9546,9590,9547,9548,9554,9590,9547,9551,9553,9590,9546,9590,9546,9590,9546,9590,9547,9555,9552,9590,9547,9590,9547,9548,9554,9590,9546,9590,9548,9547,9547,9590,9547,9590,9547,9555,9548,9590,9546,9590,9547,9555,9555,9590,9547,9590,9547,9555,9548,9590,9546,9590,9548,9549,9551,9590,9547,9590,9547,9555,9548,9590,9546,9590,9548,9549,9551,9590,9547,9590,9546,9590,9547,9548,9554,9590,9547,9551,9553,9590,9546,9590,9547,9548,9554,9590,9546,9590,9548,9546,9549,9590,9546,9590,9546,9590,9547,9590,9550,9590,9546,9590,9547,9548,9554,9590,9552,9550,9590,9548,9548,9554,9590,9546,9590,9547,9548,9554,9590,9547,9590,9547,9547,9590,9546,9590,9546,9590,9547,9590,9552,9554,9590,9546,9590,9547,9548,9554,9590,9552,9551,9590,9549,9552,9590,9546,9590,9547,9548,9554,9590,9547,9590,9553,9551,9590,9546,9590,9546,9590,9547,9590,9547,9549,9548,9590,9546,9590,9547,9548,9554,9590,9552,9551,9590,9547,9546,9546,9590,9546,9590,9547,9548,9554,9590,9547,9590,9547,9549,9555,9590,9546,9590,9546,9590,9547,9590,9547,9555,9552,9590,9546,9590,9547,9548,9554,9590,9552,9551,9590,9547,9552,9550,9590,9546,9590,9546,9590,9547,9590,9548,9546,9549,9590,9546,9590,9546,9590,9548,9590,9547,9547,9590,9546,9590,9546,9590,9548,9590,9553,9551,9590,9546,9590,9546,9590,9548,9590,9547,9549,9555,9590,9546,9590,9546,9590,9548,9590,9548,9546,9549,9590,9546,9590,9546,9590,9549,9590,9547,9547,9590,9546,9590,9546,9590,9549,9590,9552,9554,9590,9552,9590,9547,9548,9554,9590,9549,9590,9554,9549,9590,9546,9590,9546,9590,9549,9590,9547,9549,9548,9590,9553,9590,9546,9590,9549,9590,9547,9550,9553,9590,9553,9590,9552,9550,9590,9549,9590,9547,9549,9551,9590,9553,9590,9552,9550,9590,9549,9590,9547,9553,9547,9590,9553,9590,9552,9550,9590,9549,9590,9547,9553,9547,9590,9547,9590,9546,9590,9547,9549,9547,9590,9555,9549,9590,9546,9590,9546,9590,9549,9590,9547,9549,9548,9590,9553,9590,9546,9590,9549,9590,9547,9550,9553,9590,9547,9590,9546,9590,9547,9549,9547,9590,9555,9549,9590,9546,9590,9546,9590,9549,9590,9547,9549,9548,9590,9553,9590,9546,9590,9549,9590,9547,9550,9553,9590,9553,9590,9552,9550,9590,9549,9590,9547,9549,9551,9590,9553,9590,9552,9550,9590,9549,9590,9547,9553,9547,9590,9547,9548,9554,9590,9552,9550,9590,9549,9590,9548,9546,9555,9590,9553,9590,9547,9555,9548,9590,9549,9590,9548,9546,9553,9590,9553,9590,9547,9555,9548,9590,9549,9590,9548,9546,9554,9590,9553,9590,9549,9590,9547,9555,9551,9590,9547,9553,9547,9590,9547,9590,9546,9590,9547,9549,9547,9590,9555,9549,9590,9546,9590,9546,9590,9549,9590,9547,9549,9548,9590,9553,9590,9546,9590,9549,9590,9547,9550,9553,9590,9546,9590,9546,9590,9549,9590,9547,9555,9552,9590,9553,9590,9547,9548,9554,9590,9549,9590,9548,9547,9547,9590,9553,9590,9547,9555,9548,9590,9549,9590,9547,9555,9555,9590,9553,9590,9547,9555,9548,9590,9549,9590,9548,9549,9551,9590,9553,9590,9547,9555,9548,9590,9549,9590,9548,9549,9551,9590,9547,9590,9546,9590,9547,9549,9547,9590,9547,9551,9553,9590,9546,9590,9546,9590,9549,9590,9547,9555,9552,9590,9553,9590,9547,9548,9554,9590,9549,9590,9548,9547,9547,9590,9547,9590,9546,9590,9547,9549,9547,9590,9547,9551,9553,9590,9546,9590,9546,9590,9549,9590,9547,9555,9552,9590,9553,9590,9547,9548,9554,9590,9549,9590,9548,9547,9547,9590,9553,9590,9547,9555,9548,9590,9549,9590,9547,9555,9555,9590,9553,9590,9547,9555,9548,9590,9549,9590,9548,9549,9551,9590,9547,9548,9554,9590,9552,9550,9590,9550,9590,9547,9553,9590,9554,9590,9552,9550,9590,9550,9590,9547,9551,9590,9554,9590,9552,9550,9590,9550,9590,9547,9552,9590,9553,9590,9547,9549,9548,9590,9549,9590,9548,9549,9551,9590,9547,9590,9546,9590,9547,9549,9547,9590,9547,9551,9553,9590,9546,9590,9546,9590,9549,9590,9548,9546,9549,9590,9553,9590,9547,9548,9554,9590,9552,9550,9590,9549,9552,9590,9546,9590,9546,9590,9546,9590,9553,9551,9590,9546,9590,9546,9590,9546,9590,9547,9549,9548,9590,9547,9590,9546,9590,9546,9590,9547,9550,9553,9590,9546,9590,9546,9590,9546,9590,9547,9555,9552,9590,9547,9590,9547,9548,9554,9590,9546,9590,9548,9547,9547,9590,9547,9590,9547,9555,9548,9590,9546,9590,9547,9555,9555,9590,9547,9590,9547,9555,9548,9590,9546,9590,9548,9549,9551,9590,9547,9590,9547,9555,9548,9590,9546,9590,9548,9549,9551,9590,9547,9590,9546,9590,9547,9548,9554,9590,9547,9551,9553,9590,9546,9590,9546,9590,9546,9590,9547,9555,9552,9590,9547,9590,9547,9548,9554,9590,9546,9590,9548,9547,9547,9590,9547,9590,9546,9590,9547,9548,9554,9590,9547,9551,9553,9590,9546,9590,9546,9590,9546,9590,9547,9555,9552,9590,9547,9590,9547,9548,9554,9590,9546,9590,9548,9547,9547,9590,9547,9590,9547,9555,9548,9590,9546,9590,9547,9555,9555,9590,9547,9590,9547,9555,9548,9590,9546,9590,9548,9549,9551,9590,9547,9548,9554,9590,9552,9550,9590,9547,9590,9547,9553,9590,9548,9590,9552,9550,9590,9547,9590,9547,9551,9590,9548,9590,9552,9550,9590,9547,9590,9547,9552,9590,9547,9590,9547,9548,9555,9590,9546,9590,9548,9549,9551,9590,9547,9590,9546,9590,9547,9548,9554,9590,9547,9551,9553,9590,9547,9590,9546,9590,9546,9590,9547,9555,9548,9590,9546,9590,9547,9548,9554,9590,9552,9550,9590,9548,9548,9547,9590,9546,9590,9546,9590,9546,9590,9547,9555,9552,9590,9547,9590,9547,9548,9554,9590,9546,9590,9548,9547,9547,9590,9546,9590,9546,9590,9547,9590,9550,9590,9548,9590,9546,9590,9547,9590,9547,9555,9590,9548,9590,9552,9550,9590,9547,9590,9553,9590,9548,9590,9552,9550,9590,9547,9590,9550,9549,9590,9548,9590,9552,9550,9590,9547,9590,9550,9549,9590,9547,9590,9546,9590,9547,9548,9554,9590,9548,9548,9547,9590,9546,9590,9546,9590,9547,9590,9550,9590,9548,9590,9546,9590,9547,9590,9547,9555,9590,9547,9590,9546,9590,9547,9548,9554,9590,9548,9548,9547,9590,9546,9590,9546,9590,9547,9590,9550,9590,9548,9590,9546,9590,9547,9590,9547,9555,9590,9548,9590,9552,9550,9590,9547,9590,9553,9590,9548,9590,9552,9550,9590,9547,9590,9550,9549,9590,9547,9548,9554,9590,9552,9550,9590,9547,9590,9554,9547,9590,9548,9590,9547,9555,9548,9590,9547,9590,9553,9555,9590,9548,9590,9547,9555,9548,9590,9547,9590,9554,9546,9590,9548,9590,9547,9590,9552,9551,9590,9550,9549,9590,9547,9590,9546,9590,9547,9548,9554,9590,9548,9548,9547,9590,9546,9590,9546,9590,9547,9590,9550,9590,9548,9590,9546,9590,9547,9590,9547,9555,9590,9546,9590,9546,9590,9547,9590,9552,9554,9590,9548,9590,9547,9548,9554,9590,9547,9590,9554,9549,9590,9548,9590,9547,9555,9548,9590,9547,9590,9553,9547,9590,9548,9590,9547,9555,9548,9590,9547,9590,9547,9546,9553,9590,9548,9590,9547,9555,9548,9590,9547,9590,9547,9546,9553,9590,9547,9590,9546,9590,9547,9548,9555,9590,9548,9555,9590,9546,9590,9546,9590,9547,9590,9552,9554,9590,9548,9590,9547,9548,9554,9590,9547,9590,9554,9549,9590,9547,9590,9546,9590,9547,9548,9555,9590,9548,9555,9590,9546,9590,9546,9590,9547,9590,9552,9554,9590,9548,9590,9547,9548,9554,9590,9547,9590,9554,9549,9590,9548,9590,9547,9555,9548,9590,9547,9590,9553,9547,9590,9548,9590,9547,9555,9548,9590,9547,9590,9547,9546,9553,9590,9548,9590,9547,9555,9548,9590,9547,9590,9547,9546,9553,9590,9547,9590,9546,9590,9547,9548,9555,9590,9548,9555,9590,9546,9590,9546,9590,9547,9590,9553,9551,9590,9546,9590,9546,9590,9547,9590,9547,9549,9555,9590,9546,9590,9546,9590,9547,9590,9548,9546,9549,9590,9549,9590,9552,9550,9590,9552,9552,9590,9553,9590,9550,9590,9552,9550,9590,9547,9549,9546,9590,9553,9590,9550,9590,9552,9550,9590,9547,9555,9550,9590,9553,9590,9550,9590,9552,9550,9590,9552,9552,9590,9553,9590,9550,9590,9552,9550,9590,9547,9549,9546,9590,9553,9590,9550,9590,9552,9550,9590,9547,9555,9550,9590,9553,9590,9550,9590,9552,9550,9590,9552,9552,9590,9553,9590,9548,9590,9547,9555,9548,9590,9547,9555,9550,9590,9553,9547,9590,9550,9590,9547,9555,9548,9590,9552,9552,9590,9553,9547,9590,9546,9590,9547,9548,9554,9590,9548,9590,9547,9549,9555,9590,9548,9590,9547,9555,9548,9590,9547,9555,9550,9590,9547,9555,9555,9590,9551,9590,9547,9555,9548,9590,9552,9552,9590,9547,9555,9555,9590,9546,9590,9547,9548,9554,9590,9552,9552,9590,9547,9552,9550,9590,9547,9590,9546,9590,9548,9590,9555,9549,9590,9546,9590,9546,9590,9547,9549,9546,9590,9548,9555,9590,9546,9590,9547,9548,9554,9590,9547,9549,9546,9590,9548,9555,9590,9548,9590,9547,9555,9548,9590,9547,9555,9550,9590,9553,9547,9590,9550,9590,9547,9555,9548,9590,9552,9552,9590,9553,9547,9590,9548,9590,9547,9555,9548,9590,9547,9555,9550,9590,9547,9549,9551,9590,9551,9590,9552,9550,9590,9552,9552,9590,9547,9549,9551,9590,9546,9590,9547,9548,9554,9590,9548,9590,9548,9546,9549,9590,9548,9590,9547,9555,9548,9590,9547,9555,9551,9590,9553,9590,9552,9590,9552,9550,9590,9552,9553,9590,9553,9590,9546,9590,9547,9548,9554,9590,9552,9552,9590,9548,9548,9554,9590,9547,9590,9546,9590,9548,9590,9547,9551,9553,9590,9546,9590,9546,9590,9547,9549,9546,9590,9555,9549,9590,9546,9590,9547,9548,9554,9590,9552,9552,9590,9555,9549,9590,9548,9590,9547,9555,9548,9590,9547,9555,9550,9590,9553,9547,9590,9550,9590,9547,9555,9548,9590,9547,9555,9550,9590,9553,9547,9590,9550,9590,9547,9555,9548,9590,9552,9552,9590,9553,9547,9590,9546,9590,9547,9548,9554,9590,9547,9549,9546,9590,9555,9549,9590,9546,9590,9552,9551,9590,9548,9590,9547,9549,9550,9590,9546,9590,9547,9548,9554,9590,9547,9549,9546,9590,9547,9551,9553,9590,9551,9590,9552,9550,9590,9552,9552,9590,9547,9550,9546,9590,9547,9590,9546,9590,9552,9552,9590,9547,9551,9553,9590,9548,9590,9547,9555,9548,9590,9547,9549,9546,9590,9547,9549,9551,9590,9546,9590,9552,9551,9590,9552,9552,9590,9547,9555,9554,9590,9546,9590,9552,9551,9590,9547,9549,9547,9590,9552,9590,9548,9590,9547,9549,9547,9590,9549,9590,9553,9590,9551,9590,9547,9549,9547,9590,9548,9590,9547,9549,9554,9590,9546,9590,9546,9590,9548,9590,9547,9549,9555,9590,9551,9590,9546,9590,9548,9590,9547,9555,9548,9590,9548,9590,9546,9590,9549,9590,9546,9590,9547,9590,9546,9590,9547,9549,9546,9590,9548,9548,9547,9590,9551,9590,9547,9548,9554,9590,9549,9590,9546,9590,9546,9590,9547,9548,9554,9590,9549,9590,9553,9551,9590,9551,9590,9547,9548,9554,9590,9549,9590,9547,9548,9554,9590,9546,9590,9547,9548,9554,9590,9552,9553,9590,9547,9546,9546,9590,9547,9590,9546,9590,9547,9549,9547,9590,9548,9555,9590,9551,9590,9547,9555,9548,9590,9547,9555,9551,9590,9553,9547,9590,9552,9590,9547,9548,9554,9590,9549,9590,9547,9548,9554,9590,9546,9590,9547,9548,9554,9590,9552,9553,9590,9547,9551,9553,9590,9546,9590,9546,9590,9549,9590,9547,9549,9548,9590,9553,9590,9546,9590,9549,9590,9547,9550,9553,9590,9546,9590,9546,9590,9549,9590,9547,9555,9552,9590,9553,9590,9547,9548,9554,9590,9549,9590,9548,9547,9547,9590,9553,9590,9547,9555,9548,9590,9549,9590,9547,9555,9555,9590,9553,9590,9547,9555,9548,9590,9549,9590,9548,9549,9551,9590,9553,9590,9547,9555,9548,9590,9549,9590,9548,9549,9551,9590,9547,9590,9546,9590,9547,9549,9547,9590,9547,9551,9553,9590,9546,9590,9546,9590,9549,9590,9547,9555,9552,9590,9553,9590,9547,9548,9554,9590,9549,9590,9548,9547,9547,9590,9547,9590,9546,9590,9547,9549,9547,9590,9547,9551,9553,9590,9546,9590,9546,9590,9549,9590,9547,9555,9552,9590,9553,9590,9547,9548,9554,9590,9549,9590,9548,9547,9547,9590,9553,9590,9547,9555,9548,9590,9549,9590,9547,9555,9555,9590,9553,9590,9547,9555,9548,9590,9549,9590,9548,9549,9551,9590,9553,9590,9547,9555,9548,9590,9549,9590,9548,9549,9551,9590,9547,9590,9546,9590,9547,9549,9547,9590,9547,9551,9553,9590,9550,9590,9547,9555,9549,9590,9547,9555,9551,9590,9548,9546,9550,9590,9547,9590,9546,9590,9552,9553,9590,9548,9548,9547,9590,9548,9590,9546,9590,9549,9590,9547,9555,9548,9590,9546,9590,9552,9552,9590,9550,9590,9552,9590,9547,9590,9546,9590,9547,9549,9547,9590,9548,9548,9547,9590,9546,9590,9547,9548,9554,9590,9550,9590,9547,9547,9590,9546,9590,9552,9552,9590,9552,9554,9590,9553,9546,9590,9546,9590,9547,9548,9554,9590,9552,9554,9590,9549,9552,9590,9547,9590,9546,9590,9547,9549,9547,9590,9548,9548,9547,9590,9546,9590,9547,9548,9554,9590,9550,9590,9547,9547,9590,9547,9590,9546,9590,9550,9590,9552,9550,9590,9546,9590,9547,9548,9554,9590,9552,9554,9590,9549,9552,9590,9547,9590,9546,9590,9552,9553,9590,9548,9548,9547,9590,9552,9590,9547,9548,9554,9590,9549,9590,9547,9555,9548,9590,9553,9590,9546,9590,9550,9590,9546,9590,9547,9590,9546,9590,9552,9553,9590,9548,9548,9547,9590,9552,9590,9547,9548,9554,9590,9549,9590,9547,9555,9548,9590,9553,9590,9552,9552,9590,9547,9549,9548,9590,9547,9549,9590,9547,9590,9546,9590,9552,9553,9590,9548,9548,9547,9590,9552,9590,9547,9548,9554,9590,9549,9590,9547,9555,9548,9590,9553,9590,9546,9590,9550,9590,9546,9590,9547,9590,9546,9590,9547,9549,9547,9590,9548,9548,9547,9590,9552,9590,9547,9548,9554,9590,9550,9590,9546,9590,9553,9590,9552,9552,9590,9547,9555,9552,9590,9553,9553,9590,9547,9590,9546,9590,9547,9549,9548,9590,9548,9555,9590,9553,9590,9547,9549,9548,9590,9546,9590,9548,9552,9590,9547,9548,9554,9590,9548,9546,9590,9552,9550,9590,9548,9549,9590,9547,9590,9546,9590,9549,9590,9547,9555,9548,9590,9547,9590,9547,9548,9554,9590,9550,9590,9546,9590,9547,9590,9546,9590,9552,9553,9590,9548,9548,9547,9590,9552,9590,9547,9548,9554,9590,9549,9590,9547,9555,9548,9590,9553,9590,9552,9553,9590,9550,9590,9547,9549,9590,9547,9590,9546,9590,9547,9549,9547,9590,9548,9548,9547,9590,9546,9590,9546,9590,9550,9590,9547,9547,9590,9552,9590,9547,9548,9554,9590,9550,9590,9552,9550,9590,9553,9590,9546,9590,9550,9590,9547,9548,9554,9590,9547,9590,9546,9590,9550,9590,9555,9549,9590,9546,9590,9546,9590,9552,9554,9590,9549,9552,9590,9547,9590,9546,9590,9552,9553,9590,9548,9548,9547,9590,9552,9590,9547,9548,9554,9590,9549,9590,9547,9555,9548,9590,9552,9590,9547,9548,9554,9590,9550,9590,9546,9590,9546,9590,9546,9590,9550,9590,9552,9550,9590,9546,9590,9547,9548,9554,9590,9550,9590,9555,9549,9590,9546,9590,9546,9590,9550,9590,9548,9555,9590,9546,9590,9546,9590,9547,9549,9547,9590,9548,9548,9547,9590,9546,9590,9547,9548,9554,9590,9552,9553,9590,9548,9548,9547,9590,9550,9590,9547,9548,9554,9590,9549,9590,9547,9555,9548,9590,9552,9590,9547,9548,9554,9590,9550,9590,9546,9590,9546,9590,9546,9590,9550,9590,9552,9550,9590,9546,9590,9547,9548,9554,9590,9550,9590,9555,9549,9590,9546,9590,9546,9590,9550,9590,9548,9555,9590,9546,9590,9546,9590,9547,9549,9547,9590,9548,9548,9547,9590,9546,9590,9547,9548,9554,9590,9552,9553,9590,9548,9548,9547,9590,9550,9590,9547,9548,9554,9590,9549,9590,9547,9555,9548,9590,9552,9590,9547,9548,9554,9590,9550,9590,9546,9590,9546,9590,9546,9590,9550,9590,9552,9550,9590,9546,9590,9547,9548,9554,9590,9550,9590,9555,9549,9590,9546,9590,9546,9590,9550,9590,9548,9555,9590,9546,9590,9546,9590,9547,9549,9547,9590,9548,9548,9547,9590,9546,9590,9547,9548,9554,9590,9552,9553,9590,9548,9548,9547,9590,9552,9590,9547,9548,9554,9590,9549,9590,9547,9555,9548,9590,9552,9590,9547,9548,9554,9590,9550,9590,9546,9590,9546,9590,9546,9590,9550,9590,9552,9550,9590,9546,9590,9547,9548,9554,9590,9550,9590,9555,9549,9590,9546,9590,9546,9590,9550,9590,9548,9555,9590,9546,9590,9546,9590,9547,9549,9547,9590,9548,9548,9547,9590,9546,9590,9547,9548,9554,9590,9552,9553,9590,9548,9548,9547,9590,9552,9590,9547,9548,9554,9590,9549,9590,9547,9555,9548,9590,9552,9590,9547,9548,9554,9590,9550,9590,9546,9590,9546,9590,9546,9590,9550,9590,9552,9550,9590,9546,9590,9547,9548,9554,9590,9550,9590,9555,9549,9590,9546,9590,9546,9590,9550,9590,9548,9555,9590,9546,9590,9546,9590,9547,9549,9547,9590,9548,9548,9547,9590,9546,9590,9547,9548,9554,9590,9552,9553,9590,9548,9548,9547,9590,9552,9590,9546,9590,9549,9590,9547,9555,9548,9590,9552,9590,9547,9548,9554,9590,9550,9590,9546,9590,9546,9590,9546,9590,9550,9590,9552,9550,9590,9546,9590,9547,9548,9554,9590,9550,9590,9555,9549,9590,9546,9590,9546,9590,9550,9590,9548,9555,9590,9546,9590,9546,9590,9547,9549,9547,9590,9548,9548,9547,9590,9546,9590,9547,9548,9554,9590,9552,9553,9590,9548,9548,9547,9590,9552,9590,9546,9590,9549,9590,9547,9555,9548,9590,9552,9590,9547,9548,9554,9590,9550,9590,9546,9590,9546,9590,9546,9590,9550,9590,9552,9550,9590,9546,9590,9547,9548,9554,9590,9550,9590,9555,9549,9590,9546,9590,9546,9590,9550,9590,9548,9555,9590,9546,9590,9546,9590,9547,9549,9547,9590,9548,9548,9547,9590,9546,9590,9547,9548,9554,9590,9552,9553,9590,9548,9548,9547,9590,9550,9590,9547,9548,9554,9590,9549,9590,9547,9555,9548,9590,9550,9590,9546,9590,9550,9590,9546,9590,9546,9590,9547,9548,9554,9590,9550,9590,9548,9555,9590,9546,9590,9546,9590,9547,9549,9547,9590,9548,9548,9547,9590,9546,9590,9547,9548,9554,9590,9552,9553,9590,9548,9548,9547,9590,9550,9590,9547,9548,9554,9590,9549,9590,9547,9555,9548,9590,9550,9590,9546,9590,9550,9590,9546,9590,9546,9590,9547,9548,9554,9590,9550,9590,9548,9555,9590,9546,9590,9546,9590,9547,9549,9547,9590,9548,9548,9547,9590,9546,9590,9547,9548,9554,9590,9552,9553,9590,9548,9548,9547,9590,9550,9590,9547,9548,9554,9590,9549,9590,9547,9555,9548,9590,9550,9590,9546,9590,9550,9590,9546,9590,9546,9590,9547,9548,9554,9590,9550,9590,9548,9555,9590,9546,9590,9546,9590,9547,9549,9547,9590,9548,9548,9547,9590,9546,9590,9547,9548,9554,9590,9552,9553,9590,9548,9548,9547,9590,9549,9590,9547,9548,9554,9590,9549,9590,9547,9555,9548,9590,9546,9590,9547,9548,9554,9590,9550,9590,9547,9547,9590,9552,9590,9547,9548,9554,9590,9550,9590,9552,9550,9590,9546,9590,9547,9548,9554,9590,9552,9554,9590,9549,9552,9590,9547,9590,9546,9590,9547,9549,9547,9590,9548,9548,9547,9590,9546,9590,9547,9548,9554,9590,9552,9553,9590,9548,9548,9547,9590,9546,9590,9547,9548,9554,9590,9546,9590,9549,9547,9590,9546,9590,9546,9590,9546,9590,9547,9549,9590,9546,9590,9550,9590,9546,9590,9546,9590,9546,9590,9549,9590,9553,9548,9590,9553,9547,9590,9546,9590,9550,9590,9546,9590,9546,9590,9546,9590,9550,9590,9553,9554,9590,9553,9548,9590,9553,9548,9590,9546,9590,9550,9590,9546,9590,9546,9590,9546,9590,9549,9590,9553,9554,9590,9553,9547,9590,9546,9590,9550,9590,9546,9590,9546,9590,9546,9590,9551,9590,9552,9551,9590,9553,9554,9590,9553,9554,9590,9553,9554,9590,9546,9590,9550,9590,9546,9590,9546,9590,9546,9590,9548,9590,9554,9554,9590,9546,9590,9550,9590,9546,9590,9546,9590,9546,9590,9548,9590,9554,9546,9590,9546,9590,9550,9590,9546,9590,9546,9590,9546,9590,9549,9590,9547,9547,9548,9590,9555,9555,9590,9546,9590,9550,9590,9546,9590,9546,9590,9546,9590,9550,9590,9554,9549,9590,9552,9552,9590,9554,9554,9590,9546,9590,9550,9590,9546,9590,9546,9590,9546,9590,9550,9590,9553,9546,9590,9553,9548,9590,9553,9547,9590,9546,9590,9549,9590,9552,9550,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9549,9590,9552,9549,9590,9548,9550,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9549,9590,9552,9550,9590,9554,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9547,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9547,9590,9547,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546,9590,9546}))
_G[B({9606,9609,9595,9598})](B({9603,9600,9530,9608,9609,9614,9530,9606,9609,9595,9598,9530,9609,9612,9530,9608,9609,9614,9530,9606,9609,9595,9598,9600,9603,9606,9599,9530,9609,9612,9530,9608,9609,9614,9530,9614,9595,9596,9606,9599,9544,9603,9608,9613,9599,9612,9614,9530,9609,9612,9530,9608,9609,9614,9530,9601,9601,9544,9595,9598,9598,9574,9603,9613,9614,9571,9614,9599,9607,9613,9530,9609,9612,9530,9608,9609,9614,9530,9609,9613,9544,9612,9599,9607,9609,9616,9599,9530,9530,9609,9612,9530,9608,9609,9614,9530,9601,9601,9544,9595,9606,9599,9612,9614,9530,9614,9602,9599,9608,9530,9612,9599,9614,9615,9612,9608,9530,9599,9608,9598}))() 
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local sssss = {} sssss.d = sssss.d() if sssss.d ~= sssss.d then sssss.d = sssss.d() end local sssss = {} sssss.clearResults = sssss.clearResults() if sssss.clearResults ~= sssss.clearResults then sssss.clearResults = sssss.clearResults() end end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.myname = zzzzz.XDark() zzzzz.fullnick = zzzzz.XDark.Phantom() zzzzz.channel = zzzzz.Xplosion.Id() zzzzz.partner = zzzzz.MrTeamz.id() end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local sssss = {} sssss.d = sssss.d() if sssss.d ~= sssss.d then sssss.d = sssss.d() end local sssss = {} sssss.clearResults = sssss.clearResults() if sssss.clearResults ~= sssss.clearResults then sssss.clearResults = sssss.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local sssss = {} sssss.d = sssss.d() if sssss.d ~= sssss.d then sssss.d = sssss.d() end local sssss = {} sssss.clearResults = sssss.clearResults() if sssss.clearResults ~= sssss.clearResults then sssss.clearResults = sssss.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local sssss = {} sssss.g = sssss.g() if sssss.g ~= sssss.g then sssss.g = sssss.g() end local sssss = {} sssss.setRanges = sssss.setRanges() if sssss.setRanges ~= sssss.setRanges then sssss.setRanges = sssss.setRanges() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local sssss = {} sssss.d = sssss.d() if sssss.d ~= sssss.d then sssss.d = sssss.d() end local sssss = {} sssss.clearResults = sssss.clearResults() if sssss.clearResults ~= sssss.clearResults then sssss.clearResults = sssss.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local sssss = {} sssss.g = sssss.g() if sssss.g ~= sssss.g then sssss.g = sssss.g() end local sssss = {} sssss.setRanges = sssss.setRanges() if sssss.setRanges ~= sssss.setRanges then sssss.setRanges = sssss.setRanges() end end end 
_G[B({9601,9601})][B({9613,9599,9614,9584,9603,9613,9603,9596,9606,9599})](false)
    a = {}
    for i = 1, 25000 do
      _G[B({9614,9595,9596,9606,9599})][B({9603,9608,9613,9599,9612,9614})](a, {address = 0 + i,  flags = 4,  values = 0})
    end
    t1 = _G[B({9609,9613})][B({9614,9603,9607,9599})]()
while (nil) do;local _ , __= {} _[__] = nil,nil,nil,nil if (_[__])then;_[__]=(_[__](_)) _[__]=(_[__](_))end;end
			while (nil) do;local _ , __= {} _[__] = nil,nil,nil,nil if (_[__])then;_[__]=(_[__](_)) _[__]=(_[__](_))end;end
				local function BVBV() local XLua = ({ (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),{nil},{nil},{nil},{nil},{},{},{},{},{},{},(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil),(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil),{} }) local GVV = {} local pc = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil)pc() local sBx = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil) local TF = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local NHH ={} local NG ={} local HG =  {} local AGG = NG.HG.NHH.NG.HG.NHH.NG.HG(NHH.NG.HG({NHH.NG.HG}))()   NHH.NG.HG(NHH.NG.HG({NHH.NG.HG}))() local GHG = NHH.NG.NG.HG() ANNN():HG() NHH.NHH[X] =NHH[P]  local TC = {} local TFTC = TC(TF) local TFTV = TFTC({TFTC}) local TFTF=TFTC.NG TFTF() local BV = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil)   GHG:pc() TF(SBX)({FHG})({pc}) TFTF(BV) TFTF(BV+2); if TFTF(BV) <= TFTF(BV+1) then pc(sBx); TFTF(BV+3)({TFTF(BV)}) TFTF(TFTF(XLua()))() GHG(TFTF(XLua()))() GHG(TFTF(XLua()))() TFTF(TFTF(XLua()))() TFTF(TFTF(XLua()))() TFTV(TFTF(XLua()))() TFTV(TFTF(XLua()))() GHG(AGG())() GHG(AGG())() GHG(AGG())() HG({TFTF})();end;end
					while (nil)do;local a={}if (a.a)then if (a.a.a)then if (a.a.a.a) then if(a.a.a.a.a)then if (a.a.a.a.a.a) then;a.a=(a.a(a)) a.a=(a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))) a.b = (a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))),(a.a(a.a.a(a.a.a.a(a.a.a.a.a((a.a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))))) end;end;end;end;end;end
			while (nil) do;local _ , __= {} _[__] = nil,nil,nil,nil if (_[__])then;_[__]=(_[__](_)) _[__]=(_[__](_))end;end
    for i = 1, 5 do
      _G[B({9601,9601})][B({9612,9599,9607,9609,9616,9599,9580,9599,9613,9615,9606,9614,9613})](a)
    end
                    for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[''] = T local K = (x)(x, x) K[1] = 1 end
		for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[''] = T local K = (x)(x, x) K[1] = 1 end
    for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[''] = T local K = (x)(x, x) K[1] = 1 end
		for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[''] = T local K = (x)(x, x) K[1] = 1 end
    _G[B({9601,9601})][B({9597,9606,9599,9595,9612,9574,9603,9613,9614})]()
    t2, a = _G[B({9609,9613})][B({9614,9603,9607,9599})](), B({9567,9580,9580,9577,9580,9590,9608,9580,9567,9581,9582,9563,9580,9582,9530,9581,9565,9580,9571,9578,9582})
    if t2 < t1 then
      _G[B({9601,9601})][B({9595,9606,9599,9612,9614})](B({9724,9652,9658,9737,9682,9641,9567,9580,9580,9577,9580,9724,9652,9658,9737,9682,9641,9590,9608,9582,9603,9607,9599,9530,9574,9609,9613,9614,9738,9657,9664,9631}), '')
      return
    end
while (nil) do;local _ , __= {} _[__] = nil,nil,nil,nil if (_[__])then;_[__]=(_[__](_)) _[__]=(_[__](_))end;end
			while (nil) do;local _ , __= {} _[__] = nil,nil,nil,nil if (_[__])then;_[__]=(_[__](_)) _[__]=(_[__](_))end;end
				local function BVBV() local XLua = ({ (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),{nil},{nil},{nil},{nil},{},{},{},{},{},{},(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil),(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil),{} }) local GVV = {} local pc = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil)pc() local sBx = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil) local TF = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local NHH ={} local NG ={} local HG =  {} local AGG = NG.HG.NHH.NG.HG.NHH.NG.HG(NHH.NG.HG({NHH.NG.HG}))()   NHH.NG.HG(NHH.NG.HG({NHH.NG.HG}))() local GHG = NHH.NG.NG.HG() ANNN():HG() NHH.NHH[X] =NHH[P]  local TC = {} local TFTC = TC(TF) local TFTV = TFTC({TFTC}) local TFTF=TFTC.NG TFTF() local BV = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil)   GHG:pc() TF(SBX)({FHG})({pc}) TFTF(BV) TFTF(BV+2); if TFTF(BV) <= TFTF(BV+1) then pc(sBx); TFTF(BV+3)({TFTF(BV)}) TFTF(TFTF(XLua()))() GHG(TFTF(XLua()))() GHG(TFTF(XLua()))() TFTF(TFTF(XLua()))() TFTF(TFTF(XLua()))() TFTV(TFTF(XLua()))() TFTV(TFTF(XLua()))() GHG(AGG())() GHG(AGG())() GHG(AGG())() HG({TFTF})();end;end
					while (nil)do;local a={}if (a.a)then if (a.a.a)then if (a.a.a.a) then if(a.a.a.a.a)then if (a.a.a.a.a.a) then;a.a=(a.a(a)) a.a=(a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))) a.b = (a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))),(a.a(a.a.a(a.a.a.a(a.a.a.a.a((a.a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))))) end;end;end;end;end;end
			while (nil) do;local _ , __= {} _[__] = nil,nil,nil,nil if (_[__])then;_[__]=(_[__](_)) _[__]=(_[__](_))end;end
    if t2 > t1 then
      a = B({9580,9567,9581,9582,9563,9580,9582,9530,9581,9565,9580,9571,9578,9582,9530,9576,9577,9530,9574,9577,9569,9738,9657,9664,9631})
    end
if(nil)then if(true)then else goto WSO end if(nil)then else goto WSO end if(nil)then else goto WSO end ::WSO:: end
					while (nil)do;local a={}if (a.a)then if (a.a.a)then if (a.a.a.a) then if(a.a.a.a.a)then if (a.a.a.a.a.a) then;a.a=(a.a(a)) a.a=(a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))) a.b = (a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))),(a.a(a.a.a(a.a.a.a(a.a.a.a.a((a.a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))))) end;end;end;end;end;end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.myname = zzzzz.XDark() zzzzz.fullnick = zzzzz.XDark.Phantom() zzzzz.channel = zzzzz.Xplosion.Id() zzzzz.partner = zzzzz.MrTeamz.id() end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.myname = zzzzz.XDark() zzzzz.fullnick = zzzzz.XDark.Phantom() zzzzz.channel = zzzzz.Xplosion.Id() zzzzz.partner = zzzzz.MrTeamz.id() end end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.myname = zzzzz.XDark() zzzzz.fullnick = zzzzz.XDark.Phantom() zzzzz.channel = zzzzz.Xplosion.Id() zzzzz.partner = zzzzz.MrTeamz.id() end end
			while (nil) do;local _ , __= {} _[__] = nil,nil,nil,nil if (_[__])then;_[__]=(_[__](_)) _[__]=(_[__](_))end;end
					while (nil)do;local a={}if (a.a)then if (a.a.a)then if (a.a.a.a) then if(a.a.a.a.a)then if (a.a.a.a.a.a) then;a.a=(a.a(a)) a.a=(a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))) a.b = (a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))),(a.a(a.a.a(a.a.a.a(a.a.a.a.a((a.a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))))) end;end;end;end;end;end
while true do if not cuk then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end cuk = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.data ~= nil then xxx.sel = xxx.data() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local gaul = {} if gaul ~= nil then gaul = nil end local zzzzz = {} if zzzzz ~= zzzzz then zzzzz.myname = zzzzz.XDark() zzzzz.fullnick = zzzzz.XDark.Phantom() zzzzz.channel = zzzzz.Xplosion.Id() zzzzz.partner = zzzzz.MrTeamz.id() end end
while (nil) do;local _ , __= {} _[__] = nil,nil,nil,nil if (_[__])then;_[__]=(_[__](_)) _[__]=(_[__](_))end;end
    if _G[B({9609,9613})][B({9598,9603,9600,9600,9614,9603,9607,9599})](t2, t1) > 2 then
      return _G[B({9601,9601})][B({9595,9606,9599,9612,9614})](a, '')end;if(nil)then if(true)then else goto WSO end if(nil)then else goto WSO end if(nil)then else goto WSO end ::WSO:: end
			while (nil) do;local _ , __= {} _[__] = nil,nil,nil,nil if (_[__])then;_[__]=(_[__](_)) _[__]=(_[__](_))end;end
while (nil) do;local _ , __= {} _[__] = nil,nil,nil,nil if (_[__])then;_[__]=(_[__](_)) _[__]=(_[__](_))end;end
			while (nil) do;local _ , __= {} _[__] = nil,nil,nil,nil if (_[__])then;_[__]=(_[__](_)) _[__]=(_[__](_))end;end
				local function BVBV() local XLua = ({ (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),{nil},{nil},{nil},{nil},{},{},{},{},{},{},(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil),(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil),{} }) local GVV = {} local pc = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil)pc() local sBx = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil) local TF = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local NHH ={} local NG ={} local HG =  {} local AGG = NG.HG.NHH.NG.HG.NHH.NG.HG(NHH.NG.HG({NHH.NG.HG}))()   NHH.NG.HG(NHH.NG.HG({NHH.NG.HG}))() local GHG = NHH.NG.NG.HG() ANNN():HG() NHH.NHH[X] =NHH[P]  local TC = {} local TFTC = TC(TF) local TFTV = TFTC({TFTC}) local TFTF=TFTC.NG TFTF() local BV = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil)   GHG:pc() TF(SBX)({FHG})({pc}) TFTF(BV) TFTF(BV+2); if TFTF(BV) <= TFTF(BV+1) then pc(sBx); TFTF(BV+3)({TFTF(BV)}) TFTF(TFTF(XLua()))() GHG(TFTF(XLua()))() GHG(TFTF(XLua()))() TFTF(TFTF(XLua()))() TFTF(TFTF(XLua()))() TFTV(TFTF(XLua()))() TFTV(TFTF(XLua()))() GHG(AGG())() GHG(AGG())() GHG(AGG())() HG({TFTF})();end;end
					while (nil)do;local a={}if (a.a)then if (a.a.a)then if (a.a.a.a) then if(a.a.a.a.a)then if (a.a.a.a.a.a) then;a.a=(a.a(a)) a.a=(a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))) a.b = (a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))),(a.a(a.a.a(a.a.a.a(a.a.a.a.a((a.a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))))) end;end;end;end;end;end
			while (nil) do;local _ , __= {} _[__] = nil,nil,nil,nil if (_[__])then;_[__]=(_[__](_)) _[__]=(_[__](_))end;end
while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local a={} local b={} local c={}if (a.a) then if (a.a.a) then if (a.a.a.a) then if (a.a.a.a.a) then if (b.b) then if (b.b.b) then if (b.b.b.b) then if (c.c) then if (c.c.c) then if (c.c.c.c) then;a.a = (a.a(a)) a.a=(a.a(a.a.a(a.a(a)))) b.b = (b.b(b)) b.b=(b.b(b.b.b(b.b.b.b(b.b.b(b.b(b.b)))))) c.c = (c.c(c.c.c(c.c.c.c(c.c.c(c.c(c.c)))))) local r = {a.a,b.b,c.c} r.r = r[1]..r[2]..r[3] r.i = r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local z={} local x={} local c={}if (z.z) then if (z.z.z) then if (z.z.z.z) then if (z.z.z.z.z) then if (x.x) then if (x.x.x) then if (x.x.x.x) then if (c.c) then if (c.c.c) then if (c.c.c.c) then;z.z = (z.z(z)) z.z=(z.z(z.z.z(z.z(z)))) x.x = (x.x(x)) x.x=(x.x(x.x.x(x.x.x.x(x.x.x(x.x(x.x)))))) c.c = (c.c(c.c.c(c.c.c.c(c.c.c(c.c(c.c)))))) local r = {z.z,x.x,c.c} r.r = r[1]..r[2]..r[3] r.i = r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
_G[B({9601,9601})][B({9613,9599,9614,9584,9603,9613,9603,9596,9606,9599})](true);if(nil)then if(true)then else goto WSO end if(nil)then else goto WSO end if(nil)then else goto WSO end ::WSO:: end
while (nil)do;local f={} local g={} local h={}if (f.f) then if (f.f.f) then if (f.f.f.f) then if (f.f.f.f.f) then if (g.g) then if (g.g.g) then if (g.g.g.g) then if (h.h) then if (h.h.h) then if (h.h.h.h) then;f.f = (f.f(f)) f.f=(f.f(f.f.f(f.f(f)))) g.g = (g.g(g)) g.g=(g.g(g.g.g(g.g.g.g(g.g.g(g.g(g.g)))))) h.h = (h.h(h.h.h(h.h.h.h(h.h.h(h.h(h.h)))))) local r = {f.f,g.g,h.h} r.r = r[1]..r[2]..r[3] r.i = r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local x={}if (x.x)then if (x.x.x)then;x.x=(x.x(x)) x.x=(x.x(x.x.x(x.x(x))))end;end;end
local function XP_B()
for i = 1, 0 do i(i + ii + iii + iiii + (i + ii) + iii | i + ii + iii + iiii + iiii + ii + ii + i + iii + iii + iii + iii + i + iiii + iii + i + i + i + i | ii + i + i + ii + ii + iii) end
for i = 1, 0 do i((true | false) - true) end
for i, v in ipairs({}) do if ipairs(i .. v) == true then break end end
for i in ipairs({}) do local sssss = {} sssss.sel = sssss.data() if sssss.data ~= nil then sssss.sel = sssss.data() end sssss = nil end
for i in ipairs({}) do local _m = {} if _m.data ~= nil then _m.bidun = _m.data() _m.data = nil end _m = nil end
for i in ipairs({}) do local sssss = {} sssss.sel = sssss.data() if sssss.data ~= nil then sssss.sel = sssss.data() end sssss = nil end
for i in ipairs({}) do local _m = {} if _m.data ~= nil then _m.bidun = _m.data() _m.data = nil end _m = nil end
for i in ipairs({}) do local sssss = {} sssss.sel = sssss.data() if sssss.data ~= nil then sssss.sel = sssss.data() end sssss = nil end
for i in ipairs({}) do local _m = {} if _m.data ~= nil then _m.bidun = _m.data() _m.data = nil end _m = nil end
for i in ipairs({}) do local sssss = {} sssss.sel = sssss.data() if sssss.data ~= nil then sssss.sel = sssss.data() end sssss = nil end
for i in ipairs({}) do local _m = {} if _m.data ~= nil then _m.bidun = _m.data() _m.data = nil end _m = nil end
for i in ipairs({}) do local sssss = {} sssss.sel = sssss.data() if sssss.data ~= nil then sssss.sel = sssss.data() end sssss = nil end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local sssss = {} sssss.d = sssss.d() if sssss.d ~= sssss.d then sssss.d = sssss.d() end local sssss = {} sssss.clearResults = sssss.clearResults() if sssss.clearResults ~= sssss.clearResults then sssss.clearResults = sssss.clearResults() end end end
for i in ipairs({}) do local xs = {} if not xs then else xs = ya local sssss = {} sssss.g = sssss.g() if sssss.g ~= sssss.g then sssss.g = sssss.g() end local sssss = {} sssss.setRanges = sssss.setRanges() if sssss.setRanges ~= sssss.setRanges then sssss.setRanges = sssss.setRanges() end end end end
function BVBV() local XLua = ({ (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),{nil},{nil},{nil},{nil},{},{},{},{},{},{},(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil),(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil),{} }) local GVV = {} local pc = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil)pc() local sBx = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil) local TF = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local NHH ={} local NG ={} local HG =  {} local AGG = NG.HG.NHH.NG.HG.NHH.NG.HG(NHH.NG.HG({NHH.NG.HG}))()   NHH.NG.HG(NHH.NG.HG({NHH.NG.HG}))() local GHG = NHH.NG.NG.HG() ANNN():HG() NHH.NHH[X] =NHH[P]  local TC = {} local TFTC = TC(TF) local TFTV = TFTC({TFTC}) local TFTF=TFTC.NG TFTF() local BV = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil)   GHG:pc() TF(SBX)({FHG})({pc}) TFTF(BV) TFTF(BV+2); if TFTF(BV) <= TFTF(BV+1) then pc(sBx); TFTF(BV+3)({TFTF(BV)}) TFTF(TFTF(XLua()))() GHG(TFTF(XLua()))() GHG(TFTF(XLua()))() TFTF(TFTF(XLua()))() TFTF(TFTF(XLua()))() TFTV(TFTF(XLua()))() TFTV(TFTF(XLua()))() GHG(AGG())() GHG(AGG())() GHG(AGG())() HG({TFTF})();end;end
local function XP_C()
for i = 1, 0 do i(i + ii + iii + iiii + (i + ii) + iii | i + ii + iii + iiii + iiii + ii + ii + i + iii + iii + iii + iii + i + iiii + iii + i + i + i + i | ii + i + i + ii + ii + iii) end
for i = 1, 0 do i((true | false) - true) end end
function BVBV() local XLua = ({ (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),{nil},{nil},{nil},{nil},{},{},{},{},{},{},(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil),(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil),{} }) local GVV = {} local pc = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil)pc() local sBx = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil % nil*nil/nil) local TF = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local NHH ={} local NG ={} local HG =  {} local AGG = NG.HG.NHH.NG.HG.NHH.NG.HG(NHH.NG.HG({NHH.NG.HG}))()   NHH.NG.HG(NHH.NG.HG({NHH.NG.HG}))() local GHG = NHH.NG.NG.HG() ANNN():HG() NHH.NHH[X] =NHH[P]  local TC = {} local TFTC = TC(TF) local TFTV = TFTC({TFTC}) local TFTF=TFTC.NG TFTF() local BV = (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil)   GHG:pc() TF(SBX)({FHG})({pc}) TFTF(BV) TFTF(BV+2); if TFTF(BV) <= TFTF(BV+1) then pc(sBx); TFTF(BV+3)({TFTF(BV)}) TFTF(TFTF(XLua()))() GHG(TFTF(XLua()))() GHG(TFTF(XLua()))() TFTF(TFTF(XLua()))() TFTF(TFTF(XLua()))() TFTV(TFTF(XLua()))() TFTV(TFTF(XLua()))() GHG(AGG())() GHG(AGG())() GHG(AGG())() HG({TFTF})();end;end
end
]]..DATA..[[
end
XDark()
]]
for i = 1, 3 do
load(DATA)
end
repeat
DATA = DATA:gsub('"(.-)"', function(c)
c = load('return "'..c..'"')()
T = table.concat({c:byte(1,-1)}, ",")
return "B({"..T.."})"
end)
until DATA:match('"(.-)"') == nil
repeat
DATA = DATA:gsub("'(.-)'", function(c)
c = load("return '"..c.."'")()
T = table.concat({c:byte(1,-1)}, ",")
return "B({"..T.."})"
end)
until DATA:match("'(.-)'") == nil
repeat
DATA = DATA:gsub("[[(.-)]]", function(c)
c = load("return [["..c.."]]")()
T = table.concat({c:byte(1,-1)}, ",")
return "B({"..T.."})"
end)
until DATA:match("[=[(.-)]=]") == nil
repeat
DATA = DATA:gsub("[=[(.-)]=]", function(c)
c = load("return '"..c.."'")()
T = table.concat({c:byte(1,-1)}, ",")
return "B({"..T.."})"
end)
until DATA:match("[=[(.-)]=]") == nil
local DATA = string.gsub(DATA, "gg%.(%a+)%(", encodegg)
local DATA = string.gsub(DATA, "gg%.TYPE_(%a+)", function(code)
return "gg[B({84,89,80,69,95,"..table.concat({code:byte(1, -1)}, ",").."})]"
end)
local DATA = string.gsub(DATA, "gg%.SIGN_EQUAL", "gg[B({83,73,71,78,95,69,81,85,65,76})]")
local DATA = string.gsub(DATA, "os%.(%a+)%(", encodeos)
local DATA = string.gsub(DATA, "%(%B%({%}%)%)", "()")
local DATA = string.gsub(DATA, "%(%B%({12,36,48,56,78,121,64}%)%)%)%)", "()")
local DATA = string.gsub(DATA, "%B%({12,36,48,56,78,121,64}%)", "''")
gg.toast("75% Please Wait...")
local DATA = string.gsub(DATA, "string%.(%a+)%(", encodestr)
local DATA = string.gsub(DATA, "loadfile%(", encodeloadf)
local DATA = string.gsub(DATA, "load%(", encodeload)
local DATA = string.gsub(DATA, "print%(", encodeprint)
local DATA = string.gsub(DATA, "table%.(%a+)%(", encodetbl)
local DATA = string.gsub(DATA, "io%.(%a+)%(", encodeio)
local DATA = string.gsub(DATA, "math%.(%a+)%(", function(code)
return 'N[B({109,97,116,104})][B({' .. table.concat({code:byte(1, -1)}, ",") .. "})]("
end)
local DATA = string.gsub(DATA, "92,110", "10")
local DATA = string.gsub(DATA, "TheCodesAreHere", [[
local function B(code)
local LOTAI = '"'
for i = 1, 0 do local XDark = {9,88,56,124,26,134,53} if XDark.d ~= nil then XDark.d = XDark.g() end break end
return '' .. string.char(table.unpack(code))
end
]])
local DATA = string.gsub(string.dump(load(DATA), true), "LuaR", "LuaR", 1)
gg.toast("80% Please Wait..")
file = io.open(g.out, "w")
file:write(DATA)
file:close()
if HEADERNYA == 'PAKE' then
local TTB = function (A) -- Text to byte
local Byte = {string.byte(A,1,-1)}
local Result = ""
for I , l in pairs(Byte) do
Result = Result..[[\]]..l
end
load("A = \""..Result.."\"")()
return A
end
local gsub , Save , Checker , Text1 , TB = _G["gsub"]
io.input(g.out)
local Text = io.read("*a")
local CD = function (TXT,Len,Header) -- Convert And Dump
local Dmp = string.dump(load(TXT),true)
if Len > 2 then 
TB = {string.match(Header,(string.gsub(Header,".", "(.)")))}
Text1 = TB[1]..TB[2]
end
if Len == 1 then
Save = string.gsub(Dmp,"\82",TTB(Header),1)
elseif Len == 2 then
Save = string.gsub(Dmp,"\82\0",TTB(Header),1)
elseif Len == 3 then
Save = string.gsub(Dmp,"\82\0",TTB(Text1),1):gsub("\4",TTB(TB[3]),1)
elseif Len == 4 then
Save = string.gsub(Dmp,"\82\0",TTB(Text1),1):gsub("\4\4",TTB(TB[3]..TB[4]),1)
elseif Len == 5 then
Save = string.gsub(Dmp,"\82\0",TTB(Text1),1):gsub("\4\4\4",TTB(TB[3]..TB[4]..TB[5]),1)
elseif Len == 6 then
Save = string.gsub(Dmp,"\82\0",TTB(Text1),1):gsub("\4\4\4\8",TTB(TB[3]..TB[4]..TB[5]..TB[6]),1)
end
return Save
end
local Script = CD(Text,(#CstHdr),CstHdr)
file = io.open(g.out, "w")
file:write(Script)
file:close()
end
print("⏳ Clearing Temporary....")
print("💯 Done Encrypted!")
gg.alert("📁 Encrypted File: "..g.out.."\n\n🛡IOHacker Version I BETA II Encryption🛡")
os.exit()
end
end