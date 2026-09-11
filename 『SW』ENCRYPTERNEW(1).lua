
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local g = {}
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
g.DATA = loadfile(g.config)
if g.DATA ~= nil then g.info = g.DATA() g.DATA = nil end
if g.info == nil then g.info = {g.last, g.last:gsub("/[^/]+$", "")} end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
while true do
g.info = gg.prompt({
"📁 Choose Script to Encrypt : ",--1
"📁 Select Output Folder: ",--2
"🛡️ Added Anti Log 8GB +",--3
"🛡️ Added Expired Date","🛡️ Added Password","🛡️ Added GG Version","🛡️ Added Protect Change Name",
},g.info,{
"file",--1
"path",--2
"checkbox",--3
"checkbox",
"checkbox",
"checkbox",
"checkbox",
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
g.out = g.last:match("[^/]+$") g.out = "『SW』".. g.out:gsub(".lua", ".lua")
g.out = g.info[2] .. "/" .. g.out .. ".lua"
print("".. g.out .."")
info = {g.out}
end
local DATA = io.input(g.last):read('*a')
if g.info[4] == true then day = os.date("%d") exp_date = gg.prompt({
"📆 Set Expired Date : ","📝 Type Expired Message : "},
{os.date("%Y%m" .. day + 7),"⚠️ Script Expired ⚠️️"},{"number", "text"})
end if not exp_date then gg.setVisible(true) elseif exp_date[1] == nil then gg.alert("📆 Date Can Not Be Empty !") gg.setVisible(true)
else DATA = '\n if os.date("%Y%m%d") >= "'..exp_date[1]..'" then print("'..exp_date[2]..'") return gg.alert("' ..exp_date[2] ..'")end\n' .. DATA end
if g.info[5] == true then PASS = gg.prompt({"🔐 Set Password For Script :","📝 Type Message For Wrong Password : "}, {"","⚠️ Wrong Password, Try Again!!! ⚠️"},{"text","text"}) end
if not PASS then gg.setVisible(true) elseif PASS[1] == nil then
gg.alert("⚠️ Input Password !") gg.setVisible(true) else
DATA = '\nlocal CXY = "'.. PASS[1]..'"\nPASSW = gg.prompt({"🔒 Input password: "},{[1]=""},{[1]="text"})\n if not PASSW the﻿n print("'..PASS[2]..'")  return end\n if PASSW[1] == "" then gg.alert("❌Password Can Not Be Empty ❌") os.exit(print("❌Password Can Not Be Empty ❌"))end\n if PASSW[1] ~= CXY then print("'..PASS[2]..'")return end\nif PASSW[1] == CXY then gg.toast("🎉Wellcome🎉")end\n' .. DATA end
if g.info[6] == true then VERSION = gg.prompt({"🔐 Set Minimal GG Version : ","🗒️ Set Error GG Message :"}, {gg.VERSION,"⚠️ Error GG VERSION ⚠️"}, {"number","text"}) end
if not VERSION then gg.setVisible(true) elseif VERSION[1] == nil then
gg.alert("🛡️ Input Minimal Required GG Version !")
gg.setVisible(true) else DATA = '\nlocal LynX = gg;local Xslow = LynX.VERSION;if Xslow ~= "'..VERSION[1] .. '" then print("'..VERSION[2]..'") return gg.alert("' ..VERSION[2].. '")end\n' .. DATA end
if g.info[7] == true then NAME = gg.prompt({"🗒️ Set Name For Script :","📝 Type Message For Name Changed :",}, {g.last:match("[^/]+$"),"⚠️ RENAME DETECTED ⚠️"}, {"text","text"}) end
if not NAME then gg.setVisible(true) elseif NAME[1] == nil then gg.alert("📝 Set Name Can Not Be Empty !") gg.setVisible(true) else
DATA = '\nlocal KntolProtect = gg.getFile():match("[^/]+$")local tptd =  "'..NAME[1]..'"\nif KntolProtect ~= tptd then gg.copyText("'..NAME[1]..'")gg.setVisible(true) print("'..NAME[2]..'") return gg.alert("'..NAME[2].. '")end\n' ..DATA end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local PQj = table.concat
cCc = function(c, s)
NZ = {}
for i in ipairs(c) do
CZ = "["..i.."]="..c[i]
table.insert(NZ, CZ)
end
return PQj(NZ, ",")
end
k = math.random(1000,2000)
kk = math.random(3000,4000)
F = math.random(5000,6000)
A = math.random(7000,8000)
B = math.random(9000,10000)
C = math.random(10000,20000)
D = math.random(30000,40000)
H = math.random(50000,60000)
Q = math.random(70000,80000)
W = math.random(90000,100000)
local NJING1 = math.random(1000,800000)
local NJING2 = math.random(1000,800000)
local NJING3 = math.random(1000,800000)
local NJING4 = math.random(1000,800000)
local NJING5 = math.random(1000,800000)
local NJING6 = math.random(1000,800000)
local NJING7 = math.random(1000,800000)
local NJING8 = math.random(1000,800000)
local NJING9 = math.random(1000,800000)
local NJING10 = math.random(1000,800000)
local NJING11 = math.random(1000,800000)
local NJING12 = math.random(1000,800000)
local NJING13 = math.random(1000,800000)
local NJING14 = math.random(1000,800000)
local NJING15 = math.random(1000,800000)
local NJING16 = math.random(1000,800000)
local NJING17 = math.random(1000,800000)
local NJING18 = math.random(1000,800000)
local NJING19 = math.random(1000,800000)
local NJING20 = math.random(1000,800000)
local Key = {k+kk+F+A+B+C+D+H+Q+W,kk*k+F+A+B+C+D+H+Q+W}
local Kye = {W-Q-H-D-C-B-A-F-kk-k,k+kk+F+A+B+C+D+H+Q+W}
local Kye2 ={kk*k+W+Q+H+D+C+B+A+F,kk+k+F+A+B+C+D+H+Q+W}
local Key2 ={kk*k+H+Q+W+D+A+B+C+F,Q+k+kk+F+A+B+C+D+H+W}
function EncSHA(str)
if not inv256 then inv256 = {} for M = 0, 127 do local inv = -1 repeat inv = inv + 2 until inv * (2*M + 1) % 256 == 1 inv256[M] = inv end;end
local K, F = NJING3, 16384 + NJING11 
return (str:gsub('.', function(m)
local L = K % NJING2;local H = (K - L) / NJING2;local M = H % 128;local m = m:byte()local c = (m * inv256[M] - (H - M) / 128) % 256 K = L * F + H + c + m return ('%02x'):format(c)end))end
function TG_SWATOFFICI(str)
str = EncSHA(str)
gb = {str:byte(1,-1)}
for i = 1, #gb do
gb[i] = (gb[i] - Kye[1] - (Key[2] + i) * (Key[1] + i)) % 256
end
return "{"..cCc(gb, ",").."}"
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Snum() lmn={1,2,3,4,2,3,4,1,3,4,2,1,4,3,2,1,1,3,4,2,1,3,2,4,2,4,3,1,2,3,1,4,2,1,3,4,2,1,4,3,1,2,3,4,2,3,4,1,3,4,2,1,4,3,2,1,1,3,4,2,1,3,2,4,2,4,3,1,2,3,1,4,2,1,3,4,2,1,4,3,1,2,3,4,2,3,4,1,3,4,2,1,4,3,2,1,1,3,4,2,1,3,2,4,2,4,3,1,2,3,1,4,2,1,3,4,2,1,4,3,1,2,3,4,2,3,4,1,3,4,2,1,4,3,2,1,1,23,4,2,1,33,2,4,2,4,3,81,92,3,1,4,2,1,3,4,2,1,4,3}
vvv, kkk=math.random(1, 40), math.random(0, 41)
if kkk>=1 and kkk<=40 and kkk~=vvv then else 
kkk=math.random(1, vvv) end return lmn[kkk] end
function randomStr(lens, ...) local cs, str, as ={{48, 57}, {65, 90}, {97, 122}}, ""
if type(...) == "table" then as = ... else as = {...} end
for i = 1, lens do local index = math.random(as[1], as[#as])
str = str .. string.char(math.random(cs[index][1], cs[index][2]))
end return str end function  adjuStr(lens) local rancount, str ={1, 2, 3, 1, 3, 2, 2, 3, 1, 2, 1, 3, 3, 1, 2, 3, 2, 1}, ""
for i = 1,lens do kkk, vvv = math.random(1, 18), math.random(0, 19)
if vvv >= 1 and vvv <= 18 and vvv ~= kkk then
else vvv = math.random(1, kkk) end str = str .. randomStr(1, rancount[vvv])
end return str end function Tab(code) local key={{26408,230,156,168},{37221,233,133,165},{29275,231,137,155},{36924,233,128,188}} local two=""
code={utf8.codepoint(code,1,-1)} if code and two then
for i = 1, #code do sumo=Snum() sumt=Snum()
twol=code[i]+(key[sumo][sumt]-key[sumt][sumo])
twol="{"..twol..",".."{"..key[sumt][sumo]..','..key[sumo][sumt]..',["M"]={function() local MM = {} local M = {} M["mmm"] = MM["�-✭-✭-�"] M["mMm"] = M["mmm"]:gsub("m","s") M["m"]["✭"] = M["✭"] end}}}'
two=two..","..twol end two=two:gsub(",","",1) return "{"..two.."}" end end
function remak(filname) local sprits_1, sprits_2="", ""
local files1=io.open(filname) repeat text=files1:read('*l')
if text then if text~="" and load(text) and not text:find("return") then
local tempt=randomStr(1, 2)..randomStr(math.random(18, 19), 3)
sprits_1=sprits_1.."\n"..tempt.."()\n" if math.random(1, 2)==1 then
sprits_2=sprits_2.."function "..tempt.."()\n"..text.."\nend\n"
else sprits_2="function "..tempt.."()\n"..text.."\nend\n"..sprits_2
end else sprits_1=sprits_1..text.."\n" end end until text==nil
return sprits_2..sprits_1 end function zwhxa()
lmn={"A", "B", "C", "D", "E", "F", "G", "H", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "c", "b", "e", "d", "g", "h", "f", "k", "m", "i", "l", "o", "q", "p", "n", "t", "u", "r", "z", "s", "y", "x", "v"}
vvv, kkk=math.random(1, 49), math.random(0, 50)
if kkk>=1 and kkk<=49 and kkk~=vvv then else 
kkk=math.random(1, vvv) end return lmn[kkk] end
function zzdy(dqy) arg={} for i, v in pairs(gg) do
dqy=dqy:gsub("gg."..i, "arg".."["..'"'..i..'"'.."]") end arh={}
for i, v in pairs(io) do dqy=dqy:gsub("io."..i, "arh".."["..'"'..i..'"'.."]")
end ari={} for i, v in pairs(os) do dqy=dqy:gsub("os."..i, "ari".."["..'"'..i..'"'.."]")
end arj={} for i, v in pairs(string) do dqy=dqy:gsub("string."..i, "arj".."["..'"'..i..'"'.."]")
end return dqy end function YCZM(code, duan)
function Ycz(code, syh, duan) p = syh .. "(.-)" .. syh
asdzw=1 sssff="" eee="" uuu=zwhxa()..adjuStr(4) kyk=uuu
for i in code:gmatch(p) do vrvv=Tab(i) iiii= "H_m("..tostring(vrvv)..")" ppq=uuu.."["..asdzw.."]"
sssff=sssff.."\n"..ppq.."="..iiii code = code:gsub(p, ppq,  1) if asdzw==duan then 
asdzw=0 uuu=zwhxa()..adjuStr(4) eee=eee.."\n"..uuu.."={}"
else end eee=eee.."" asdzw=asdzw+1 end return kyk.."={}"..eee..sssff, code end
o0oo, o0o0=Ycz(code, '"', duan) return o0oo, o0o0
end function HX_m(jhg, sta, fin) HXB="" for kkkk=sta, fin do 
if kkkk%2~=0 then super="\n" else super="" end 
HXB=HXB..[[ if nil then else goto hx]]..jhg..[[_]]..kkkk..[[ end load() ::hx]]..jhg..[[_]]..kkkk..[[:: ]]..zwhxa()..adjuStr(5).."=".."'"..zwhxa().."'"..super end
return HXB end function szs() return os.clock() end
function Ff_f(ksz, jsz) lin="" for i=jsz, ksz, -1 do
uuuk=zwhxa()..adjuStr(7) if i<ksz+1 then a=[[local ]]..uuuk..[=[=function() xs="gg.searchNumber(']=]..szs()..";"..szs()*i..";"..szs()*jsz..";"..szs()*ksz..[=[', 16)" if not xs then xs=sx end ]=]
else a=[[local ]]..uuuk..[=[=function() ]=]..zwhxa()..adjuStr(25).."='"..zwhxa().."'"..[[ if not xs then xs=sx end ]]
end b=[=[end ]=]..uuuk..[[() ]] lin=a..lin..b end return lin end
function Ffd(ksz,jsz) for ir=1,5 do ss="" for k=1,ir do
if ir==1 then k=1 end ss=ss..("if (function ()if nil then else goto Ms end local i ::Ms:: end)then else goto hxffd end  "):rep(k)
end end ss="if nil then  "..ss.."::hxffd:: end " lin=""..ss
for i=jsz, ksz, -1 do uuu=zwhxa()..adjuStr(19)
a=[=[function ]=]..uuu..[=[() ]=]..zwhxa()..adjuStr(6).."='"..zwhxa().."'"..[[ if not xs then xs=sx end ]]
b=[=[end ]=]..uuu..[[() ]] lin=a..lin..b end return lin end
function zhyzx(S) S=((((string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(S, "\n", " "), "  ", " "), " ", " "), "", " "), "   ", " "), "  ", " "), " ", " "), "", " "), "   ", " "), "  ", " ")):gsub("function", "\nfunction")):gsub("gg.searchNumber", "\ngg.searchNumber")):gsub("gg.editAll", "\ngg.editAll")):gsub("gg.setRanges", "\ngg.setRanges")
return S end lines = { } for line in io.lines(g.last) do
if line:find("end") then line = "end -- 𝐒𝐖𝐀𝐓 𝐂𝐇𝐀𝐍𝐍𝐄𝐋 𝐎𝐅𝐅𝐈𝐂𝐈𝐀𝐋"
end lines[#lines + 1] = line end function dzsh(Text)
Text = tostring(Text) if Text ~= nil then Text = Text:gsub(" ", "")
Text = Text:gsub("..", function(jie) return string.char((tonumber(jie, 16)) % 9999) end) else
Text = '' end return Text end function escapeOpcode(str,repl)
if repl==true then magic_character = {37} else magic_character = {40,41,46,37,43,45,42,63,91,93,94,36}
end invi = {} txt = "" string.gsub(str,".",function(w) w= string.byte(w) invi[#invi+1]=w end)
for i, v in ipairs(invi) do  if string.len(v)== 1 then invi[i] = "【0"..v.."】" 
else invi[i] = "【"..v.."】"end end for i = 1,#invi do
for m, k in ipairs(magic_character)do if(invi[i])~="【"..k.."】" then
else invi[i] = "【37】"..invi[i].."" end end txt = txt .. invi[i]
end txt = string.gsub(txt,"【(.-)】",function(w) return string.char(w) end)
return txt end function numToHex(txt,skip) local ss = {}
txt = string.format("%x", txt) len = string.len(txt)
if string.len(txt) % 2 == 0 then txt:gsub("..?",function(n) ss[#ss + 1] = n end)
else ss[1] = string.sub(txt, 1, 1) txt = string.sub(txt, 2)
txt:gsub( "..?",function(n)ss[#ss + 1] = n end) end
for i = 1, #ss do if string.len(ss[i]) == 1 then ss[i] = "0" .. ss[i]
end end str = "" for i = #ss, 1, -1 do str = str .. ss[i] end
if string.len(str) == 1 then str = str .. "0000000"
elseif string.len(str) == 2 then str = str .. "000000"
elseif string.len(str) == 3 then str = str .. "00000"
elseif string.len(str) == 4 then str = str .. "0000"
elseif string.len(str) == 5 then str = str .. "000"
elseif string.len(str) == 6 then str = str .. "00"
elseif string.len(str) == 7 then str = str .. "0"
end return str end function hexToNum(str) local tab = {}; local num = ""; str = string.gsub(str,"..",function (cc) tab[#tab+1]= cc end)
for i = #tab, 1 , -1 do num = num .. tab[i] end num = tonumber(num,16) return num end
function randtext(sz) sz= sz or math.random(8,58)
local se=" goto s " local strs="" for s=1,sz do strs=strs..se
end strs=" if nil then"..strs.."::s:: end " return strs end
function formatPattern(pattern, direction, number)
if(direction==0)then for i=1, number do pattern = "."..pattern end
elseif(direction==1)then for i=1, number do pattern = pattern.."."
end end return pattern end function formatTwo(str)
if string.len(str)~=2 then str = "0"..str end return str end
function zwhxa() lmn={"A", "B", "C", "D", "E", "F", "G", "H", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "c", "b", "e", "d", "g", "h", "f", "k", "m", "i", "l", "o", "q", "p", "n", "t", "u", "r", "z", "s", "y", "x", "v"}
vvv, kkk=math.random(1, 49), math.random(0, 50)
if kkk>=1 and kkk<=49 and kkk~=vvv then 
else  kkk=math.random(1, vvv) end return lmn[kkk]
end function zzdy(dqy) arg={} for i, v in pairs(gg) do
dqy=dqy:gsub("gg."..i, "arg".."["..'"'..i..'"'.."]") end arh={}
for i, v in pairs(io) do dqy=dqy:gsub("io."..i, "arh".."["..'"'..i..'"'.."]")
end ari={} for i, v in pairs(os) do dqy=dqy:gsub("os."..i, "ari".."["..'"'..i..'"'.."]") end
arj={} for i, v in pairs(string) do dqy=dqy:gsub("string."..i, "arj".."["..'"'..i..'"'.."]")
end return dqy end function HexXx(str) return str:gsub('.', function (c)
return string.format('%02x ', (string.byte(c)-Keya[1]-Keya[3]+Keya[2]-(Keya[4] * Keya[5]) + Keya[1])%256) end):gsub(" $", "", 1) end
local encodes = function(c) c = c:gsub("\\n","\n")
c = c:gsub("([^%w ])", function(d) return string.format("%%%02X", string.byte(d)) end) c = c:gsub(" ", "+") return c end
local function calc_indent(s) local col = 0  for i = 1, #s do local c = sub(s, i, i)
col = col + 1 if c == "\t" then while col % 8 > 0 do col = col + 1 end end
end return math.floor(col / 8) end local function _(l)local e=0
for o=1,#l do local n=n(l,o,o)e=e+1 if n=="\t"then
while e%8>0 do e=e+1 end end end return r.floor(e/8)end
local function ToByte( Code ) return Code:gsub( ".", function( Char ) return "\\" .. string.byte( Char ) end); end
local function Random( V ) local a = ""; for i = V, math.random( V * 1, V * 3 ) do a = a .. " ".. ( "_" ):rep( i ) .."=_[\"".. ToByte( table.Random( { "RunStringEx", "DOF_Kill", "ColorToHSV", "DOFModeLHack", "AddOriginTpPVS", "AccessorFuncNW", "ErrorNoHalt", "GetTaskID", "LerpVector", "NewMesh", "PlayerDataUpdate", "STNDRD" } ) ) .. "\"]" end return a end
local function Obfuscate( Code ) return "_=_G".. math.random(5,10) .."__=_[\"" .. ToByte( "string" ) .. "\"][\"" .. ToByte( "reverse" ) .. "\"]".. math.random(5,10) .."_[\"".. ToByte( "RunString" ) .. "\"](__\"" .. ToByte( Code:reverse() ) .. "\")"..math.random(5,10); end
local Code =[[Obfuscator by 💙 SansCpe 💙]]
local chars = "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz"
local EncodeFunction58 = function(s) local q, r, b
local et = {} local r = 0 local zn = 0 local nt = {}
local dt = {} local bt = {} local more = true for i = 1, #s do 
b = string.byte(s, i) if more and b == 0 then
zn = zn + 1 else more = false end nt[i] = b end
if #s == zn then return string.rep('1', zn) end
more = true while more do local r = 0 more = false for i = 1, #nt do
b = nt[i] + (256 * r) q = b // 58 more = more or q > 0
r = b % 58 dt[i] = q end table.insert(et, 1, string.char(string.byte(chars, r+1)))
nt = {} for i = 1, #dt do nt[i] = dt[i] end dt = {} end
return string.rep('1', zn) .. table.concat(et) end
lasm = 'B = "BIG_LASM_BY_SWAT_OFFICIAL"\n'
lasm = lasm:rep(50000)
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SWAT =[[while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end local B
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
local NJING1 = ]]..NJING1..[[
local NJING2 = ]]..NJING2..[[
local NJING4 = ]]..NJING4..[[
local NJING5 = ]]..NJING5..[[
local NJING13 = ]]..NJING13..[[
local NJING19 = ]]..NJING19..[[
local NJING6 = ]]..NJING6..[[
local NJING7 = ]]..NJING7..[[
local NJING8 = ]]..NJING8..[[
local NJING14 = ]]..NJING14..[[
local NJING9 = ]]..NJING9..[[
local NJING10 = ]]..NJING10..[[
local NJING15 = ]]..NJING15..[[
local NJING12 = ]]..NJING12..[[
local NJING11 = ]]..NJING11..[[
local NJING16 = ]]..NJING16..[[
local NJING17 = ]]..NJING17..[[
local NJING3 = ]]..NJING3..[[
local NJING18 = ]]..NJING18..[[
local NJING20 = ]]..NJING20..[[
local Key = {k+kk+F+A+B+C+D+H+Q+W,kk*k+F+A+B+C+D+H+Q+W}
local Kye = {W-Q-H-D-C-B-A-F-kk-k,k+kk+F+A+B+C+D+H+Q+W}
local Kye2 ={kk*k+W+Q+H+D+C+B+A+F,kk+k+F+A+B+C+D+H+Q+W}
local Key2 ={kk*k+H+Q+W+D+A+B+C+F,Q+k+kk+F+A+B+C+D+H+W}
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local SWATOFFICIBOSS_SWAT=function(c)
text = ''
for i in ipairs(c) do
text = text .. string.char((c[i] + Kye[1] + (Key[2] + i) * (Key[1] + i)) % 256)
end;return text;end
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local NJING53 = ]]..NJING3..[[;local NJING14 = ]]..NJING11..[[;local inv256
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
local SWATOFFICI = function(str)local K, F = NJING53, 16384 + NJING14 return (str:gsub('%x%x', function(c) local L = K % NJING2 local H = (K - L) / NJING2 local M = H % 128 c = tonumber(c, 16) local m = (c + (H - M) / 128) * (2*M + 1) % 256 K = L * F + H + c + m return string.char(m)end))end
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
while (nil)do;
local BOSSCUY={SWAT,BOSSNIH.BOSSNIH,fBOSSNIH.BOSSNIHBOSS.SWAT,BOSSNIH.BOSSNIH,BOSSNIH.BOSSNIHSWAT,BOSSNIH.BOSSNIH,BOSSNIH.BOSSNIHBOSS.SWAT,BOSSNIH.BOSSNIH,BOSSNIH.BOSSNIH} 
local BOSSNIH={BOSS.SWAT,BOSSNIH.BOSSNIH,BOSSNIH.BOSSNIHBOSSCUYySWAT,BOSSNIH.BOSSNIH,BOSSNIH.BOSSNIHBOSS.SWAT,BOSSNIH.BOSSNIH,BOSSNIH.BOSSNIHBOSSNIHSWAT,BOSSNIH.sBOSSNIH,BOSSNIH.BOSSNIH} 
local BOSSNIH={BOSS.SWAT,BOSSNIH.BOSSNIH,BOSSNIH.BOSSNIHSWAT,BOSSNIH.BOSSNIH,BOSSNIH.BOSSNIHBOSS.SWAT,BOSSNIH.BOSSNIH,BOSSNIH.BOSSNIHBOSS.SWAT,BOSSNIH.BOSSNIH,BOSSNIH.BOSSNIHi}
local BOSSCUY={SWAT,BOSSNIH.BOSSNIH,BOSSNIH.BOSSNIHBOSS.SWAT,BOSSNIH.BOSSNIHANGE,BOSSNIH.BOSSNIHSWAT,BOSSNIH.BOSSNIH,BOSSNIH.BOSSNIHBOSS.SWAT,BOSSNIH.BOSSNIH,BOSSNIH.BOSSNIH} 
local BOSSNIH={BOSS.SWAT,BOSSNIH.BOSSNIH,BOSSNIHw.BOSSNIHBOSSCUYSWAT,BOSSNIH.BOSSNIH,BOSSNIH.BOSSNIHBOSS.SWAT,BOSSNIH.BOSSNIH,BOSSNIH.BOSSNIHBOSSNIHSWAT,BOSSNIH.sBOSSNIH,BOSSNIH.BOSSNIH} 
local BOSSNIH={BOSS.SWAT,BOSSNIH.BOSSNIH,BOSSNIH.BOSSNIHSWAT,BOSSNIH.BOSSNIH,BOSSNIH.BOSSNIHbBOSS.SWAT,BOSSNIH.BOSSNIH,BOSSNIH.BOSSNIHBOSS.SWAT,BOSSNIH.BOSSNIH,BOSSNIH.BOSSNIHi}
if (BOSS.SWAT)then 
if (BOSS.SWATBOSSNIHSWAT)then 
if (BOSS.SWAT.BOSS.SWAT) then 
if (BOSS.SWAT.BOSS.SWATBOSSNIHSWAT) then 
if (BOSSNIH.BOSSNIH) then 
if (BOSSNIH.BOSSNIH.BOSSNIH) then 
if (BOSSNIH.BOSSNIH.BOSSNIH.BOSSNIH) then 
if (BOSSNIH.BOSSNIH) then 
if (BOSSNIH.BOSSNIH.BOSSNIH) then 
if (BOSSNIH.BOSSNIH.BOSSNIH.BOSSNIH) then;BOSS.SWAT=(BOSS.SWAT(BOSSCUY)) BOSS.SWAT=(BOSS.SWAT(BOSS.SWATBOSSNIHSWAT(BOSS.SWAT(BOSSCUY)))) BOSSNIH.BOSSNIH=(BOSSNIH.BOSSNIH(BOSSNIH)) BOSSNIH.BOSSNIH=(BOSSNIH.BOSSNIH(BOSSNIH.BOSSNIH.BOSSNIH(BOSSNIH.BOSSNIH.BOSSNIH.BOSSNIH(BOSSNIH.BOSSNIH.BOSSNIH(BOSSNIH.BOSSNIH(BOSSNIH.BOSSNIH)))))) BOSSNIH.BOSSNIH = (BOSSNIH.BOSSNIH(BOSSNIH.BOSSNIH.BOSSNIH(BOSSNIH.BOSSNIH.BOSSNIH.BOSSNIH(BOSSNIH.BOSSNIH.BOSSNIH(BOSSNIH.BOSSNIH(BOSSNIH.BOSSNIH))))))BOSS.SWAT=(BOSS.SWAT(BOSSCUY)) BOSS.SWAT=(BOSS.SWAT(BOSS.SWATBOSSNIHSWAT(BOSS.SWAT(BOSSCUY)))) BOSSNIH.BOSSNIH=(BOSSNIH.BOSSNIH(BOSSNIH)) BOSSNIH.BOSSNIH=(BOSSNIH.BOSSNIH(BOSSNIH.BOSSNIH.BOSSNIH(BOSSNIH.BOSSNIH.BOSSNIH.BOSSNIH(BOSSNIH.BOSSNIH.BOSSNIH(BOSSNIH.BOSSNIH(BOSSNIH.BOSSNIH)))))) BOSSNIH.BOSSNIH = (BOSSNIH.BOSSNIH(BOSSNIH.BOSSNIH.BOSSNIH(BOSSNIH.BOSSNIH.BOSSNIH.BOSSNIH(BOSSNIH.BOSSNIH.BOSSNIH(BOSSNIH.BOSSNIH(BOSSNIH.BOSSNIH)))))) 
local BOSSNIHANGE={BOSS.SWAT,BOSSNIH.BOSSNIH,BOSSNIH.BOSSNIHBOSS.SWAT,BOSSNIH.BOSSNIH,BOSSNIH.BOSSNIH} BOSSNIHANGE.BOSSNIHANGE=BOSSNIHANGE[1]..BOSSNIHANGE[2]..BOSSNIHANGE[3] BOSSNIHANGE.i= BOSSNIHANGE.BOSSNIHANGE(BOSSNIHANGE.BOSSNIHANGE(BOSSNIHANGE.BOSSNIHANGE(BOSSNIHANGE.BOSSNIHANGE(BOSSNIHANGE.BOSSNIHANGE(BOSSNIHANGE.BOSSNIHANGE(BOSSNIHANGE.BOSSNIHANGE)))))) end;end;end;end;end;end;end;end;end;end;end
]]
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
BLOCKER =[[for i = 1, 0 do local sssss = {} sssss.sel = sssss.data() if sssss.data ~= nil then sssss.sel = sssss.data() end sssss = nil end
for i = 1, 0 do local sssss = {} sssss.sel = sssss.data() if sssss.data ~= nil then sssss.sel = sssss.data() end sssss = nil end
----Like those Codes Hehe
for i = 1, 0 do local sssss = {} sssss.sel = sssss.data() if sssss.data ~= nil then sssss.sel = sssss.data() end sssss = nil end
for i = 1, 0 do local sssss = {} sssss.sel = sssss.data() if sssss.data ~= nil then sssss.sel = sssss.data() end sssss = nil end

for i in ipairs({}) do local xs = {} if not xs then else xs = I local e = {} e.d = e.d() if e.d ~= e.d then e.d = e.d() end end end local A = ""function Iri() for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end; local NN = {} local N = {} N.N = {} N.N.NN = N.data() N.N.NNN = N.N.NN.data() N.NNN = NN.G() N.NNN = N.NNN:G() N.N[T] = N[G] end function l() while(nil)do;local i={}if(i.i)then;i.i=(i.i(i))end;end HE = math.random(500,999)for i=1,HE do while(nil)do;local i={}if(i.i)then;i.i=(i.i(i))end;end x= math.random(1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000) for i=1,899 do while(nil)do;local i={}if(i.i)then;i.i=(i.i(i))end;end y= math.random(1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)  x=x..y end while(nil)do;local i={}if(i.i)then;i.i=(i.i(i))end;end z='"'..x..'"' anti=z..e..z d=math.random(10000,100000) p="function "..g.."()".."\n"..anti.."\n".."end" a=string.dump(p) load(a) end end
log = {} for i = 1, 1 do while(nil)do;local i={}if(i.i)then;i.i=(i.i(i))end;end table.insert(log, {address = 127 + i, flags = 12, values = 127}) end clock = os.clock() time = os.time() for i = 1, 6 do gg.addListItems(log) end if os.clock() - clock > 2 then gg.removeListItems(log) return os.exit() end gg.removeListItems(log)
local x = string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90))
io.output(gg.EXT_CACHE_DIR .."/".. x .. "")
loadfile(gg.EXT_CACHE_DIR .."/".. x .. "")()
os.remove(gg.EXT_CACHE_DIR .."/".. x .. "")
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i))end;end
--Alu
--Anti Load
for i = 50, 100 do loadfile("/system/priv-app/Settings/Settings.apk") end
--Protect Loader
local function loader(str) local i = "";repeat i = i.. string.char(math.random(97,122)) until #i > 10;package.path = "?";local ii = (gg.EXT_STORAGE).."/"..i;io.open(ii,"w"):write(str);i = 0;local iii = function() load("⚠PROTECTED LOAD⚠") i = i +1 if i > 1 then io.open(ii,"w"):write(str) os.remove(ii) debug.sethook(iii,"") end end;debug.sethook(iii,"cr");local iiii = pcall(require,ii) return end
--Block Decrypts
for x =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local x = {} x[''] = x local t = (x)(x, x) t[1] = 1 end
for i =1,5 do loadfile("/systeam/priv-app/settings/settings.apk") end
for i =1,5 do loadfile("/systeam/priv-app/settings/settings.apk") end
for i =1,5 do loadfile("/systeam/priv-app/settings/settings.apk") end
for i =1,5 do loadfile("/systeam/priv-app/settings/settings.apk") end
for i =1,5 do loadfile("/systeam/priv-app/settings/settings.apk") end
for i =1,5 do loadfile("/systeam/priv-app/settings/settings.apk") end
for i =1,5 do loadfile("/systeam/priv-app/settings/settings.apk") end
for i =1,5 do loadfile("/systeam/priv-app/settings/settings.apk") end
for i =1,5 do loadfile("/systeam/priv-app/settings/settings.apk") end
while(nil)do;Kntol = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #Kntol < 0 then;break;end;if Kntol[#Kntol] < 0 then;break;end;if Kntol[-nil] ~= #Kntol & ~Kntol then Kntol[#Kntol] = Kntol[-nil]();end;if #Kntol < nil then Kntol[#Kntol] = Kntol[-nil%nil]();end;end
while false do;local Kntol = {nil, -nil % nil}if Kntol[-nil] ~= #Kntol & ~Kntol then;Kntol[#nil] = Kntol[-nil]()end;if Kntol[-nil] < #Kntol & ~Kntol then;break;end;if pairs(Kntol) == (true or false or nil) then;break;end;end
while(nil)do;Kntol = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #Kntol < 0 then;break;end;if Kntol[#Kntol] < 0 then;break;end;if Kntol[-nil] ~= #Kntol & ~Kntol then Kntol[#Kntol] = Kntol[-nil]();end;if #Kntol < nil then Kntol[#Kntol] = Kntol[-nil%nil]();end;end
while false do;local Kntol = {nil, -nil % nil}if Kntol[-nil] ~= #Kntol & ~Kntol then;Kntol[#nil] = Kntol[-nil]()end;if Kntol[-nil] < #Kntol & ~Kntol then;break;end;if pairs(Kntol) == (true or false or nil) then;break;end;end
while(nil)do;Kntol = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #Kntol < 0 then;break;end;if Kntol[#Kntol] < 0 then;break;end;if Kntol[-nil] ~= #Kntol & ~Kntol then Kntol[#Kntol] = Kntol[-nil]();end;if #Kntol < nil then Kntol[#Kntol] = Kntol[-nil%nil]();end;end
while false do;local Kntol = {nil, -nil % nil}if Kntol[-nil] ~= #Kntol & ~Kntol then;Kntol[#nil] = Kntol[-nil]()end;if Kntol[-nil] < #Kntol & ~Kntol then;break;end;if pairs(Kntol) == (true or false or nil) then;break;end;end
while(nil)do;Kntol = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #Kntol < 0 then;break;end;if Kntol[#Kntol] < 0 then;break;end;if Kntol[-nil] ~= #Kntol & ~Kntol then Kntol[#Kntol] = Kntol[-nil]();end;if #Kntol < nil then Kntol[#Kntol] = Kntol[-nil%nil]();end;end
while false do;local Kntol = {nil, -nil % nil}if Kntol[-nil] ~= #Kntol & ~Kntol then;Kntol[#nil] = Kntol[-nil]()end;if Kntol[-nil] < #Kntol & ~Kntol then;break;end;if pairs(Kntol) == (true or false or nil) then;break;end;end
while(nil)do;Kntol = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #Kntol < 0 then;break;end;if Kntol[#Kntol] < 0 then;break;end;if Kntol[-nil] ~= #Kntol & ~Kntol then Kntol[#Kntol] = Kntol[-nil]();end;if #Kntol < nil then Kntol[#Kntol] = Kntol[-nil%nil]();end;end
while false do;local Kntol = {nil, -nil % nil}if Kntol[-nil] ~= #Kntol & ~Kntol then;Kntol[#nil] = Kntol[-nil]()end;if Kntol[-nil] < #Kntol & ~Kntol then;break;end;if pairs(Kntol) == (true or false or nil) then;break;end;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
--Ass
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i))end;end
while(nil)do;for i=i,i do;local i={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i do;local ii={}if(ii.i)then;ii.i=ii.i()end;for iii=i,ii.i,i do;local iii={}if(iii.i)then;iii.i=iii.i(i)end;for iiii=i,ii,iii.i do;local iiii={}if(iiii.i)then;iiii.i=iiii.i(i)end;local iiii={}if(iiii.i)then;iiii.i=(iiii|iii|ii|i)(i)end;end;local iii={}if(iii.i)then;iii.i=(true|iii|ii|i)(i)end;end;local ii={}if(ii.i)then;ii.i=(true|false|ii|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i)end;return(true|false|nil)end;return;end
--Batas
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
asu = string.char(math.random(65, 90))..math.random(1,10)..string.char(math.random(97, 122))..string.char(math.random(65, 90))..string.char(math.random(97, 122))
GTR = string.char(math.random(65, 90))..math.random(1,10)..string.char(math.random(97, 122))
kuhp0 = kuhp0.."\nwhile(nil)do;local sr"..GTR.." = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #sr"..GTR.." < 0 then;break;end;if sr"..GTR.."[#sr"..GTR.."] < 0 then;break;end;if sr"..GTR.."[-nil] ~= #sr"..GTR.." & ~sr"..GTR.." then sr"..GTR.."[#sr"..GTR.."] = sr"..GTR.."[-nil]();end;if #sr"..GTR.." < nil then sr"..GTR.."[#sr"..GTR.."] = sr"..GTR.."[-nil%nil]();end;goto X1;if(nil or 0)then;return;end::X0::bodo()::X1::function bodo()goto X2;if(nil or 0)then;return;end::X3::bodo()::X2::function amat()end;goto X3;end;goto X0;end\n"..tempstr(math.random(100,500))
end
---Ntah lh
for i = 1, 0 do local sssss = {} sssss.sel = sssss.data() if sssss.data ~= nil then sssss.sel = sssss.data() end sssss = nil end
for i = 1, 0 do local sssss = {} sssss.sel = sssss.data() if sssss.data ~= nil then sssss.sel = sssss.data() end sssss = nil end
----Like those Codes Hehe
for i = 1, 0 do local sssss = {} sssss.sel = sssss.data() if sssss.data ~= nil then sssss.sel = sssss.data() end sssss = nil end
for i = 1, 0 do local sssss = {} sssss.sel = sssss.data() if sssss.data ~= nil then sssss.sel = sssss.data() end sssss = nil end
--Anti Load VIP
for x =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local x = {} x[''] = x local t = (x)(x, x) t[1] = 1 end
--Asy
for i = 40, 96 do loadfile("/system/priv-app/Settings/Settings.apk") end
while (nil)do;local o={o.uo,p.p,fq.qo.o,p.p,q.qo.uo,p.p,q.qo.o,p.p,q.q} local p={o.o,p.p,q.qoyo.uo,p.p,q.qo.o,p.p,q.q.o,p.sp,q.q} local q={o.o,p.p,q.qo.uo,p.pp,q.qo.o,p.p,q.qo.o,p.p,q.qi}local o={o.uo,p.p,q.qo.o,p.rp,q.qo.uo,p.p,q.qo.o,p.p,q.q} local p={o.o,p.p,qw.qoo.uo,p.p,q.qo.o,p.p,q.q.o,p.sp,q.q} local q={o.o,p.p,q.qo.uo,p.p,q.qbo.o,p.p,q.qo.o,p.p,q.qi}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q))))))o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.qo.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local o={o.uo,p.p,fq.qo.o,p.p,q.qo.uo,p.p,q.qo.o,p.p,q.q} local p={o.o,p.p,q.qoyo.uo,p.p,q.qo.o,p.p,q.q.o,p.sp,q.q} local q={o.o,p.p,q.qo.uo,p.pp,q.qo.o,p.p,q.qo.o,p.p,q.qi}local o={o.uo,p.p,q.qo.o,p.rp,q.qo.uo,p.p,q.qo.o,p.p,q.q} local p={o.o,p.p,qw.qoo.uo,p.p,q.qo.o,p.p,q.q.o,p.sp,q.q} local q={o.o,p.p,q.qo.uo,p.p,q.qbo.o,p.p,q.qo.o,p.p,q.qi}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q))))))o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.qo.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local o={o.uo,p.p,fq.qo.o,p.p,q.qo.uo,p.p,q.qo.o,p.p,q.q} local p={o.o,p.p,q.qoyo.uo,p.p,q.qo.o,p.p,q.q.o,p.sp,q.q} local q={o.o,p.p,q.qo.uo,p.pp,q.qo.o,p.p,q.qo.o,p.p,q.qi}local o={o.uo,p.p,q.qo.o,p.rp,q.qo.uo,p.p,q.qo.o,p.p,q.q} local p={o.o,p.p,qw.qoo.uo,p.p,q.qo.o,p.p,q.q.o,p.sp,q.q} local q={o.o,p.p,q.qo.uo,p.p,q.qbo.o,p.p,q.qo.o,p.p,q.qi}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q))))))o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.qo.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local o={o.uo,p.p,fq.qo.o,p.p,q.qo.uo,p.p,q.qo.o,p.p,q.q} local p={o.o,p.p,q.qoyo.uo,p.p,q.qo.o,p.p,q.q.o,p.sp,q.q} local q={o.o,p.p,q.qo.uo,p.pp,q.qo.o,p.p,q.qo.o,p.p,q.qi}local o={o.uo,p.p,q.qo.o,p.rp,q.qo.uo,p.p,q.qo.o,p.p,q.q} local p={o.o,p.p,qw.qoo.uo,p.p,q.qo.o,p.p,q.q.o,p.sp,q.q} local q={o.o,p.p,q.qo.uo,p.p,q.qbo.o,p.p,q.qo.o,p.p,q.qi}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q))))))o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.qo.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
for x = 0, 1, 0 do local _m = {} if _m.data ~= nil then _m.panas = _m.data() _m.data = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end _m = nil end
for i = 1,0 do M = 'JAMPASER707'if ({}).N~=nil then ({}).N=({}).N() end i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i}  i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i}  i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i}  i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i}  i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i}  i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i}  i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i}  i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i}  for i=({}).i ,({}).i ,({}).i do goto s goto s goto s goto s ::s::end for i= {}, ({}).i , {} do goto s goto s goto s goto s::s::end for i= {}, {} , iiii do goto s goto s goto s goto s::s::end for i=({}).i ,({}).i ,({}).i do goto s goto s goto s goto s ::s::end for i= {}, ({}).i , {} do goto s goto s goto s goto s::s::end for i= {}, {} , iiii do goto s goto s goto s goto s::s::end for i=({}).i ,({}).i ,({}).i do goto s goto s goto s goto s ::s::end for i= {}, ({}).i , {} do goto s goto s goto s goto s::s::end for i= {}, {} , iiii do goto s goto s goto s goto s::s::end end
for i = 1,0 do M = 'JAMPASER707'if ({}).N~=nil then ({}).N=({}).N() end i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i}  i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i}  i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i}  i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i}  i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i}  i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i}  i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i}  i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i} i = {i , i} i = _ENV[35] i = _ENV[i] i = {i , i}  for i=({}).i ,({}).i ,({}).i do goto s goto s goto s goto s ::s::end for i= {}, ({}).i , {} do goto s goto s goto s goto s::s::end for i= {}, {} , iiii do goto s goto s goto s goto s::s::end for i=({}).i ,({}).i ,({}).i do goto s goto s goto s goto s ::s::end for i= {}, ({}).i , {} do goto s goto s goto s goto s::s::end for i= {}, {} , iiii do goto s goto s goto s goto s::s::end for i=({}).i ,({}).i ,({}).i do goto s goto s goto s goto s ::s::end for i= {}, ({}).i , {} do goto s goto s goto s goto s::s::end for i= {}, {} , iiii do goto s goto s goto s goto s::s::end end
for i = 1, 0 do i = false i = {i, i} i =  _ENV[35] i =  _ENV[i] i = {i, i} i = false i = {i, i} i =  _ENV[35] i =  _ENV[i] i = {i, i} i = false i = {i, i} i =  _ENV[35] i =  _ENV[i] i = {i, i} i = false i = {i, i} i =  _ENV[35] i =  _ENV[i] i = {i, i} i = false i = {i, i} i =  _ENV[35] i =  _ENV[i] i = {i, i} i = false i = {i, i} i =  _ENV[35] i =  _ENV[i] i = {i, i} i = false i = {i, i} i =  _ENV[35] i =  _ENV[i] i = {i, i} i = false i = {i, i} i =  _ENV[35] i =  _ENV[i] i = {i, i} i = false i = {i, i} i =  _ENV[35] i =  _ENV[i] i = {i, i} i = false i = {i, i} i =  _ENV[35] i =  _ENV[i] i = {i, i} end
for i = 1, 0 do i = false i = {i, i} i =  _ENV[35] i =  _ENV[i] i = {i, i} i = false i = {i, i} i =  _ENV[35] i =  _ENV[i] i = {i, i} i = false i = {i, i} i =  _ENV[35] i =  _ENV[i] i = {i, i} i = false i = {i, i} i =  _ENV[35] i =  _ENV[i] i = {i, i} i = false i = {i, i} i =  _ENV[35] i =  _ENV[i] i = {i, i} i = false i = {i, i} i =  _ENV[35] i =  _ENV[i] i = {i, i} i = false i = {i, i} i =  _ENV[35] i =  _ENV[i] i = {i, i} i = false i = {i, i} i =  _ENV[35] i =  _ENV[i] i = {i, i} i = false i = {i, i} i =  _ENV[35] i =  _ENV[i] i = {i, i} i = false i = {i, i} i =  _ENV[35] i =  _ENV[i] i = {i, i} end
for i = 1,5 do
if(nil)then if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end end
loadfile = loadfile
load = load
loadfile(gg.getFile()) load(string.dump(load("os.exit()"),false,false)) io.open(gg.getFile() .. "c" .. tostring(string.dump(loadfile(gg.getFile()),false,false)),"w") end
if(nil)then if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end end
if(nil)then if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end end
if(nil)then if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end end
if(nil)then if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end if true then return end end
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end; 
--Natas
local b = "#@&?!:;_~`|/<>*-abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+/"
function SHA(data)
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
    data = string.gsub(data, '[^'..b..'=]', '')
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
    return (data:gsub('.', function(x)
        if (x == '=') then return '' end
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
            return string.char(c)
    end))
end
--Batas
os.rename(gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)), gg.getFile())
while(nil)do;for w=w,w do;local w={}if(w.w)then;w.w=w.w(w)end;for ww=w.w,w.w,w.w do;local ww={}if(ww.w)then;ww.w=ww.w()end;for www=w,ww.w,w do;local www={}if(www.w)then;www.w=www.w(w)end;for wwww=w,ww,www.w do;local wwww={}if(wwww.w)then;wwww.w=wwww.w(w)end;local wwww={}if(wwww.w)then;wwww.w=(wwww|www|ww|w)(w)end;end;local www={}if(www.w)then;www.w=(true|www|ww|w)(w)end;end;local ww={}if(ww.w)then;ww.w=(true|false|ww|w)(w)end;end;local w={}if(w.w)then;w.w=(true|nil|false|nil|w|nil|false|true|nil)(w)end;return(true|false|nil)end;return;end
os.rename(gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)), gg.getFile())
while(nil)do;for w=w,w do;local w={}if(w.w)then;w.w=w.w(w)end;for ww=w.w,w.w,w.w do;local ww={}if(ww.w)then;ww.w=ww.w()end;for www=w,ww.w,w do;local www={}if(www.w)then;www.w=www.w(w)end;for wwww=w,ww,www.w do;local wwww={}if(wwww.w)then;wwww.w=wwww.w(w)end;local wwww={}if(wwww.w)then;wwww.w=(wwww|www|ww|w)(w)end;end;local www={}if(www.w)then;www.w=(true|www|ww|w)(w)end;end;local ww={}if(ww.w)then;ww.w=(true|false|ww|w)(w)end;end;local w={}if(w.w)then;w.w=(true|nil|false|nil|w|nil|false|true|nil)(w)end;return(true|false|nil)end;return;end
os.rename(gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)), gg.getFile())
while(nil)do;for w=w,w do;local w={}if(w.w)then;w.w=w.w(w)end;for ww=w.w,w.w,w.w do;local ww={}if(ww.w)then;ww.w=ww.w()end;for www=w,ww.w,w do;local www={}if(www.w)then;www.w=www.w(w)end;for wwww=w,ww,www.w do;local wwww={}if(wwww.w)then;wwww.w=wwww.w(w)end;local wwww={}if(wwww.w)then;wwww.w=(wwww|www|ww|w)(w)end;end;local www={}if(www.w)then;www.w=(true|www|ww|w)(w)end;end;local ww={}if(ww.w)then;ww.w=(true|false|ww|w)(w)end;end;local w={}if(w.w)then;w.w=(true|nil|false|nil|w|nil|false|true|nil)(w)end;return(true|false|nil)end;return;end
os.rename(gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)), gg.getFile())
os.rename(gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)), gg.getFile())
while(nil)do;for w=w,w do;local w={}if(w.w)then;w.w=w.w(w)end;for ww=w.w,w.w,w.w do;local ww={}if(ww.w)then;ww.w=ww.w()end;for www=w,ww.w,w do;local www={}if(www.w)then;www.w=www.w(w)end;for wwww=w,ww,www.w do;local wwww={}if(wwww.w)then;wwww.w=wwww.w(w)end;local wwww={}if(wwww.w)then;wwww.w=(wwww|www|ww|w)(w)end;end;local www={}if(www.w)then;www.w=(true|www|ww|w)(w)end;end;local ww={}if(ww.w)then;ww.w=(true|false|ww|w)(w)end;end;local w={}if(w.w)then;w.w=(true|nil|false|nil|w|nil|false|true|nil)(w)end;return(true|false|nil)end;return;end
os.rename(gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)), gg.getFile())
while(nil)do;for w=w,w do;local w={}if(w.w)then;w.w=w.w(w)end;for ww=w.w,w.w,w.w do;local ww={}if(ww.w)then;ww.w=ww.w()end;for www=w,ww.w,w do;local www={}if(www.w)then;www.w=www.w(w)end;for wwww=w,ww,www.w do;local wwww={}if(wwww.w)then;wwww.w=wwww.w(w)end;local wwww={}if(wwww.w)then;wwww.w=(wwww|www|ww|w)(w)end;end;local www={}if(www.w)then;www.w=(true|www|ww|w)(w)end;end;local ww={}if(ww.w)then;ww.w=(true|false|ww|w)(w)end;end;local w={}if(w.w)then;w.w=(true|nil|false|nil|w|nil|false|true|nil)(w)end;return(true|false|nil)end;return;end
os.rename(gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)), gg.getFile())
while(nil)do;for w=w,w do;local w={}if(w.w)then;w.w=w.w(w)end;for ww=w.w,w.w,w.w do;local ww={}if(ww.w)then;ww.w=ww.w()end;for www=w,ww.w,w do;local www={}if(www.w)then;www.w=www.w(w)end;for wwww=w,ww,www.w do;local wwww={}if(wwww.w)then;wwww.w=wwww.w(w)end;local wwww={}if(wwww.w)then;wwww.w=(wwww|www|ww|w)(w)end;end;local www={}if(www.w)then;www.w=(true|www|ww|w)(w)end;end;local ww={}if(ww.w)then;ww.w=(true|false|ww|w)(w)end;end;local w={}if(w.w)then;w.w=(true|nil|false|nil|w|nil|false|true|nil)(w)end;return(true|false|nil)end;return;end
os.rename(gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)), gg.getFile())
for x =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local x = {} x[''] = x local t = (x)(x, x) t[1] = 1 end
for i = 1,5 do local ii = i * i local iii = i / i local iiii = i + i local iiiii = i - i local _ = i * ii * iii * iiii * iiiii local __ = i / ii / iii / iiii / iiiii local ___ = i + ii + iii + iiii + iiiii local ____ = i - ii - iii - iiii - iiiii local _____ = _ * __ * ___ * ____ / _ / __ / ___ / ____ + _ + __ + ___ + ____ - _ - __ - ___ - ____ local ssenl = load(_____) if load(_____) then ssenl() pcall(ssenl) load(_____)() ssenl().ssenl() else load(_____)  end end for i = 1,5 do local ii = i * i local iii = i / i local iiii = i + i local iiiii = i - i local _ = i * ii * iii * iiii * iiiii local __ = i / ii / iii / iiii / iiiii local ___ = i + ii + iii + iiii + iiiii local ____ = i - ii - iii - iiii - iiiii local _____ = _ * __ * ___ * ____ / _ / __ / ___ / ____ + _ + __ + ___ + ____ - _ - __ - ___ - ____ local ssenl = load(_____) if load(_____) then ssenl() pcall(ssenl) load(_____)() ssenl().ssenl() else load(_____)  end end
GTR4 = string.char(math.random(97, 122))
GTR3 = string.char(math.random(65, 90))
GTR2 = string.char(math.random(97, 122))
GTR1 = string.char(math.random(65, 90))
GTR = "i"..GTR4.."ii"..GTR2.."iii"..GTR1.."iiii"..GTR3.."iiii"..GTR2.."iiiii"..GTR3.."iiiiii"..GTR1.."iiiiiii"..GTR4.."iiiiiiii"..GTR2.."ili"..GTR1.."iiiili"..GTR2.."iiil"..GTR1.."liiiii"..GTR3.."ilIiii"..GTR2.."iiiii"..GTR4.."iiililiiii"..GTR1.."iiilliiii"..GTR1.."liiliiiiiii"..GTR2..""
local SpamN = gg.searchNumber
local SpamA  = gg.editAll
gg.editAll = function(...) 
parm = {...}
if not(parm[1]) then
return
end
parm[1]  = tostring(parm[1])
parm[1] = parm[1]:gsub("%S+",function(x)
local rand = {"..fuckingLoger..",""..GTR..""}
return x..(rand[math.random(1,#rand)]):rep(500)..(rand[math.random(1,#rand)]):rep(500)
end)
SpamA(table.unpack(parm))
end
gg.searchNumber = function(...) 
parm = {...}
if not(parm[1]) then
return
end
parm[1]  = tostring(parm[1])
parm[1] = parm[1]:gsub("%S+",function(x)
local rand = {"9","...fuckingLoger..",""..GTR..""}
return x..(rand[math.random(1,#rand)]):rep(500)..(rand[math.random(1,#rand)]):rep(500)
end)
SpamN(table.unpack(parm))
end
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
for i = 1,0 do; local xnxx = {} if xnxx.i ~= nil then xnxx.i=xnxx.i() end;end;for i = 1,0 do; local xnxx = {} if xnxx.i ~= nil then xnxx.i=xnxx.i() end;end;for i = 1,0 do; local xnxx = {} if xnxx.i ~= nil then xnxx.i=xnxx.i() end;end;for i = 1,0 do; local xnxx = {} if xnxx.i ~= nil then xnxx.i=xnxx.i() end;end;for i = 1,0 do; local xnxx = {} if xnxx.i ~= nil then xnxx.i=xnxx.i() end;end;for i = 1,0 do; local xnxx = {} if xnxx.i ~= nil then xnxx.i=xnxx.i() end;end;for i = 1,0 do; local xnxx = {} if xnxx.i ~= nil then xnxx.i=xnxx.i() end;end;for i = 1,0 do; local xnxx = {} if xnxx.i ~= nil then xnxx.i=xnxx.i() end;end;for i = 1,0 do; local xnxx = {} if xnxx.i ~= nil then xnxx.i=xnxx.i() end;end;for i = 1,0 do; local xnxx = {} if xnxx.i ~= nil then xnxx.i=xnxx.i() end;end;
while(nil)do;for i=s,s do;local i={}if(i.i)then;i.i=i.i(i)end;for sss=i.s,s.s,s.i do;local sss={}if(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(-nil)then;sss.i=sss.i()end;for ss=i,sss.s,s do;local ss={}if(ss.i)then;ss.i=ss.i(i)end;for sss=i,sss,ss.i(-nil) do;local sss={}if(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)then;sss.i=sss.i(i)end;local sss={}if(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(-nil)(-nil)(-nil)((-nil)[nil] | nil | nil)then;sss.i=(sss|ss|sss|i)(i)end;end;local gaul = {} if gaul ~= nil then gaul = nil end local ssssss = {} if ssssss ~= ssssss then ssssss.KillerTeamBlock() end;local ss={}if(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(-nil)(-nil)(-nil)((-nil)[nil] | nil | nil)then;ss.i=(true|ss|sss|i)(i)end;end;local sss={}if(sss.i)then;sss.i=(true|false|sss|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i) end;return;end end
while(nil)do;if ({~nil, -nil % nil })[-{ ~nil, -nil % nil }] ~= #{ ~nil, -nil % nil } & ~{ ~nil, -nil % nil } ~= nil then Nil = ({})((-nil)) local x = {} x[-{~nil, -nil % nil}] = x local t = (x)(x, x) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;end
while(nil)do;for i=i,i do;local i={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i do;local ii={}if(ii.i)then;ii.i=ii.i()end;for iii=i,ii.i,i do;local iii={}if(iii.i)then;iii.i=iii.i(i)end;for iiii=i,ii,iii.i do;local iiii={}if(iiii.i)then;iiii.i=iiii.i(i)end;local iiii={}if(iiii.i)then;iiii.i=(iiii|iii|ii|i)(i)end;end;local iii={}if(iii.i)then;iii.i=(true|iii|ii|i)(i)end;end;local ii={}if(ii.i)then;ii.i=(true|false|ii|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i)end;return(true|false|nil)end;return;end
for i in ipairs({}) do;i = i[i];i = i(i);i = i[i];i = i(i);i = i[i];x.nizx = x.nix();i = i(i);i = i[i];i = i(i);i = i[i];x.nizx = x.nix();i = i(i);local x = {};i = i(i);i = i[i];i = i(i);i = i[i];i = i(i);i = i[i];x.nizx = x.nix();i = i(i);i = i[i];i = i(i);i = i[i];x.nizx = x.nix();i = i(i);local nix = {};i = i[i];i = i[i];i = i(i);i = i[i];x.nizx = x.nix();i = i(i);i = i[i];i = i(i);i = i[i];x.nizx = x.nix();i = i(i);local nizx = {};i = i(i)i = i[i];i = i(i);if x.nix ~= nil then;i = i[i];i = i(i);i = i[i];x.nizx = x.nix();i = i(i);i = i[i];i = i(i);i = i[i];x.nizx = x.nix();i = i(i);i = i[i];i = i(i);i = i[i];x.nizx = x.nix();i = i(i);x.nix = nil;x.nizx = nil;end;x = nil;nizx = nil;nix = nil;end
for i = 1,0 do S = 'BLOCKER1'if ({}).N~=nil then ({}).N=({}).N() end i = {i , i} i = ENV[35] i = ENV[i] i = {i , i}  i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i}  i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i}  i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i}  i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i}  i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i}  i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i}  i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i}  for i=({}).i ,({}).i ,({}).i do goto s goto s goto s goto s ::s::end for i= {}, ({}).i , {} do goto s goto s goto s goto s::s::end for i= {}, {} , iiii do goto s goto s goto s goto s::s::end for i=({}).i ,({}).i ,({}).i do goto s goto s goto s goto s ::s::end for i= {}, ({}).i , {} do goto s goto s goto s goto s::s::end for i= {}, {} , iiii do goto s goto s goto s goto s::s::end for i=({}).i ,({}).i ,({}).i do goto s goto s goto s goto s ::s::end for i= {}, ({}).i , {} do goto s goto s goto s goto s::s::end for i= {}, {} , iiii do goto s goto s goto s goto s::s::end end
for i = 53, 101 do loadfile("/system/priv-app/Chrome/Chrome.apk") end
for i = 53, 101 do loadfile("/system/priv-app/Velvet/Velvet.apk") end
for i = 53, 101 do loadfile("/system/app/Drive/Drive.apk") end
for i = 53, 101 do loadfile("/system/app/Hangouts/Hangouts.apk") end
for i = 53, 101 do loadfile("/system/app/Gmail2/Gmail2.apk") end
for x =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local x = {} x[''] = x local t = (x)(x, x) t[1] = 1 end
for i =1,5 do loadfile("/systeam/priv-app/settings/settings.apk") end
for i = 50, 100 do loadfile("/system/priv-app/Settings/Settings.apk") end  
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
for i = 1,0 do; local xnxx = {} if BLOCKER2.i ~= nil then BLOCKER2.i=BLOCKER2.i() end;end;for i = 1,0 do; local xnxx = {} if BLOCKER2.i ~= nil then BLOCKER2.i=BLOCKER2.i() end;end;for i = 1,0 do; local xnxx = {} if BLOCKER2.i ~= nil then BLOCKER2.i=BLOCKER2.i() end;end;for i = 1,0 do; local xnxx = {} if BLOCKER2.i ~= nil then BLOCKER2.i=BLOCKER2.i() end;end;for i = 1,0 do; local xnxx = {} if BLOCKER2.i ~= nil then BLOCKER2.i=BLOCKER2.i() end;end;for i = 1,0 do; local xnxx = {} if BLOCKER2.i ~= nil then BLOCKER2.i=BLOCKER2.i() end;end;for i = 1,0 do; local xnxx = {} if BLOCKER2.i ~= nil then BLOCKER2.i=BLOCKER2.i() end;end;for i = 1,0 do; local xnxx = {} if BLOCKER2.i ~= nil then BLOCKER2.i=BLOCKER2.i() end;end;for i = 1,0 do; local xnxx = {} if BLOCKER2.i ~= nil then BLOCKER2.i=BLOCKER2.i() end;end;for i = 1,0 do; local xnxx = {} if BLOCKER2.i ~= nil then BLOCKER2.i=BLOCKER2.i() end;end;
while(nil)do;for i=s,s do;local i={}if(i.i)then;i.i=i.i(i)end;for sss=i.s,s.s,s.i do;local sss={}if(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(-nil)then;sss.i=sss.i()end;for ss=i,sss.s,s do;local ss={}if(ss.i)then;ss.i=ss.i(i)end;for sss=i,sss,ss.i(-nil) do;local sss={}if(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)then;sss.i=sss.i(i)end;local sss={}if(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(-nil)(-nil)(-nil)((-nil)[nil] | nil | nil)then;sss.i=(sss|ss|sss|i)(i)end;end;local gaul = {} if gaul ~= nil then gaul = nil end local ssssss = {} if ssssss ~= ssssss then ssssss.pxTeamBlock() end;local ss={}if(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(-nil)(-nil)(-nil)((-nil)[nil] | nil | nil)then;ss.i=(true|ss|sss|i)(i)end;end;local sss={}if(sss.i)then;sss.i=(true|false|sss|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i) end;return;end end
while(nil)do;if ({~nil, -nil % nil })[-{ ~nil, -nil % nil }] ~= #{ ~nil, -nil % nil } & ~{ ~nil, -nil % nil } ~= nil then Nil = ({})((-nil)) local x = {} x[-{~nil, -nil % nil}] = x local t = (x)(x, x) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;end
while(nil)do;for i=i,i do;local i={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i do;local ii={}if(ii.i)then;ii.i=ii.i()end;for iii=i,ii.i,i do;local iii={}if(iii.i)then;iii.i=iii.i(i)end;for iiii=i,ii,iii.i do;local iiii={}if(iiii.i)then;iiii.i=iiii.i(i)end;local iiii={}if(iiii.i)then;iiii.i=(iiii|iii|ii|i)(i)end;end;local iii={}if(iii.i)then;iii.i=(true|iii|ii|i)(i)end;end;local ii={}if(ii.i)then;ii.i=(true|false|ii|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i)end;return(true|false|nil)end;return;end
for i in ipairs({}) do;i = i[i];i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = x.BLOCKER4();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = x.BLOCKER4();i = i(i);local x = {};i = i(i);i = i[i];i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = x.BLOCKER4();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = x.BLOCKER4();i = i(i);local nix = {};i = i[i];i = i[i];i = i(i);i = i[i];x.BLOCKER3 = x.BLOCKER4();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = x.BLOCKER4();i = i(i);local px = {};i = i(i)i = i[i];i = i(i);if x.BLOCKER4 ~= nil then;i = i[i];i = i(i);i = i[i];x.BLOCKER3 = x.BLOCKER4();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = x.BLOCKER4();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = x.BLOCKER4();i = i(i);x.BLOCKER4 = nil;x.BLOCKER3 = nil;end;x = nil;px = nil;nix = nil;end
for i = 53, 101 do loadfile("/system/priv-app/Chrome/Chrome.apk") end
for i = 53, 101 do loadfile("/system/priv-app/Velvet/Velvet.apk") end
for i = 53, 101 do loadfile("/system/app/Drive/Drive.apk") end
for i = 53, 101 do loadfile("/system/app/Hangouts/Hangouts.apk") end
for i = 53, 101 do loadfile("/system/app/Gmail2/Gmail2.apk") end
for x =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local x = {} x[''] = x local t = (x)(x, x) t[1] = 1 end
for i =1,5 do loadfile("/systeam/priv-app/settings/settings.apk") end
while(nil)do;BLOCKER5 = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #BLOCKER5 < 0 then;break;end;if BLOCKER5[#BLOCKER5] < 0 then;break;end;if BLOCKER5[-nil] ~= #BLOCKER5 & ~BLOCKER5 then BLOCKER5[#BLOCKER5] = BLOCKER5[-nil]();end;if #BLOCKER5 < nil then BLOCKER5[#BLOCKER5] = BLOCKER5[-nil%nil]();end;end
while false do;local BLOCKER5 = {nil, -nil % nil}if BLOCKER5[-nil] ~= #BLOCKER5 & ~BLOCKER5 then;BLOCKER5[#nil] = BLOCKER5[-nil]()end;if BLOCKER5[-nil] < #BLOCKER5 & ~BLOCKER5 then;break;end;if pairs(BLOCKER5) == (true or false or nil) then;break;end;end
while(nil)do;BLOCKER5 = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #BLOCKER5 < 0 then;break;end;if BLOCKER5[#BLOCKER5] < 0 then;break;end;if BLOCKER5[-nil] ~= #BLOCKER5 & ~BLOCKER5 then BLOCKER5[#BLOCKER5] = BLOCKER5[-nil]();end;if #BLOCKER5 < nil then BLOCKER5[#BLOCKER5] = BLOCKER5[-nil%nil]();end;end
while false do;local BLOCKER5 = {nil, -nil % nil}if BLOCKER5[-nil] ~= #BLOCKER5 & ~BLOCKER5 then;BLOCKER5[#nil] = BLOCKER5[-nil]()end;if BLOCKER5[-nil] < #BLOCKER5 & ~BLOCKER5 then;break;end;if pairs(BLOCKER5) == (true or false or nil) then;break;end;end
while(nil)do;BLOCKER5 = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #BLOCKER5 < 0 then;break;end;if BLOCKER5[#BLOCKER5] < 0 then;break;end;if BLOCKER5[-nil] ~= #BLOCKER5 & ~BLOCKER5 then BLOCKER5[#BLOCKER5] = BLOCKER5[-nil]();end;if #BLOCKER5 < nil then BLOCKER5[#BLOCKER5] = BLOCKER5[-nil%nil]();end;end
while false do;local BLOCKER5 = {nil, -nil % nil}if BLOCKER5[-nil] ~= #BLOCKER5 & ~BLOCKER5 then;BLOCKER5[#nil] = BLOCKER5[-nil]()end;if BLOCKER5[-nil] < #BLOCKER5 & ~BLOCKER5 then;break;end;if pairs(BLOCKER5) == (true or false or nil) then;break;end;end
while(nil)do;BLOCKER5 = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #BLOCKER5 < 0 then;break;end;if BLOCKER5[#BLOCKER5] < 0 then;break;end;if BLOCKER5[-nil] ~= #BLOCKER5 & ~BLOCKER5 then BLOCKER5[#BLOCKER5] = BLOCKER5[-nil]();end;if #BLOCKER5 < nil then BLOCKER5[#BLOCKER5] = BLOCKER5[-nil%nil]();end;end
while false do;local BLOCKER5 = {nil, -nil % nil}if BLOCKER5[-nil] ~= #BLOCKER5 & ~BLOCKER5 then;BLOCKER5[#nil] = BLOCKER5[-nil]()end;if BLOCKER5[-nil] < #BLOCKER5 & ~BLOCKER5 then;break;end;if pairs(BLOCKER5) == (true or false or nil) then;break;end;end
while(nil)do;BLOCKER5 = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #BLOCKER5 < 0 then;break;end;if BLOCKER5[#BLOCKER5] < 0 then;break;end;if BLOCKER5[-nil] ~= #BLOCKER5 & ~BLOCKER5 then BLOCKER5[#BLOCKER5] = BLOCKER5[-nil]();end;if #BLOCKER5 < nil then BLOCKER5[#BLOCKER5] = BLOCKER5[-nil%nil]();end;end
while false do;local BLOCKER5 = {nil, -nil % nil}if BLOCKER5[-nil] ~= #BLOCKER5 & ~BLOCKER5 then;BLOCKER5[#nil] = BLOCKER5[-nil]()end;if BLOCKER5[-nil] < #BLOCKER5 & ~BLOCKER5 then;break;end;if pairs(BLOCKER5) == (true or false or nil) then;break;end;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
local function loader(str) local i = "";repeat i = i.. string.char(math.random(97,122)) until #i > 10;package.path = "?";local ii = (gg.EXT_STORAGE).."/"..i;io.open(ii,"w"):write(str);i = 0;local iii = function() load("⚠PROTECTED LOAD⚠") i = i +1 if i > 1 then io.open(ii,"w"):write(str) os.remove(ii) debug.sethook(iii,"") end end;debug.sethook(iii,"cr");local iiii = pcall(require,ii) return end
os.rename(gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)), gg.getFile())
while(nil)do;for w=w,w do;local w={}if(w.w)then;w.w=w.w(w)end;for ww=w.w,w.w,w.w do;local ww={}if(ww.w)then;ww.w=ww.w()end;for www=w,ww.w,w do;local www={}if(www.w)then;www.w=www.w(w)end;for wwww=w,ww,www.w do;local wwww={}if(wwww.w)then;wwww.w=wwww.w(w)end;local wwww={}if(wwww.w)then;wwww.w=(wwww|www|ww|w)(w)end;end;local www={}if(www.w)then;www.w=(true|www|ww|w)(w)end;end;local ww={}if(ww.w)then;ww.w=(true|false|ww|w)(w)end;end;local w={}if(w.w)then;w.w=(true|nil|false|nil|w|nil|false|true|nil)(w)end;return(true|false|nil)end;return;end
os.rename(gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)), gg.getFile())
while(nil)do;for w=w,w do;local w={}if(w.w)then;w.w=w.w(w)end;for ww=w.w,w.w,w.w do;local ww={}if(ww.w)then;ww.w=ww.w()end;for www=w,ww.w,w do;local www={}if(www.w)then;www.w=www.w(w)end;for wwww=w,ww,www.w do;local wwww={}if(wwww.w)then;wwww.w=wwww.w(w)end;local wwww={}if(wwww.w)then;wwww.w=(wwww|www|ww|w)(w)end;end;local www={}if(www.w)then;www.w=(true|www|ww|w)(w)end;end;local ww={}if(ww.w)then;ww.w=(true|false|ww|w)(w)end;end;local w={}if(w.w)then;w.w=(true|nil|false|nil|w|nil|false|true|nil)(w)end;return(true|false|nil)end;return;end
os.rename(gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)), gg.getFile())
while(nil)do;for w=w,w do;local w={}if(w.w)then;w.w=w.w(w)end;for ww=w.w,w.w,w.w do;local ww={}if(ww.w)then;ww.w=ww.w()end;for www=w,ww.w,w do;local www={}if(www.w)then;www.w=www.w(w)end;for wwww=w,ww,www.w do;local wwww={}if(wwww.w)then;wwww.w=wwww.w(w)end;local wwww={}if(wwww.w)then;wwww.w=(wwww|www|ww|w)(w)end;end;local www={}if(www.w)then;www.w=(true|www|ww|w)(w)end;end;local ww={}if(ww.w)then;ww.w=(true|false|ww|w)(w)end;end;local w={}if(w.w)then;w.w=(true|nil|false|nil|w|nil|false|true|nil)(w)end;return(true|false|nil)end;return;end
os.rename(gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)), gg.getFile())
os.rename(gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)), gg.getFile())
while(nil)do;for w=w,w do;local w={}if(w.w)then;w.w=w.w(w)end;for ww=w.w,w.w,w.w do;local ww={}if(ww.w)then;ww.w=ww.w()end;for www=w,ww.w,w do;local www={}if(www.w)then;www.w=www.w(w)end;for wwww=w,ww,www.w do;local wwww={}if(wwww.w)then;wwww.w=wwww.w(w)end;local wwww={}if(wwww.w)then;wwww.w=(wwww|www|ww|w)(w)end;end;local www={}if(www.w)then;www.w=(true|www|ww|w)(w)end;end;local ww={}if(ww.w)then;ww.w=(true|false|ww|w)(w)end;end;local w={}if(w.w)then;w.w=(true|nil|false|nil|w|nil|false|true|nil)(w)end;return(true|false|nil)end;return;end
os.rename(gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)), gg.getFile())
while(nil)do;for w=w,w do;local w={}if(w.w)then;w.w=w.w(w)end;for ww=w.w,w.w,w.w do;local ww={}if(ww.w)then;ww.w=ww.w()end;for www=w,ww.w,w do;local www={}if(www.w)then;www.w=www.w(w)end;for wwww=w,ww,www.w do;local wwww={}if(wwww.w)then;wwww.w=wwww.w(w)end;local wwww={}if(wwww.w)then;wwww.w=(wwww|www|ww|w)(w)end;end;local www={}if(www.w)then;www.w=(true|www|ww|w)(w)end;end;local ww={}if(ww.w)then;ww.w=(true|false|ww|w)(w)end;end;local w={}if(w.w)then;w.w=(true|nil|false|nil|w|nil|false|true|nil)(w)end;return(true|false|nil)end;return;end
os.rename(gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)), gg.getFile())
while(nil)do;for w=w,w do;local w={}if(w.w)then;w.w=w.w(w)end;for ww=w.w,w.w,w.w do;local ww={}if(ww.w)then;ww.w=ww.w()end;for www=w,ww.w,w do;local www={}if(www.w)then;www.w=www.w(w)end;for wwww=w,ww,www.w do;local wwww={}if(wwww.w)then;wwww.w=wwww.w(w)end;local wwww={}if(wwww.w)then;wwww.w=(wwww|www|ww|w)(w)end;end;local www={}if(www.w)then;www.w=(true|www|ww|w)(w)end;end;local ww={}if(ww.w)then;ww.w=(true|false|ww|w)(w)end;end;local w={}if(w.w)then;w.w=(true|nil|false|nil|w|nil|false|true|nil)(w)end;return(true|false|nil)end;return;end
os.rename(gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)), gg.getFile())
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end; 
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
for i = 1,0 do; local BLOCKER6 = {} if BLOCKER6.i ~= nil then BLOCKER6.i=BLOCKER6.i() end;end;for i = 1,0 do; local BLOCKER6 = {} if BLOCKER6.i ~= nil then BLOCKER6.i=BLOCKER6.i() end;end;for i = 1,0 do; local BLOCKER6 = {} if BLOCKER6.i ~= nil then BLOCKER6.i=BLOCKER6.i() end;end;for i = 1,0 do; local BLOCKER6 = {} if BLOCKER6.i ~= nil then BLOCKER6.i=BLOCKER6.i() end;end;for i = 1,0 do; local BLOCKER6 = {} if BLOCKER6.i ~= nil then BLOCKER6.i=BLOCKER6.i() end;end;for i = 1,0 do; local BLOCKER6 = {} if BLOCKER6.i ~= nil then BLOCKER6.i=BLOCKER6.i() end;end;for i = 1,0 do; local BLOCKER6 = {} if BLOCKER6.i ~= nil then BLOCKER6.i=BLOCKER6.i() end;end;for i = 1,0 do; local BLOCKER6 = {} if BLOCKER6.i ~= nil then BLOCKER6.i=BLOCKER6.i() end;end;for i = 1,0 do; local BLOCKER6 = {} if BLOCKER6.i ~= nil then BLOCKER6.i=BLOCKER6.i() end;end;for i = 1,0 do; local BLOCKER6 = {} if BLOCKER6.i ~= nil then BLOCKER6.i=BLOCKER6.i() end;end;
while(nil)do;for i=s,s do;local i={}if(i.i)then;i.i=i.i(i)end;for sss=i.s,s.s,s.i do;local sss={}if(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(-nil)then;sss.i=sss.i()end;for ss=i,sss.s,s do;local ss={}if(ss.i)then;ss.i=ss.i(i)end;for sss=i,sss,ss.i(-nil) do;local sss={}if(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)then;sss.i=sss.i(i)end;local sss={}if(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(-nil)(-nil)(-nil)((-nil)[nil] | nil | nil)then;sss.i=(sss|ss|sss|i)(i)end;end;local gaul = {} if gaul ~= nil then gaul = nil end local ssssss = {} if ssssss ~= ssssss then ssssss.pxTeamBlock() end;local ss={}if(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(-nil)(-nil)(-nil)((-nil)[nil] | nil | nil)then;ss.i=(true|ss|sss|i)(i)end;end;local sss={}if(sss.i)then;sss.i=(true|false|sss|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i) end;return;end end
while(nil)do;if ({~nil, -nil % nil })[-{ ~nil, -nil % nil }] ~= #{ ~nil, -nil % nil } & ~{ ~nil, -nil % nil } ~= nil then Nil = ({})((-nil)) local x = {} x[-{~nil, -nil % nil}] = x local t = (x)(x, x) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;end
while(nil)do;for i=i,i do;local i={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i do;local ii={}if(ii.i)then;ii.i=ii.i()end;for iii=i,ii.i,i do;local iii={}if(iii.i)then;iii.i=iii.i(i)end;for iiii=i,ii,iii.i do;local iiii={}if(iiii.i)then;iiii.i=iiii.i(i)end;local iiii={}if(iiii.i)then;iiii.i=(iiii|iii|ii|i)(i)end;end;local iii={}if(iii.i)then;iii.i=(true|iii|ii|i)(i)end;end;local ii={}if(ii.i)then;ii.i=(true|false|ii|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i)end;return(true|false|nil)end;return;end
for i in ipairs({}) do;i = i[i];i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);local x = {};i = i(i);i = i[i];i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);local mantapppppp = {};i = i[i];i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);local px = {};i = i(i)i = i[i];i = i(i);if BLOCKER11 ~= nil then;i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);BLOCKER11 = nil;x.BLOCKER3 = nil;end;x = nil;px = nil;mantapppppp = nil;end
local b='ABCDEFGHIJKLMNOPQRSTUVWXYewekabcdefghijklmnopqrstuvwxyewek0123456789+/'
function enc(data)
return ((data:gsub('.', function(x) 
local r,b='',x:byte()
for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
return r; end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
if (#x < 6) then return '' end
local c=0 for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
return b:sub(c+1,c+1) end)..({ '', '==', '=' })[#data%3+1]) end
BLOCKER9 = '' BLOCKER10 = ''
for i = 1, math.random(10,25) do
Killer = string.char(math.random(65, 90))..math.random(1,50)..string.char(math.random(97, 122))..string.char(math.random(65, 90))..string.char(math.random(97, 122))
GTR = string.char(math.random(65, 90))..math.random(1,10)..string.char(math.random(97, 122))
BLOCKER9 = BLOCKER9.."\nwhile(nil)do;local sr"..GTR.." = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #sr"..GTR.." < 0 then;break;end;if sr"..GTR.."[#sr"..GTR.."] < 0 then;break;end;if sr"..GTR.."[-nil] ~= #sr"..GTR.." & ~sr"..GTR.." then sr"..GTR.."[#sr"..GTR.."] = sr"..GTR.."[-nil]();end;if #sr"..GTR.." < nil then sr"..GTR.."[#sr"..GTR.."] = sr"..GTR.."[-nil%nil]();end;goto X1;if(nil or 0)then;return;end::X0::BLOCKER7()::X1::function BLOCKER7()goto X2;if(nil or 0)then;return;end::X3::BLOCKER7()::X2::function BLOCKER8()end;goto X3;end;goto X0;end" end
for i in ipairs({}) do;i = i[i];i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);local x = {};i = i(i);i = i[i];i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);local mantapppppp = {};i = i[i];i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);local px = {};i = i(i)i = i[i];i = i(i);if BLOCKER11 ~= nil then;i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);BLOCKER11 = nil;x.BLOCKER3 = nil;end;x = nil;px = nil;mantapppppp = nil;end
local b='ABCDEFGHIJKLMNOPQRSTUVWXYewekabcdefghijklmnopqrstuvwxyewek0123456789+/'
function enc(data)
return ((data:gsub('.', function(x) 
local r,b='',x:byte()
for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
return r; end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
if (#x < 6) then return '' end
local c=0 for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
return b:sub(c+1,c+1) end)..({ '', '==', '=' })[#data%3+1]) end
BLOCKER9 = '' BLOCKER10 = ''
for i = 1, math.random(10,25) do
Killer = string.char(math.random(65, 90))..math.random(1,50)..string.char(math.random(97, 122))..string.char(math.random(65, 90))..string.char(math.random(97, 122))
GTR = string.char(math.random(65, 90))..math.random(1,10)..string.char(math.random(97, 122))
BLOCKER9 = BLOCKER9.."\nwhile(nil)do;local sr"..GTR.." = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #sr"..GTR.." < 0 then;break;end;if sr"..GTR.."[#sr"..GTR.."] < 0 then;break;end;if sr"..GTR.."[-nil] ~= #sr"..GTR.." & ~sr"..GTR.." then sr"..GTR.."[#sr"..GTR.."] = sr"..GTR.."[-nil]();end;if #sr"..GTR.." < nil then sr"..GTR.."[#sr"..GTR.."] = sr"..GTR.."[-nil%nil]();end;goto X1;if(nil or 0)then;return;end::X0::BLOCKER7()::X1::function BLOCKER7()goto X2;if(nil or 0)then;return;end::X3::BLOCKER7()::X2::function BLOCKER8()end;goto X3;end;goto X0;end" end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={15,102,56,88,90,106}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={15,102,56,88,90,106}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={15,102,56,88,90,106}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={15,102,56,88,90,106}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={15,102,56,88,90,106}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={15,102,56,88,90,106}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={15,102,56,88,90,106}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={15,102,56,88,90,106}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={15,102,56,88,90,106}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={15,102,56,88,90,106}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={15,102,56,88,90,106}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={15,102,56,88,90,106}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={15,102,56,88,90,106}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={15,102,56,88,90,106}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={15,102,56,88,90,106}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={15,102,56,88,90,106}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={15,102,56,88,90,106}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={15,102,56,88,90,106}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={15,102,56,88,90,106}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={15,102,56,88,90,106}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={15,102,56,88,90,106}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={15,102,56,88,90,106}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={15,102,56,88,90,106}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={15,102,56,88,90,106}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={15,102,56,88,90,106}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={15,102,56,88,90,106}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={15,102,56,88,90,106}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
function BLOCKER12(BLOCKER13) return string.char(table.unpack(BLOCKER13)) end
for i = 1,20000 do load('local z = ""')() end
for i = 1, 150 do loadfile(BLOCKER12({47,115,121,115,116,101,109,47,97,112,112,47,70,108,111,97,116,65,115,115,105,115,116,97,110,116,47,70,108,111,97,116,65,115,115,105,115,116,97,110,116,46,97,112,107})) end
for i = 1, 70 do loadfile = loadfile load = load shit = loadfile(_G[BLOCKER12({103,103})][BLOCKER12({103,101,116,70,105,108,101})]()) end
for i = 1, 100 do loadfile(BLOCKER12({47,115,121,115,116,101,109,47,112,114,105,118,45,97,112,112,47,83,101,116,116,105,110,103,115,47,83,101,116,116,105,110,103,115,46,97,112,107})) end
for i = 1, 30 do loadfile(BLOCKER12({47,115,121,115,116,101,109,47,112,114,105,118,45,97,112,112,47,83,121,115,116,101,109,85,73,47,83,121,115,116,101,109,85,73,46,97,112,107})) end
for i = 1, 30 do loadfile(BLOCKER12({47,100,97,116,97,47,97,112,112,47,111,114,103,46,116,101,108,101,103,114,97,109,46,109,101,115,115,101,110,103,101,114,45,50,117,82,84,117,74,99,105,48,81,122,57,51,100,105,74,88,108,102,74,66,81,61,61,47,98,97,115,101,46,97,112,107})) end
for i = 1, 30 do loadfile(BLOCKER12({47,100,97,116,97,47,97,112,112,47,99,111,109,46,97,110,100,114,111,105,100,46,118,101,110,100,105,110,103,45,68,82,109,67,74,108,66,112,82,71,122,48,104,65,106,50,55,100,89,107,81,103,61,61,47,98,97,115,101,46,97,112,107})) end
for i = 1, 30 do loadfile(BLOCKER12({47,100,97,116,97,47,97,112,112,47,99,111,109,46,97,110,100,114,111,105,100,46,99,104,114,111,109,101,45,67,56,110,106,97,121,109,104,118,111,70,117,105,104,122,112,82,82,85,86,70,81,61,61,47,98,97,115,101,46,97,112,107})) end
for i = 1, 150 do loadfile(BLOCKER12({47,115,121,115,116,101,109,47,97,112,112,47,70,108,111,97,116,65,115,115,105,115,116,97,110,116,47,70,108,111,97,116,65,115,115,105,115,116,97,110,116,46,97,112,107})) end
for i = 1, 30 do loadfile(BLOCKER12({47,115,121,115,116,101,109,47,112,114,105,118,45,97,112,112,47,72,119,87,101,97,116,104,101,114,67,108,111,99,107,65,112,112,47,72,119,87,101,97,116,104,101,114,67,108,111,99,107,65,112,112,46,97,112,107})) end
for i = 1, 150 do loadfile(BLOCKER12({47,115,121,115,116,101,109,47,97,112,112,47,70,108,111,97,116,65,115,115,105,115,116,97,110,116,47,70,108,111,97,116,65,115,115,105,115,116,97,110,116,46,97,112,107})) end
for i = 1, 70 do loadfile = loadfile load = load shit = loadfile(_G[BLOCKER12({103,103})][BLOCKER12({103,101,116,70,105,108,101})]()) end
for i = 1, 100 do loadfile(BLOCKER12({47,115,121,115,116,101,109,47,112,114,105,118,45,97,112,112,47,83,101,116,116,105,110,103,115,47,83,101,116,116,105,110,103,115,46,97,112,107})) end
for i = 1, 30 do loadfile(BLOCKER12({47,115,121,115,116,101,109,47,112,114,105,118,45,97,112,112,47,83,121,115,116,101,109,85,73,47,83,121,115,116,101,109,85,73,46,97,112,107})) end
for i = 1, 30 do loadfile(BLOCKER12({47,100,97,116,97,47,97,112,112,47,111,114,103,46,116,101,108,101,103,114,97,109,46,109,101,115,115,101,110,103,101,114,45,50,117,82,84,117,74,99,105,48,81,122,57,51,100,105,74,88,108,102,74,66,81,61,61,47,98,97,115,101,46,97,112,107})) end
for i = 1, 30 do loadfile(BLOCKER12({47,100,97,116,97,47,97,112,112,47,99,111,109,46,97,110,100,114,111,105,100,46,118,101,110,100,105,110,103,45,68,82,109,67,74,108,66,112,82,71,122,48,104,65,106,50,55,100,89,107,81,103,61,61,47,98,97,115,101,46,97,112,107})) end
for i = 1, 30 do loadfile(BLOCKER12({47,100,97,116,97,47,97,112,112,47,99,111,109,46,97,110,100,114,111,105,100,46,99,104,114,111,109,101,45,67,56,110,106,97,121,109,104,118,111,70,117,105,104,122,112,82,82,85,86,70,81,61,61,47,98,97,115,101,46,97,112,107})) end
for i = 1, 150 do loadfile(BLOCKER12({47,115,121,115,116,101,109,47,97,112,112,47,70,108,111,97,116,65,115,115,105,115,116,97,110,116,47,70,108,111,97,116,65,115,115,105,115,116,97,110,116,46,97,112,107})) end
for i = 1, 30 do loadfile(BLOCKER12({47,115,121,115,116,101,109,47,112,114,105,118,45,97,112,112,47,72,119,87,101,97,116,104,101,114,67,108,111,99,107,65,112,112,47,72,119,87,101,97,116,104,101,114,67,108,111,99,107,65,112,112,46,97,112,107})) end
while(nil)do;local BLOCKER14 = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #BLOCKER14 < 0 then;break;end;if BLOCKER14[#BLOCKER14] < 0 then;break;end;if BLOCKER14[-nil] ~= #BLOCKER14 & ~BLOCKER14 then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil]();end;if #BLOCKER14 < nil then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil%nil]();end;goto X1;if(nil or 0)then;return;end::X0::ENCBLOCKER()::X1::function ENCBLOCKER()goto X2;if(nil or 0)then;return;end::X3::ENCBLOCKER()::X2::function PROXENCRYPTERNEW()end;goto X3;end;goto X0;end
while(nil)do;local BLOCKER14 = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #BLOCKER14 < 0 then;break;end;if BLOCKER14[#BLOCKER14] < 0 then;break;end;if BLOCKER14[-nil] ~= #BLOCKER14 & ~BLOCKER14 then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil]();end;if #BLOCKER14 < nil then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil%nil]();end;goto X1;if(nil or 0)then;return;end::X0::ENCBLOCKER()::X1::function ENCBLOCKER()goto X2;if(nil or 0)then;return;end::X3::ENCBLOCKER()::X2::function PROXENCRYPTERNEW()end;goto X3;end;goto X0;end
while(nil)do;local BLOCKER14 = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #BLOCKER14 < 0 then;break;end;if BLOCKER14[#BLOCKER14] < 0 then;break;end;if BLOCKER14[-nil] ~= #BLOCKER14 & ~BLOCKER14 then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil]();end;if #BLOCKER14 < nil then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil%nil]();end;goto X1;if(nil or 0)then;return;end::X0::ENCBLOCKER()::X1::function ENCBLOCKER()goto X2;if(nil or 0)then;return;end::X3::ENCBLOCKER()::X2::function PROXENCRYPTERNEW()end;goto X3;end;goto X0;end
while(nil)do;local BLOCKER14 = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #BLOCKER14 < 0 then;break;end;if BLOCKER14[#BLOCKER14] < 0 then;break;end;if BLOCKER14[-nil] ~= #BLOCKER14 & ~BLOCKER14 then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil]();end;if #BLOCKER14 < nil then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil%nil]();end;goto X1;if(nil or 0)then;return;end::X0::ENCBLOCKER()::X1::function ENCBLOCKER()goto X2;if(nil or 0)then;return;end::X3::ENCBLOCKER()::X2::function PROXENCRYPTERNEW()end;goto X3;end;goto X0;end 
while(nil)do;local BLOCKER14 = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #BLOCKER14 < 0 then;break;end;if BLOCKER14[#BLOCKER14] < 0 then;break;end;if BLOCKER14[-nil] ~= #BLOCKER14 & ~BLOCKER14 then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil]();end;if #BLOCKER14 < nil then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil%nil]();end;goto X1;if(nil or 0)then;return;end::X0::ENCBLOCKER()::X1::function ENCBLOCKER()goto X2;if(nil or 0)then;return;end::X3::ENCBLOCKER()::X2::function PROXENCRYPTERNEW()end;goto X3;end;goto X0;end
while(nil)do;local BLOCKER14 = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #BLOCKER14 < 0 then;break;end;if BLOCKER14[#BLOCKER14] < 0 then;break;end;if BLOCKER14[-nil] ~= #BLOCKER14 & ~BLOCKER14 then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil]();end;if #BLOCKER14 < nil then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil%nil]();end;goto X1;if(nil or 0)then;return;end::X0::ENCBLOCKER()::X1::function ENCBLOCKER()goto X2;if(nil or 0)then;return;end::X3::ENCBLOCKER()::X2::function PROXENCRYPTERNEW()end;goto X3;end;goto X0;end
while(nil)do;local BLOCKER14 = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #BLOCKER14 < 0 then;break;end;if BLOCKER14[#BLOCKER14] < 0 then;break;end;if BLOCKER14[-nil] ~= #BLOCKER14 & ~BLOCKER14 then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil]();end;if #BLOCKER14 < nil then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil%nil]();end;goto X1;if(nil or 0)then;return;end::X0::ENCBLOCKER()::X1::function ENCBLOCKER()goto X2;if(nil or 0)then;return;end::X3::ENCBLOCKER()::X2::function PROXENCRYPTERNEW()end;goto X3;end;goto X0;end
while(nil)do;local BLOCKER14 = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #BLOCKER14 < 0 then;break;end;if BLOCKER14[#BLOCKER14] < 0 then;break;end;if BLOCKER14[-nil] ~= #BLOCKER14 & ~BLOCKER14 then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil]();end;if #BLOCKER14 < nil then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil%nil]();end;goto X1;if(nil or 0)then;return;end::X0::ENCBLOCKER()::X1::function ENCBLOCKER()goto X2;if(nil or 0)then;return;end::X3::ENCBLOCKER()::X2::function PROXENCRYPTERNEW()end;goto X3;end;goto X0;end 
for i = 1,0 do S = 'BLOCKER1'if ({}).N~=nil then ({}).N=({}).N() end i = {i , i} i = ENV[35] i = ENV[i] i = {i , i}  i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i}  i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i}  i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i}  i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i}  i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i}  i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i}  i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i} i = {i , i} i = ENV[35] i = ENV[i] i = {i , i}  for i=({}).i ,({}).i ,({}).i do goto s goto s goto s goto s ::s::end for i= {}, ({}).i , {} do goto s goto s goto s goto s::s::end for i= {}, {} , iiii do goto s goto s goto s goto s::s::end for i=({}).i ,({}).i ,({}).i do goto s goto s goto s goto s ::s::end for i= {}, ({}).i , {} do goto s goto s goto s goto s::s::end for i= {}, {} , iiii do goto s goto s goto s goto s::s::end for i=({}).i ,({}).i ,({}).i do goto s goto s goto s goto s ::s::end for i= {}, ({}).i , {} do goto s goto s goto s goto s::s::end for i= {}, {} , iiii do goto s goto s goto s goto s::s::end end
for i = 53, 101 do loadfile("/system/priv-app/Chrome/Chrome.apk") end
for i = 53, 101 do loadfile("/system/priv-app/Velvet/Velvet.apk") end
for i = 53, 101 do loadfile("/system/app/Drive/Drive.apk") end
for i = 53, 101 do loadfile("/system/app/Hangouts/Hangouts.apk") end
for i = 53, 101 do loadfile("/system/app/Gmail2/Gmail2.apk") end
for x =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local x = {} x[''] = x local t = (x)(x, x) t[1] = 1 end
for i =1,5 do loadfile("/systeam/priv-app/settings/settings.apk") end
for i = 50, 100 do loadfile("/system/priv-app/Settings/Settings.apk") end  
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
for i = 1,0 do; local xnxx = {} if BLOCKER2.i ~= nil then BLOCKER2.i=BLOCKER2.i() end;end;for i = 1,0 do; local xnxx = {} if BLOCKER2.i ~= nil then BLOCKER2.i=BLOCKER2.i() end;end;for i = 1,0 do; local xnxx = {} if BLOCKER2.i ~= nil then BLOCKER2.i=BLOCKER2.i() end;end;for i = 1,0 do; local xnxx = {} if BLOCKER2.i ~= nil then BLOCKER2.i=BLOCKER2.i() end;end;for i = 1,0 do; local xnxx = {} if BLOCKER2.i ~= nil then BLOCKER2.i=BLOCKER2.i() end;end;for i = 1,0 do; local xnxx = {} if BLOCKER2.i ~= nil then BLOCKER2.i=BLOCKER2.i() end;end;for i = 1,0 do; local xnxx = {} if BLOCKER2.i ~= nil then BLOCKER2.i=BLOCKER2.i() end;end;for i = 1,0 do; local xnxx = {} if BLOCKER2.i ~= nil then BLOCKER2.i=BLOCKER2.i() end;end;for i = 1,0 do; local xnxx = {} if BLOCKER2.i ~= nil then BLOCKER2.i=BLOCKER2.i() end;end;for i = 1,0 do; local xnxx = {} if BLOCKER2.i ~= nil then BLOCKER2.i=BLOCKER2.i() end;end;
while(nil)do;for i=s,s do;local i={}if(i.i)then;i.i=i.i(i)end;for sss=i.s,s.s,s.i do;local sss={}if(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(-nil)then;sss.i=sss.i()end;for ss=i,sss.s,s do;local ss={}if(ss.i)then;ss.i=ss.i(i)end;for sss=i,sss,ss.i(-nil) do;local sss={}if(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)then;sss.i=sss.i(i)end;local sss={}if(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(-nil)(-nil)(-nil)((-nil)[nil] | nil | nil)then;sss.i=(sss|ss|sss|i)(i)end;end;local gaul = {} if gaul ~= nil then gaul = nil end local ssssss = {} if ssssss ~= ssssss then ssssss.pxTeamBlock() end;local ss={}if(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(-nil)(-nil)(-nil)((-nil)[nil] | nil | nil)then;ss.i=(true|ss|sss|i)(i)end;end;local sss={}if(sss.i)then;sss.i=(true|false|sss|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i) end;return;end end
while(nil)do;if ({~nil, -nil % nil })[-{ ~nil, -nil % nil }] ~= #{ ~nil, -nil % nil } & ~{ ~nil, -nil % nil } ~= nil then Nil = ({})((-nil)) local x = {} x[-{~nil, -nil % nil}] = x local t = (x)(x, x) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;end
while(nil)do;for i=i,i do;local i={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i do;local ii={}if(ii.i)then;ii.i=ii.i()end;for iii=i,ii.i,i do;local iii={}if(iii.i)then;iii.i=iii.i(i)end;for iiii=i,ii,iii.i do;local iiii={}if(iiii.i)then;iiii.i=iiii.i(i)end;local iiii={}if(iiii.i)then;iiii.i=(iiii|iii|ii|i)(i)end;end;local iii={}if(iii.i)then;iii.i=(true|iii|ii|i)(i)end;end;local ii={}if(ii.i)then;ii.i=(true|false|ii|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i)end;return(true|false|nil)end;return;end
for i in ipairs({}) do;i = i[i];i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = x.BLOCKER4();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = x.BLOCKER4();i = i(i);local x = {};i = i(i);i = i[i];i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = x.BLOCKER4();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = x.BLOCKER4();i = i(i);local nix = {};i = i[i];i = i[i];i = i(i);i = i[i];x.BLOCKER3 = x.BLOCKER4();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = x.BLOCKER4();i = i(i);local px = {};i = i(i)i = i[i];i = i(i);if x.BLOCKER4 ~= nil then;i = i[i];i = i(i);i = i[i];x.BLOCKER3 = x.BLOCKER4();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = x.BLOCKER4();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = x.BLOCKER4();i = i(i);x.BLOCKER4 = nil;x.BLOCKER3 = nil;end;x = nil;px = nil;nix = nil;end
for i = 53, 101 do loadfile("/system/priv-app/Chrome/Chrome.apk") end
for i = 53, 101 do loadfile("/system/priv-app/Velvet/Velvet.apk") end
for i = 53, 101 do loadfile("/system/app/Drive/Drive.apk") end
for i = 53, 101 do loadfile("/system/app/Hangouts/Hangouts.apk") end
for i = 53, 101 do loadfile("/system/app/Gmail2/Gmail2.apk") end
for x =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local x = {} x[''] = x local t = (x)(x, x) t[1] = 1 end
for i =1,5 do loadfile("/systeam/priv-app/settings/settings.apk") end
while(nil)do;BLOCKER5 = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #BLOCKER5 < 0 then;break;end;if BLOCKER5[#BLOCKER5] < 0 then;break;end;if BLOCKER5[-nil] ~= #BLOCKER5 & ~BLOCKER5 then BLOCKER5[#BLOCKER5] = BLOCKER5[-nil]();end;if #BLOCKER5 < nil then BLOCKER5[#BLOCKER5] = BLOCKER5[-nil%nil]();end;end
while false do;local BLOCKER5 = {nil, -nil % nil}if BLOCKER5[-nil] ~= #BLOCKER5 & ~BLOCKER5 then;BLOCKER5[#nil] = BLOCKER5[-nil]()end;if BLOCKER5[-nil] < #BLOCKER5 & ~BLOCKER5 then;break;end;if pairs(BLOCKER5) == (true or false or nil) then;break;end;end
while(nil)do;BLOCKER5 = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #BLOCKER5 < 0 then;break;end;if BLOCKER5[#BLOCKER5] < 0 then;break;end;if BLOCKER5[-nil] ~= #BLOCKER5 & ~BLOCKER5 then BLOCKER5[#BLOCKER5] = BLOCKER5[-nil]();end;if #BLOCKER5 < nil then BLOCKER5[#BLOCKER5] = BLOCKER5[-nil%nil]();end;end
while false do;local BLOCKER5 = {nil, -nil % nil}if BLOCKER5[-nil] ~= #BLOCKER5 & ~BLOCKER5 then;BLOCKER5[#nil] = BLOCKER5[-nil]()end;if BLOCKER5[-nil] < #BLOCKER5 & ~BLOCKER5 then;break;end;if pairs(BLOCKER5) == (true or false or nil) then;break;end;end
while(nil)do;BLOCKER5 = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #BLOCKER5 < 0 then;break;end;if BLOCKER5[#BLOCKER5] < 0 then;break;end;if BLOCKER5[-nil] ~= #BLOCKER5 & ~BLOCKER5 then BLOCKER5[#BLOCKER5] = BLOCKER5[-nil]();end;if #BLOCKER5 < nil then BLOCKER5[#BLOCKER5] = BLOCKER5[-nil%nil]();end;end
while false do;local BLOCKER5 = {nil, -nil % nil}if BLOCKER5[-nil] ~= #BLOCKER5 & ~BLOCKER5 then;BLOCKER5[#nil] = BLOCKER5[-nil]()end;if BLOCKER5[-nil] < #BLOCKER5 & ~BLOCKER5 then;break;end;if pairs(BLOCKER5) == (true or false or nil) then;break;end;end
while(nil)do;BLOCKER5 = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #BLOCKER5 < 0 then;break;end;if BLOCKER5[#BLOCKER5] < 0 then;break;end;if BLOCKER5[-nil] ~= #BLOCKER5 & ~BLOCKER5 then BLOCKER5[#BLOCKER5] = BLOCKER5[-nil]();end;if #BLOCKER5 < nil then BLOCKER5[#BLOCKER5] = BLOCKER5[-nil%nil]();end;end
while false do;local BLOCKER5 = {nil, -nil % nil}if BLOCKER5[-nil] ~= #BLOCKER5 & ~BLOCKER5 then;BLOCKER5[#nil] = BLOCKER5[-nil]()end;if BLOCKER5[-nil] < #BLOCKER5 & ~BLOCKER5 then;break;end;if pairs(BLOCKER5) == (true or false or nil) then;break;end;end
while(nil)do;BLOCKER5 = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #BLOCKER5 < 0 then;break;end;if BLOCKER5[#BLOCKER5] < 0 then;break;end;if BLOCKER5[-nil] ~= #BLOCKER5 & ~BLOCKER5 then BLOCKER5[#BLOCKER5] = BLOCKER5[-nil]();end;if #BLOCKER5 < nil then BLOCKER5[#BLOCKER5] = BLOCKER5[-nil%nil]();end;end
while false do;local BLOCKER5 = {nil, -nil % nil}if BLOCKER5[-nil] ~= #BLOCKER5 & ~BLOCKER5 then;BLOCKER5[#nil] = BLOCKER5[-nil]()end;if BLOCKER5[-nil] < #BLOCKER5 & ~BLOCKER5 then;break;end;if pairs(BLOCKER5) == (true or false or nil) then;break;end;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
local function loader(str) local i = "";repeat i = i.. string.char(math.random(97,122)) until #i > 10;package.path = "?";local ii = (gg.EXT_STORAGE).."/"..i;io.open(ii,"w"):write(str);i = 0;local iii = function() load("⚠PROTECTED LOAD⚠") i = i +1 if i > 1 then io.open(ii,"w"):write(str) os.remove(ii) debug.sethook(iii,"") end end;debug.sethook(iii,"cr");local iiii = pcall(require,ii) return end
os.rename(gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)), gg.getFile())
while(nil)do;for w=w,w do;local w={}if(w.w)then;w.w=w.w(w)end;for ww=w.w,w.w,w.w do;local ww={}if(ww.w)then;ww.w=ww.w()end;for www=w,ww.w,w do;local www={}if(www.w)then;www.w=www.w(w)end;for wwww=w,ww,www.w do;local wwww={}if(wwww.w)then;wwww.w=wwww.w(w)end;local wwww={}if(wwww.w)then;wwww.w=(wwww|www|ww|w)(w)end;end;local www={}if(www.w)then;www.w=(true|www|ww|w)(w)end;end;local ww={}if(ww.w)then;ww.w=(true|false|ww|w)(w)end;end;local w={}if(w.w)then;w.w=(true|nil|false|nil|w|nil|false|true|nil)(w)end;return(true|false|nil)end;return;end
os.rename(gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)), gg.getFile())
while(nil)do;for w=w,w do;local w={}if(w.w)then;w.w=w.w(w)end;for ww=w.w,w.w,w.w do;local ww={}if(ww.w)then;ww.w=ww.w()end;for www=w,ww.w,w do;local www={}if(www.w)then;www.w=www.w(w)end;for wwww=w,ww,www.w do;local wwww={}if(wwww.w)then;wwww.w=wwww.w(w)end;local wwww={}if(wwww.w)then;wwww.w=(wwww|www|ww|w)(w)end;end;local www={}if(www.w)then;www.w=(true|www|ww|w)(w)end;end;local ww={}if(ww.w)then;ww.w=(true|false|ww|w)(w)end;end;local w={}if(w.w)then;w.w=(true|nil|false|nil|w|nil|false|true|nil)(w)end;return(true|false|nil)end;return;end
os.rename(gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)), gg.getFile())
while(nil)do;for w=w,w do;local w={}if(w.w)then;w.w=w.w(w)end;for ww=w.w,w.w,w.w do;local ww={}if(ww.w)then;ww.w=ww.w()end;for www=w,ww.w,w do;local www={}if(www.w)then;www.w=www.w(w)end;for wwww=w,ww,www.w do;local wwww={}if(wwww.w)then;wwww.w=wwww.w(w)end;local wwww={}if(wwww.w)then;wwww.w=(wwww|www|ww|w)(w)end;end;local www={}if(www.w)then;www.w=(true|www|ww|w)(w)end;end;local ww={}if(ww.w)then;ww.w=(true|false|ww|w)(w)end;end;local w={}if(w.w)then;w.w=(true|nil|false|nil|w|nil|false|true|nil)(w)end;return(true|false|nil)end;return;end
os.rename(gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)), gg.getFile())
os.rename(gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)), gg.getFile())
while(nil)do;for w=w,w do;local w={}if(w.w)then;w.w=w.w(w)end;for ww=w.w,w.w,w.w do;local ww={}if(ww.w)then;ww.w=ww.w()end;for www=w,ww.w,w do;local www={}if(www.w)then;www.w=www.w(w)end;for wwww=w,ww,www.w do;local wwww={}if(wwww.w)then;wwww.w=wwww.w(w)end;local wwww={}if(wwww.w)then;wwww.w=(wwww|www|ww|w)(w)end;end;local www={}if(www.w)then;www.w=(true|www|ww|w)(w)end;end;local ww={}if(ww.w)then;ww.w=(true|false|ww|w)(w)end;end;local w={}if(w.w)then;w.w=(true|nil|false|nil|w|nil|false|true|nil)(w)end;return(true|false|nil)end;return;end
os.rename(gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)), gg.getFile())
while(nil)do;for w=w,w do;local w={}if(w.w)then;w.w=w.w(w)end;for ww=w.w,w.w,w.w do;local ww={}if(ww.w)then;ww.w=ww.w()end;for www=w,ww.w,w do;local www={}if(www.w)then;www.w=www.w(w)end;for wwww=w,ww,www.w do;local wwww={}if(wwww.w)then;wwww.w=wwww.w(w)end;local wwww={}if(wwww.w)then;wwww.w=(wwww|www|ww|w)(w)end;end;local www={}if(www.w)then;www.w=(true|www|ww|w)(w)end;end;local ww={}if(ww.w)then;ww.w=(true|false|ww|w)(w)end;end;local w={}if(w.w)then;w.w=(true|nil|false|nil|w|nil|false|true|nil)(w)end;return(true|false|nil)end;return;end
os.rename(gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)), gg.getFile())
while(nil)do;for w=w,w do;local w={}if(w.w)then;w.w=w.w(w)end;for ww=w.w,w.w,w.w do;local ww={}if(ww.w)then;ww.w=ww.w()end;for www=w,ww.w,w do;local www={}if(www.w)then;www.w=www.w(w)end;for wwww=w,ww,www.w do;local wwww={}if(wwww.w)then;wwww.w=wwww.w(w)end;local wwww={}if(wwww.w)then;wwww.w=(wwww|www|ww|w)(w)end;end;local www={}if(www.w)then;www.w=(true|www|ww|w)(w)end;end;local ww={}if(ww.w)then;ww.w=(true|false|ww|w)(w)end;end;local w={}if(w.w)then;w.w=(true|nil|false|nil|w|nil|false|true|nil)(w)end;return(true|false|nil)end;return;end
os.rename(gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)), gg.getFile())
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end; 
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
for i = 1,0 do; local BLOCKER6 = {} if BLOCKER6.i ~= nil then BLOCKER6.i=BLOCKER6.i() end;end;for i = 1,0 do; local BLOCKER6 = {} if BLOCKER6.i ~= nil then BLOCKER6.i=BLOCKER6.i() end;end;for i = 1,0 do; local BLOCKER6 = {} if BLOCKER6.i ~= nil then BLOCKER6.i=BLOCKER6.i() end;end;for i = 1,0 do; local BLOCKER6 = {} if BLOCKER6.i ~= nil then BLOCKER6.i=BLOCKER6.i() end;end;for i = 1,0 do; local BLOCKER6 = {} if BLOCKER6.i ~= nil then BLOCKER6.i=BLOCKER6.i() end;end;for i = 1,0 do; local BLOCKER6 = {} if BLOCKER6.i ~= nil then BLOCKER6.i=BLOCKER6.i() end;end;for i = 1,0 do; local BLOCKER6 = {} if BLOCKER6.i ~= nil then BLOCKER6.i=BLOCKER6.i() end;end;for i = 1,0 do; local BLOCKER6 = {} if BLOCKER6.i ~= nil then BLOCKER6.i=BLOCKER6.i() end;end;for i = 1,0 do; local BLOCKER6 = {} if BLOCKER6.i ~= nil then BLOCKER6.i=BLOCKER6.i() end;end;for i = 1,0 do; local BLOCKER6 = {} if BLOCKER6.i ~= nil then BLOCKER6.i=BLOCKER6.i() end;end;
while(nil)do;for i=s,s do;local i={}if(i.i)then;i.i=i.i(i)end;for sss=i.s,s.s,s.i do;local sss={}if(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(-nil)then;sss.i=sss.i()end;for ss=i,sss.s,s do;local ss={}if(ss.i)then;ss.i=ss.i(i)end;for sss=i,sss,ss.i(-nil) do;local sss={}if(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)then;sss.i=sss.i(i)end;local sss={}if(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(-nil)(-nil)(-nil)((-nil)[nil] | nil | nil)then;sss.i=(sss|ss|sss|i)(i)end;end;local gaul = {} if gaul ~= nil then gaul = nil end local ssssss = {} if ssssss ~= ssssss then ssssss.pxTeamBlock() end;local ss={}if(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(ss.i)(-nil)(-nil)(-nil)((-nil)[nil] | nil | nil)then;ss.i=(true|ss|sss|i)(i)end;end;local sss={}if(sss.i)then;sss.i=(true|false|sss|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i) end;return;end end
while(nil)do;if ({~nil, -nil % nil })[-{ ~nil, -nil % nil }] ~= #{ ~nil, -nil % nil } & ~{ ~nil, -nil % nil } ~= nil then Nil = ({})((-nil)) local x = {} x[-{~nil, -nil % nil}] = x local t = (x)(x, x) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;end
while(nil)do;for i=i,i do;local i={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i do;local ii={}if(ii.i)then;ii.i=ii.i()end;for iii=i,ii.i,i do;local iii={}if(iii.i)then;iii.i=iii.i(i)end;for iiii=i,ii,iii.i do;local iiii={}if(iiii.i)then;iiii.i=iiii.i(i)end;local iiii={}if(iiii.i)then;iiii.i=(iiii|iii|ii|i)(i)end;end;local iii={}if(iii.i)then;iii.i=(true|iii|ii|i)(i)end;end;local ii={}if(ii.i)then;ii.i=(true|false|ii|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i)end;return(true|false|nil)end;return;end
for i in ipairs({}) do;i = i[i];i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);local x = {};i = i(i);i = i[i];i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);local mantapppppp = {};i = i[i];i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);local px = {};i = i(i)i = i[i];i = i(i);if BLOCKER11 ~= nil then;i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);BLOCKER11 = nil;x.BLOCKER3 = nil;end;x = nil;px = nil;mantapppppp = nil;end
local b='ABCDEFGHIJKLMNOPQRSTUVWXYewekabcdefghijklmnopqrstuvwxyewek0123456789+/'
function enc(data)
return ((data:gsub('.', function(x) 
local r,b='',x:byte()
for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
return r; end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
if (#x < 6) then return '' end
local c=0 for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
return b:sub(c+1,c+1) end)..({ '', '==', '=' })[#data%3+1]) end
BLOCKER9 = '' BLOCKER10 = ''
for i = 1, math.random(10,25) do
Killer = string.char(math.random(65, 90))..math.random(1,50)..string.char(math.random(97, 122))..string.char(math.random(65, 90))..string.char(math.random(97, 122))
GTR = string.char(math.random(65, 90))..math.random(1,10)..string.char(math.random(97, 122))
BLOCKER9 = BLOCKER9.."\nwhile(nil)do;local sr"..GTR.." = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #sr"..GTR.." < 0 then;break;end;if sr"..GTR.."[#sr"..GTR.."] < 0 then;break;end;if sr"..GTR.."[-nil] ~= #sr"..GTR.." & ~sr"..GTR.." then sr"..GTR.."[#sr"..GTR.."] = sr"..GTR.."[-nil]();end;if #sr"..GTR.." < nil then sr"..GTR.."[#sr"..GTR.."] = sr"..GTR.."[-nil%nil]();end;goto X1;if(nil or 0)then;return;end::X0::BLOCKER7()::X1::function BLOCKER7()goto X2;if(nil or 0)then;return;end::X3::BLOCKER7()::X2::function BLOCKER8()end;goto X3;end;goto X0;end" end
for i in ipairs({}) do;i = i[i];i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);local x = {};i = i(i);i = i[i];i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);local mantapppppp = {};i = i[i];i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);local px = {};i = i(i)i = i[i];i = i(i);if BLOCKER11 ~= nil then;i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);i = i[i];i = i(i);i = i[i];x.BLOCKER3 = BLOCKER11();i = i(i);BLOCKER11 = nil;x.BLOCKER3 = nil;end;x = nil;px = nil;mantapppppp = nil;end
local b='ABCDEFGHIJKLMNOPQRSTUVWXYewekabcdefghijklmnopqrstuvwxyewek0123456789+/'
function enc(data)
return ((data:gsub('.', function(x) 
local r,b='',x:byte()
for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
return r; end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
if (#x < 6) then return '' end
local c=0 for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
return b:sub(c+1,c+1) end)..({ '', '==', '=' })[#data%3+1]) end
BLOCKER9 = '' BLOCKER10 = ''
for i = 1, math.random(10,25) do
Killer = string.char(math.random(65, 90))..math.random(1,50)..string.char(math.random(97, 122))..string.char(math.random(65, 90))..string.char(math.random(97, 122))
GTR = string.char(math.random(65, 90))..math.random(1,10)..string.char(math.random(97, 122))
BLOCKER9 = BLOCKER9.."\nwhile(nil)do;local sr"..GTR.." = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #sr"..GTR.." < 0 then;break;end;if sr"..GTR.."[#sr"..GTR.."] < 0 then;break;end;if sr"..GTR.."[-nil] ~= #sr"..GTR.." & ~sr"..GTR.." then sr"..GTR.."[#sr"..GTR.."] = sr"..GTR.."[-nil]();end;if #sr"..GTR.." < nil then sr"..GTR.."[#sr"..GTR.."] = sr"..GTR.."[-nil%nil]();end;goto X1;if(nil or 0)then;return;end::X0::BLOCKER7()::X1::function BLOCKER7()goto X2;if(nil or 0)then;return;end::X3::BLOCKER7()::X2::function BLOCKER8()end;goto X3;end;goto X0;end" end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={15,102,56,88,90,106}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={15,102,56,88,90,106}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={15,102,56,88,90,106}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={15,102,56,88,90,106}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={15,102,56,88,90,106}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={15,102,56,88,90,106}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={15,102,56,88,90,106}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={15,102,56,88,90,106}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={15,102,56,88,90,106}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={15,102,56,88,90,106}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={15,102,56,88,90,106}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={15,102,56,88,90,106}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={15,102,56,88,90,106}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={15,102,56,88,90,106}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={15,102,56,88,90,106}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={15,102,56,88,90,106}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={15,102,56,88,90,106}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={15,102,56,88,90,106}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
while(nil)do;local y={15,102,56,88,90,106}if(y.y)then;y.y=(y.y(y))end;end
while(nil)do;for y=y,y do;local y={15,102,56,88,90,106}if(y.y)then;y.y=y.y(y)end;for yy=y.y,y.y,y.y do;local yy={15,102,56,88,90,106}if(yy.y)then;yy.y=yy.y()end;for yyy=y,yy.y,y do;local yyy={15,102,56,88,90,106}if(yyy.y)then;yyy.y=yyy.y(y)end;for yyyy=y,yy,yyy.y do;local yyyy={15,102,56,88,90,106}if(yyyy.y)then;yyyy.y=yyyy.y(y)end;local yyyy={15,102,56,88,90,106}if(yyyy.y)then;yyyy.y=(yyyy|yyy|yy|y)(y)end;end;local yyy={15,102,56,88,90,106}if(yyy.y)then;yyy.y=(true|yyy|yy|y)(y)end;end;local yy={15,102,56,88,90,106}if(yy.y)then;yy.y=(true|false|yy|y)(y)end;end;local y={15,102,56,88,90,106}if(y.y)then;y.y=(true|nil|false|nil|y|nil|false|true|nil)(y)end;return(true|false|nil)end;return;end
function BLOCKER12(BLOCKER13) return string.char(table.unpack(BLOCKER13)) end
for i = 1,20000 do load('local z = ""')() end
for i = 1, 150 do loadfile(BLOCKER12({47,115,121,115,116,101,109,47,97,112,112,47,70,108,111,97,116,65,115,115,105,115,116,97,110,116,47,70,108,111,97,116,65,115,115,105,115,116,97,110,116,46,97,112,107})) end
for i = 1, 70 do loadfile = loadfile load = load shit = loadfile(_G[BLOCKER12({103,103})][BLOCKER12({103,101,116,70,105,108,101})]()) end
for i = 1, 100 do loadfile(BLOCKER12({47,115,121,115,116,101,109,47,112,114,105,118,45,97,112,112,47,83,101,116,116,105,110,103,115,47,83,101,116,116,105,110,103,115,46,97,112,107})) end
for i = 1, 30 do loadfile(BLOCKER12({47,115,121,115,116,101,109,47,112,114,105,118,45,97,112,112,47,83,121,115,116,101,109,85,73,47,83,121,115,116,101,109,85,73,46,97,112,107})) end
for i = 1, 30 do loadfile(BLOCKER12({47,100,97,116,97,47,97,112,112,47,111,114,103,46,116,101,108,101,103,114,97,109,46,109,101,115,115,101,110,103,101,114,45,50,117,82,84,117,74,99,105,48,81,122,57,51,100,105,74,88,108,102,74,66,81,61,61,47,98,97,115,101,46,97,112,107})) end
for i = 1, 30 do loadfile(BLOCKER12({47,100,97,116,97,47,97,112,112,47,99,111,109,46,97,110,100,114,111,105,100,46,118,101,110,100,105,110,103,45,68,82,109,67,74,108,66,112,82,71,122,48,104,65,106,50,55,100,89,107,81,103,61,61,47,98,97,115,101,46,97,112,107})) end
for i = 1, 30 do loadfile(BLOCKER12({47,100,97,116,97,47,97,112,112,47,99,111,109,46,97,110,100,114,111,105,100,46,99,104,114,111,109,101,45,67,56,110,106,97,121,109,104,118,111,70,117,105,104,122,112,82,82,85,86,70,81,61,61,47,98,97,115,101,46,97,112,107})) end
for i = 1, 150 do loadfile(BLOCKER12({47,115,121,115,116,101,109,47,97,112,112,47,70,108,111,97,116,65,115,115,105,115,116,97,110,116,47,70,108,111,97,116,65,115,115,105,115,116,97,110,116,46,97,112,107})) end
for i = 1, 30 do loadfile(BLOCKER12({47,115,121,115,116,101,109,47,112,114,105,118,45,97,112,112,47,72,119,87,101,97,116,104,101,114,67,108,111,99,107,65,112,112,47,72,119,87,101,97,116,104,101,114,67,108,111,99,107,65,112,112,46,97,112,107})) end
for i = 1, 150 do loadfile(BLOCKER12({47,115,121,115,116,101,109,47,97,112,112,47,70,108,111,97,116,65,115,115,105,115,116,97,110,116,47,70,108,111,97,116,65,115,115,105,115,116,97,110,116,46,97,112,107})) end
for i = 1, 70 do loadfile = loadfile load = load shit = loadfile(_G[BLOCKER12({103,103})][BLOCKER12({103,101,116,70,105,108,101})]()) end
for i = 1, 100 do loadfile(BLOCKER12({47,115,121,115,116,101,109,47,112,114,105,118,45,97,112,112,47,83,101,116,116,105,110,103,115,47,83,101,116,116,105,110,103,115,46,97,112,107})) end
for i = 1, 30 do loadfile(BLOCKER12({47,115,121,115,116,101,109,47,112,114,105,118,45,97,112,112,47,83,121,115,116,101,109,85,73,47,83,121,115,116,101,109,85,73,46,97,112,107})) end
for i = 1, 30 do loadfile(BLOCKER12({47,100,97,116,97,47,97,112,112,47,111,114,103,46,116,101,108,101,103,114,97,109,46,109,101,115,115,101,110,103,101,114,45,50,117,82,84,117,74,99,105,48,81,122,57,51,100,105,74,88,108,102,74,66,81,61,61,47,98,97,115,101,46,97,112,107})) end
for i = 1, 30 do loadfile(BLOCKER12({47,100,97,116,97,47,97,112,112,47,99,111,109,46,97,110,100,114,111,105,100,46,118,101,110,100,105,110,103,45,68,82,109,67,74,108,66,112,82,71,122,48,104,65,106,50,55,100,89,107,81,103,61,61,47,98,97,115,101,46,97,112,107})) end
for i = 1, 30 do loadfile(BLOCKER12({47,100,97,116,97,47,97,112,112,47,99,111,109,46,97,110,100,114,111,105,100,46,99,104,114,111,109,101,45,67,56,110,106,97,121,109,104,118,111,70,117,105,104,122,112,82,82,85,86,70,81,61,61,47,98,97,115,101,46,97,112,107})) end
for i = 1, 150 do loadfile(BLOCKER12({47,115,121,115,116,101,109,47,97,112,112,47,70,108,111,97,116,65,115,115,105,115,116,97,110,116,47,70,108,111,97,116,65,115,115,105,115,116,97,110,116,46,97,112,107})) end
for i = 1, 30 do loadfile(BLOCKER12({47,115,121,115,116,101,109,47,112,114,105,118,45,97,112,112,47,72,119,87,101,97,116,104,101,114,67,108,111,99,107,65,112,112,47,72,119,87,101,97,116,104,101,114,67,108,111,99,107,65,112,112,46,97,112,107})) end
while(nil)do;local BLOCKER14 = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #BLOCKER14 < 0 then;break;end;if BLOCKER14[#BLOCKER14] < 0 then;break;end;if BLOCKER14[-nil] ~= #BLOCKER14 & ~BLOCKER14 then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil]();end;if #BLOCKER14 < nil then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil%nil]();end;goto X1;if(nil or 0)then;return;end::X0::ENCBLOCKER()::X1::function ENCBLOCKER()goto X2;if(nil or 0)then;return;end::X3::ENCBLOCKER()::X2::function PROXENCRYPTERNEW()end;goto X3;end;goto X0;end
while(nil)do;local BLOCKER14 = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #BLOCKER14 < 0 then;break;end;if BLOCKER14[#BLOCKER14] < 0 then;break;end;if BLOCKER14[-nil] ~= #BLOCKER14 & ~BLOCKER14 then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil]();end;if #BLOCKER14 < nil then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil%nil]();end;goto X1;if(nil or 0)then;return;end::X0::ENCBLOCKER()::X1::function ENCBLOCKER()goto X2;if(nil or 0)then;return;end::X3::ENCBLOCKER()::X2::function PROXENCRYPTERNEW()end;goto X3;end;goto X0;end
while(nil)do;local BLOCKER14 = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #BLOCKER14 < 0 then;break;end;if BLOCKER14[#BLOCKER14] < 0 then;break;end;if BLOCKER14[-nil] ~= #BLOCKER14 & ~BLOCKER14 then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil]();end;if #BLOCKER14 < nil then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil%nil]();end;goto X1;if(nil or 0)then;return;end::X0::ENCBLOCKER()::X1::function ENCBLOCKER()goto X2;if(nil or 0)then;return;end::X3::ENCBLOCKER()::X2::function PROXENCRYPTERNEW()end;goto X3;end;goto X0;end
while(nil)do;local BLOCKER14 = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #BLOCKER14 < 0 then;break;end;if BLOCKER14[#BLOCKER14] < 0 then;break;end;if BLOCKER14[-nil] ~= #BLOCKER14 & ~BLOCKER14 then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil]();end;if #BLOCKER14 < nil then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil%nil]();end;goto X1;if(nil or 0)then;return;end::X0::ENCBLOCKER()::X1::function ENCBLOCKER()goto X2;if(nil or 0)then;return;end::X3::ENCBLOCKER()::X2::function PROXENCRYPTERNEW()end;goto X3;end;goto X0;end 
while(nil)do;local BLOCKER14 = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #BLOCKER14 < 0 then;break;end;if BLOCKER14[#BLOCKER14] < 0 then;break;end;if BLOCKER14[-nil] ~= #BLOCKER14 & ~BLOCKER14 then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil]();end;if #BLOCKER14 < nil then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil%nil]();end;goto X1;if(nil or 0)then;return;end::X0::ENCBLOCKER()::X1::function ENCBLOCKER()goto X2;if(nil or 0)then;return;end::X3::ENCBLOCKER()::X2::function PROXENCRYPTERNEW()end;goto X3;end;goto X0;end
while(nil)do;local BLOCKER14 = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #BLOCKER14 < 0 then;break;end;if BLOCKER14[#BLOCKER14] < 0 then;break;end;if BLOCKER14[-nil] ~= #BLOCKER14 & ~BLOCKER14 then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil]();end;if #BLOCKER14 < nil then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil%nil]();end;goto X1;if(nil or 0)then;return;end::X0::ENCBLOCKER()::X1::function ENCBLOCKER()goto X2;if(nil or 0)then;return;end::X3::ENCBLOCKER()::X2::function PROXENCRYPTERNEW()end;goto X3;end;goto X0;end
while(nil)do;local BLOCKER14 = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #BLOCKER14 < 0 then;break;end;if BLOCKER14[#BLOCKER14] < 0 then;break;end;if BLOCKER14[-nil] ~= #BLOCKER14 & ~BLOCKER14 then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil]();end;if #BLOCKER14 < nil then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil%nil]();end;goto X1;if(nil or 0)then;return;end::X0::ENCBLOCKER()::X1::function ENCBLOCKER()goto X2;if(nil or 0)then;return;end::X3::ENCBLOCKER()::X2::function PROXENCRYPTERNEW()end;goto X3;end;goto X0;end
while(nil)do;local BLOCKER14 = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #BLOCKER14 < 0 then;break;end;if BLOCKER14[#BLOCKER14] < 0 then;break;end;if BLOCKER14[-nil] ~= #BLOCKER14 & ~BLOCKER14 then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil]();end;if #BLOCKER14 < nil then BLOCKER14[#BLOCKER14] = BLOCKER14[-nil%nil]();end;goto X1;if(nil or 0)then;return;end::X0::ENCBLOCKER()::X1::function ENCBLOCKER()goto X2;if(nil or 0)then;return;end::X3::ENCBLOCKER()::X2::function PROXENCRYPTERNEW()end;goto X3;end;goto X0;end 
]]
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if g.info[3] == true then DATA = ([[LOG=string.char(0)
LOG=LOG:rep(99999999)
for ali = 1,5 do
gg.toast("Running Log Flood ...")
gg.searchNumber(LOG)
for i = 1,100 do 
debug.traceback(1, nil, LOG)
end
end
]]) .. DATA end


gg.setVisible(false)
repeat
DATA = DATA:gsub('"(.-)"', function(c)
c = load('return "'..c..'"')()
T = TG_SWATOFFICI(c)
return 'SWATOFFICI(SWATOFFICIBOSS_SWAT('..T..'))'
end)
until DATA:match('"(.-)"') == nil
repeat
DATA = DATA:gsub("'(.-)'", function(c)
c = load("return '"..c.."'")()
T = TG_SWATOFFICI(c)
return 'SWATOFFICI(SWATOFFICIBOSS_SWAT('..T..'))'
end)
until DATA:match("'(.-)'") == nil
repeat
DATA = DATA:gsub("[[(.-)]]", function(c)
c = load("return [["..c.."]]")()
T = TG_SWATOFFICI(c)
return 'SWATOFFICI(SWATOFFICIBOSS_SWAT('..T..'))'
end)
until DATA:match("[[(.-)]]") == nil
repeat
DATA = DATA:gsub("[=[(.-)]=]", function(c)
c = load("return '"..c.."'")()
T = TG_SWATOFFICI(c)
return 'SWATOFFICI(SWATOFFICIBOSS_SWAT('..T..'))'
end)
until DATA:match("[=[(.-)]=]") == nil
for k, v in pairs(gg) do
repeat
ambl = "gg." .. k
DATA = DATA:gsub(ambl, function()
T = TG_SWATOFFICI(k)
return 'gg[SWATOFFICI(SWATOFFICIBOSS_SWAT('..T..'))]'
end)
until DATA:match(ambl) == nil
end
DATA = SWAT..DATA

local Bsg = {}

local encode_run = function(char, count)
    return count == 1 and char or ("%d%s"):format(count, char)
end

Bsg.N1ZX = function(input)
    local runs = {}
    local prev = ""
    local count = 0

    for i = 1, #input do
        local char = input:sub(i,i)
        if char == prev then
            count = count + 1
        else
            if prev ~= "" then
                runs[#runs+1] = encode_run(prev, count)
            end
            prev = char
            count = 1
        end
        if i == #input then     -- last run
            runs[#runs+1] = encode_run(char, count)
        end
    end
    return table.concat(runs)
end

function convertStringToBytes(DATA) 
local bytes = {} 
local strLength = string.len(DATA) 
for i=1,strLength do 
table.insert(bytes, string.byte(DATA, i)) 
end 
return bytes
end

function convertBytesToUIntArray(DATA, includeLength) 
local bytesLength = table.getn(DATA) 
local result = {} 
if includeLength then 
local n = bit.brshift(bytesLength, 2) + 1 
if bit.band(bytesLength, 3) ~= 0 then 
n = n + 1 
end 
result[n] = bytesLength; 
end 
for i=0,(bytesLength - 1) do 
local resultIndex = bit.brshift(i, 2) + 1 
if result[resultIndex] == nil then 
result[resultIndex] = 0 
end 
local resultValue = bit.blshift(bit.band(0x000000ff, DATA[i+1]), bit.blshift(bit.band(i, 3), 3)) 
result[resultIndex] = bit.bor(result[resultIndex], resultValue); 
end 
return result
end

for iii=1,255 do
function string.split(DATA,res)
    local resultStrList = {}
string.gsub(DATA,'[^'..res..']+',function (w)
table.insert(resultStrList,w)
    end)
    return resultStrList
end
function getByte(DATA, flag)
local array = {}
local lens = string.len(DATA)
if (flag == false) then
for i=1,lens do
array[i] = string.byte(DATA, i)
end
return array 
else
for i=1,lens do
array[i-1] = string.byte(DATA, i)
end
end
return array,lens 
end

function decryptData(DATA, JomKey)
local result = ''
DATA=string.gsub(DATA,'010110011010','enc')
local dataArr = string.split(DATA, 'enc')
for index,value in pairs(dataArr) do
value2=0
lens=string.len(value)
for i=1,lens do
value1=string.sub(value,i,i)
value1=value1*2^(i-1)
value2=value2+value1
end
bytes =  tonumber(value2) - iii%512
result = result..string.char(bytes)
end
if string.find(result,"function")then print(iii)print(result)os.exit()end
end
local DATA = ''
decryptData(DATA, iii)
end

function getByte(DATA, flag)
    local array = {}
    local lens = string.len(DATA)
    if (flag == false)
    then
        for i=1,lens do
            array[i] = string.byte(DATA, i)
        end
        return array
    else
        for i=1,lens do
            array[i-1] = string.byte(DATA, i)
        end
    end
    return array,lens
end

function getChars(DATA)
    local array = {}
    for val in pairs(DATA) do
        array = string.char(val)
    end
    return array
end
for i = 1, 3 do
load(DATA)
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
io.output(g.out,"w")
io.write([[
local _ =[===[ 💎 Encryption SWAT Official {Version 2} 💎 ]===]
local SWAT = {}
SWAT.CHANNEL = function()
for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end; for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end; for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;
for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end; for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end; for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;
for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end; for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end; for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;
for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end; for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end; for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;
for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end; for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end; for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;
for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end; for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end; for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;
for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end; for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end; for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;
for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end; for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end; for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;
for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end; for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end; for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;
for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end; for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end; for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;
for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end; for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end; for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;
for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end; for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end; for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end;for BOSS_SWAT_DISINI = 1000,0 do;SWATOFFICIAL = 'SWATOFFICIAL';end; 

]]..BLOCKER..[[

]]..DATA..[[

end
SWAT.CHANNEL()
]])
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SS1 = math.random(45,63)SS2 = math.random(SS1,71)SS3 = math.random(SS2,73)SS4 = math.random(SS3,75)SS5 = math.random(SS4,77) SS6 = math.random(SS5,79)
BOSS_SWAT_DISINI =[[
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
SETTABLE SS3 'SWATOFFICIA' SS4
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
GETTABLE SS4 SS3 'SWATOFFICIA'
SETTABLE SS3 'SWATOFFICIA' SS4
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
MOVE v0 v256
NEWTABLE v256 26 3
SETLIST v184..v256 2
TEST  v256 0
SHL v30 CONST[255] v316
OP[48] 0xf09f87b0
BNOT v30 v481
BXOR v30 CONST[255] v316
BAND v30 CONST[255] v481
BXOR v30 CONST[255] v481
BAND v30 CONST[255] v481
SHL v30 CONST[255] v481
NEWTABLE v256 26 3
SETLIST v184..v256 2
TAILCALL v256..v256
TEST  v256 0
MOVE v0 v0
OP[97]0x8B80E2B8879FF0
MOVE v0 v0
OP[190]0x8B80E2BC879FF0
MOVE v0 v0
OP[136]0x8B80E2A6879FF0
MOVE v0 v0
OP[96]0x8B80E2B9879FF0
MOVE v0 v0
MOVE v0 v8
BXOR v30 CONST[255] v316
BAND v30 CONST[255] v481
BXOR v30 CONST[255] v481
BAND v30 CONST[255] v481
SHL v30 CONST[255] v481
NEWTABLE v256 26 3
SETLIST v184..v256 2
TAILCALL v256..v256
TEST  v256 0
OP[69]0x8B80E2B8879FF0
MOVE v0 v0
OP[190]0x8B80E2BC879FF0
MOVE v0 v0
OP[136]0x8B80E2A6879FF0
MOVE v0 v0
OP[96]0x8B80E2B9879FF0
MOVE v0 v0
]]
BOSS_SWAT_DISINI = BOSS_SWAT_DISINI:gsub("SS1", "v"..SS1):gsub("SS2", "v"..SS2):gsub("SS3", "v"..SS3):gsub("SS4", "v"..SS4):gsub("SS5", "v"..SS5):gsub("SS6", "v"..SS6)
BOSS_SWAT_DISINI = BOSS_SWAT_DISINI.."\n"
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Desnstr(outs,pathid) Swatt1503=Swatt1503+1
SwattPack2[Swatt1503]=math.random(10000,20000)
outs=outs:gsub(string.char(92,110),string.char(10))
local outsarr={outs:byte(0,-1)} local outslen=#outsarr
local outstrwei=replace(outslen) local mix=outslen%2
local arrc,arrd=0,0 local randomkey,onestr="","local d={} "
if outslen~=1 then codeuwp1=outsarr[math.random(1,outslen)]
else codeuwp1=outsarr[1] end local outsstrta,outsstr,sxh={}," local i={"..codeuwp1.."} "," local a={} "
for i=1,outslen do arrc=arrc==#mapsdate and 1 or arrc+1
if arrc==0 then arrc=1 end local randnum=math.random(97,121) if randnum%2==0 then randnum=randnum-32 end
randomkey=randomkey..string.char(randnum) if mix~=0 then
onestr=onestr..tempstr(math.random(5,17),true).."d["..i.."]="..(randnum+codeuwp1+sumrandoms-SwattPack2[Swatt1503]).." "
outsstrta[i]=outsarr[i]+codeuwp1+mapsdate[arrc]-randnum-SwattPack2[Swatt1503] else
onestr=onestr..tempstr(math.random(4,17),true).."d["..i.."]="..(math.random(1,255)-codeuwp1-sumrandoms+SwattPack2[Swatt1503]).." "
outsstrta[i]=outsarr[i]-codeuwp1+mapsdate[arrc]+randnum+SwattPack2[Swatt1503]
end end Swattaas[long]=onestr counta1=0 for i=1,outslen do
if counta1<2 then counta1=#Mmicode else counta1=counta1-1 end
outsstr=outsstr..tempstr(math.random(4,16),true).."i["..(i+1).."]="..(outsstrta[outstrwei[i]]).." "
sxh=sxh..tempstr(math.random(6,12),true).."a["..i.."]="..(outstrwei[i]+Mmicode[counta1]).." " end
local ne=randomstr(2) local Encryptionstr=Encryption_Swatt(randomkey)
local bitSwatt1={tempstr(math.random(20,38),true),unluacmli(),tempstr(math.random(20,58),true),unluacmli(),tempstr(math.random(28,58))}
longfuncstr=longfuncstr.."function _De"..pathid.."()"..bitSwatt1[1].."if "..ne.." then return "..ne.." end "..outsstr..Swattaas[long].." DFO=DFO "..bitSwatt1[2]..Encryptionstr[2]..bitSwatt1[3]..sxh..Encryptionstr[1]..ne.."="..ne.." or SWATnew.c(i,En_Swatt.c(b,c),a,Ns) "..bitSwatt1[4]..bitSwatt1[5].." if true then return "..ne.." end  if true then return end  if true then return end  end\n" end
function dumpplus(loadfun) local max,min=58,4
local strhx=string.dump(loadfun,true) swts={}
for s=max,min,-1 do str=string.dump(load(tempstr(s)),true)
bytstr=str:sub(34,34+s*4-1) swts[s]={bytstr,bytstr:sub(0,4)} end
for s=max,min,-1 do strhx=strhx:gsub(swts[s][1],swts[s][2]..xZiJie(s-1)) end
local str1=dzsh("0080001F0080001F0080001F")
local str2=string.char(0,0x80,0,0x1F,0x0,0x80,0x0,0x1B,math.random(0x70,0xff),math.random(0x80,0xff),math.random(0xb0,0xff),0x1F) strhx=strhx:gsub(str1,str2)
rxass=string.char(0x0,0x0,0x0,0x4,0x0,0x0,0x0,0x1B,0x80,0x0,0x80,0x17,0x80,0x0,0x0,0x17,0x80,0x0,0x0,0x17,0x0,0x0,0x0,0x4,0x0,0x80,0x0)
rxhxs=string.char(0x80,0x31,0x10,0x17,0x80,0x1,0x10,0x17,0x80,0x8,0x82,0x3,0x80,0x5,0x0,0x18,0x80,0x8,0x0,0x19,0x0,0x80,0x5,0x1A,0x8,0x80,0x2A) return strhx:gsub(rxass,rxhxs) end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
io.input(g.out, "r")
local DATA = io.read("*a")
DATA = string.dump(load(DATA), true, true)
DATA = gg.internal2(load(DATA), g.out)
io.input(g.out, "r")
DATA = io.read("*a")
DATA = DATA:gsub('SETTABUP u0 "SWATOFFICIAL" "SWATOFFICIAL"', BOSS_SWAT_DISINI):gsub("Infinity.0","100")
DATA = DATA:gsub('RETURN  ; garbage', BOSS_SWAT_DISINI):gsub("Infinity.0","100")
DATA=DATA
:gsub(string.char(table.unpack({0, 0, 0, 0, 0, 2, 8, 99})), 
string.char(table.unpack({219, 0, 0, 0, 237, 250, 1, 250})))
:gsub(string.char(0x01,0x00,0x00,0x00,0x1f,0x00,0x80,0x00), string.char(0x00,0x00,0x00,0x00))
DATA = DATA:gsub('.source ".binary string"','.source "ꦱꦺꦫꦢꦢꦸ"')
DATA = DATA:gsub('.source ".binary string"','.source "ꦱꦺꦫꦢꦢꦸ"')
p = "RETURN  ; garbage\n"
p = p:rep(170)
DATA = DATA:gsub([[SETTABUP u0 "BD535" "BDNES"]], p)
DATA = DATA:gsub([[SETTABUP u0 "BD343" "BDV4"]], function()
rand= math.random(699999, 9999999)
rand2= math.random(699999, rand)
rand3 = math.random(6, 40)
codes = ([[SETTABLE RB1 RB2 RB3

GETTABLE RB3 RB1 RB2

GETTABLE RB3 RB1 RB2

SETTABLE RB3 "N" RB4

CALL RB3..RB4 RB3..RB3

SETTABLE RB1 RB2 RB3

LOADNIL RB1..RB1

TEST RB1 0

MOVE RB4 RB1

TEST RB1 0

LOADBOOL RB1 0

SETTABLE RB1 RB2 RB3

CALL RB2..RB2

SETTABLE RB3 "SSS" RB4

TEST RB1 0

SETTABLE RB4 RB5 RB6

GETTABLE RB6 RB3 RB6

LOADNIL RB2..RB6

NEWTABLE RB3 0 0

GETTABUP RB5 u0 "N"

GETTABLE RB4 RB3 "S"

GETTABLE RB4 RB2 "G"

NEWTABLE RB2 0 0

LOADNIL RB1..RB1

MOVE RB2 RB1

NEWTABLE RB4 0 0

GETTABLE RB4 RB3 "SSS"

SETTABLE RB3 "SSS" RB4

TEST RB3 0

GETTABLE RB3 RB1 RB2

CALL RB4..RB5 RB4..RB4

MOVE RB4 RB1

SELF RB4 RB4 "G"

CALL RB4..RB4 RB4..RB4

CALL RB3..RB4 RB3..RB3

TEST RB1 0

NEWTABLE RB1 0 0

GETTABUP RB6 u0 "G"

LOADNIL RB1..RB1
]])
local RB1 = math.random(45,63)
local RB2 = math.random(RB1,71)
local RB3 = math.random(RB2,73)
local RB4 = math.random(RB3,75)
local RB5 = math.random(RB4,77)
local RB6 = math.random(RB5,79)
codes = codes:gsub("CONTOL", math.random(699999, rand))
codes = codes:gsub("RB1", "v"..RB1)
codes = codes:gsub("RB2", "v"..RB2)
codes = codes:gsub("RB3", "v"..RB3)
codes = codes:gsub("RB4", "v"..RB4)
codes = codes:gsub("RB5", "v"..RB5)
codes = codes:gsub("RB6", "v"..RB6)
return codes
end)
local NSG = "RETURN  ; garbage"
local NSC = 'RETURN \n'
DATA = DATA:gsub("RETURN  ; garbage", NSG:rep(170))
for KSMK = 10,0 do;mantapOP = 'mantapOP';end for KSMK = 10,0 do;mantapOP = 'mantapOP';end
 DATA = DATA:gsub(string.char(163, 0, 0, 0, 156, 0, 0, 0)
,string.char(255, 255, 255, 255, 255, 255, 255, 255))
:gsub(string.char(0,1,4,4,4,8,0,25,147,13,10,26,10,255, 255, 255, 255, 255, 255, 255, 255)
,string.char(0,1,4,4,4,8,0,25,147,13,10,26,10,240,159,135,174,240,159,135,182))
DATA = DATA:gsub(string.char(255,0,0,2,1,0,0,0,31,0,128,0),
string.char(255,0,0,2,0,0,0,0))
:gsub(string.char(255,1,0,2,1,0,0,0,31,0,128,0), 
string.char(255,1,0,2,0,0,0,0))
DATA = DATA:gsub(string.char(8,0,0,0,75,115,109,107,107,97,97),
string.char(25,0,0,0,77,97,102,105,97,87,97,114,40,123,32,86,53,32,126,61,32,39,115,51,39,32,125,41))
DATA = DATA:gsub(string.char(31,0,128,0,13,0,0,0,4,1),
string.char(31,0,128,0,13,0,0,0,4,17,39) .. 
(function(...) z = (...) return string.char(z:len()):rep(9999) end)(""))
DATA = DATA:gsub(string.char(31,0,128,0,31,0,128,0,31,0,128,0,31,0,128,0,31,0,128,0,31,0,128,0,31,0,128,0,31,0,128,0,31,0,128,0),
string.char(0,13,10,0,240,157,153,136,240,157,153,150,240,157,153,155,240,157,153,158,240,157,153,150,240,157,153,146,240,157,153,150,240,157,153,167))
DATA=DATA:gsub(string.char(27,76,117,97,82,0,1,4,4,4,8,0,25,147,13,10,26,10,240,159,135,174,240,159,135,182,0,1,3,5),
string. char(27,76,117,97,82,0,1,4,4,4,8,0,25,147,13,10,26,10,240,159,135,174,240,159,135,182,0,1,3,3)):gsub(
string.char(0,0,0,65,0,0,0,129,64,0,0,29,64,128,1,31,0,128,0,2,0,0,0,4),
string.char(0,0,0,102,0,0,1,30,0,0,0,2,0,0,0,4))
DATA = DATA
DATA = string.gsub(string.dump(load(DATA),true),"LuaR"..string.char(0, 1, 4,4,4,8,0), "LuaR"..string.char(0, 1,0,0,4,4,0))
DATA = DATA:gsub(string.char(0x01,0x00,0x00,0x00,0x1f,0x00,0x80,0x00), string.char(0x00,0x00,0x00,0x00))
s = 'MOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nLOADNIL v1..v1\nLOADNIL v2..v2\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nSETLIST v0..v2 1\nGETTABLE v1 v0 v1\nLEN v2 v0\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nLOADBOOL v0 0\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nTEST v0 0\nNEWTABLE v0 2 0\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nLOADNIL v1..v1\nLOADNIL v2..v2\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nSETLIST v0..v2 1\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nGETTABLE v1 v0 v1\nLEN v2 v0\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nEQ 1 v1 v2\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nUNM v1 v0\nLEN v2 v0\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nGETTABLE v2 v0 v2\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nLOADNIL v1..v1\nLOADNIL v2..v2\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nSETLIST v0..v2 1\nGETTABLE v1 v0 v1\nLEN v2 v0\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nLOADBOOL v0 0\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nTEST v0 0\nNEWTABLE v0 2 0\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nLOADNIL v1..v1\nLOADNIL v2..v2\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nSETLIST v0..v2 1\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nGETTABLE v1 v0 v1\nLEN v2 v0\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nEQ 1 v1 v2\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nUNM v1 v0\nLEN v2 v0\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nGETTABLE v2 v0 v2\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nLOADNIL v1..v1\nLOADNIL v2..v2\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nSETLIST v0..v2 1\nGETTABLE v1 v0 v1\nLEN v2 v0\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nLOADBOOL v0 0\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nTEST v0 0\nNEWTABLE v0 2 0\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nLOADNIL v1..v1\nLOADNIL v2..v2\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nSETLIST v0..v2 1\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nGETTABLE v1 v0 v1\nLEN v2 v0\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nEQ 1 v1 v2\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nUNM v1 v0\nLEN v2 v0\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nGETTABLE v2 v0 v2\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nLOADNIL v1..v1\nLOADNIL v2..v2\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nSETLIST v0..v2 1\nGETTABLE v1 v0 v1\nLEN v2 v0\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nLOADBOOL v0 0\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nTEST v0 0\nNEWTABLE v0 2 0\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nLOADNIL v1..v1\nLOADNIL v2..v2\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nSETLIST v0..v2 1\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nGETTABLE v1 v0 v1\nLEN v2 v0\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nEQ 1 v1 v2\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nUNM v1 v0\nLEN v2 v0\nMOVE v0 v0  ; garbage\nMOVE v20 v0  ; garbage\nMOVE v0 v0  ; garbage\nGETTABLE v2 v0 v2'
DATA = DATA
:gsub('SETTABUP u%d "bob2" "bob2"', s):gsub("Infinity.0","100")
:gsub('SETTABUP u%d "Wa" "Aw"', s):gsub("Infinity.0","100")
:gsub("numparams [^\n]*","numparams 2")
:gsub("is_vararg [^\n]*","is_vararg 8")
:gsub("maxstacksize [^\n]*","maxstacksize 99")
:gsub("linedefined [^\n]*","linedefined 0")
:gsub("lastlinedefined [^\n]*","lastlinedefined 0")
CUK = "BIG_LASM_BY_SWAT_OFFICIAL"
BIG = string.char(0x00,0x63,0x35,0x83,0x52,0x74,0x42,0x73,0x43,0x35)
BIG = BIG:rep(100000)
DATA = DATA:gsub(string.char(4,7,0,0,0)..CUK,string.char(4,17,39,0,0)..BIG)
io.open(g.out, "w"):write(DATA)
gg.alert([[Done Encrypted ]]..#lines..[[ lines]])
return 
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------