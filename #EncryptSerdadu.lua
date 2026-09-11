local HT = {}
HT.last = gg.getFile()
HT.info = nil
HT.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
HT.data = loadfile(HT.config)
if not serdadu then return else
if HT.data ~= nil then HT.info = HT.data() HT.data = nil end
if HT.info == nil then HT.info = {HT.last, HT.last:gsub("/[^/]+$", "")} end
DuarMmx = gg.alert(os.date([[
Wellcome To Script Encrypt
  By SerdaduGaminG v3.2[BETA 2]🛡
📅Date : %A,%d %b %Y
⏰Time : %H:%M%p
═क════ ⊹⊱✫⊰⊹ ════क═
Fiture Encrypt🛡 :
➣ Hide String
➣ SHA245 Obfuscator
➣ Block SSTool | Load | Compiler
➣ Random Key ++
═क════ ⊹⊱✫⊰⊹ ════क═]]), "🛡OPEN🛡", "❌EXIT❌")
if DuarMmx == nil then end
if DuarMmx == 1 then end
if DuarMmx == 2 then os.exit(print(os.date([[
📅Date : %A,%d %b %Y
⏰Time : %H:%M%p
═क════ ⊹⊱✫⊰⊹ ════क═

➣ RUNING SCRIPT....
═क════ ⊹⊱✫⊰⊹ ════क═

➣ SCRIPT CANCELED
═क════ ⊹⊱✫⊰⊹ ════क═]])))end
while true do
HT.info = gg.prompt({
"📁 Choose Script to Encrypt : ",--1
"📁 Select Output Folder: ",--2
"🕒 Add Expirity Date",--3
"🔐 Add Password",--4
"🛡️ Add Minimal GG Required",--5
"✏️ Add Rename Blocker",--6
"📝 Custom Lua Header lua(X)",--7
},HT.info,{
"file",--1
"path",--2
"checkbox",--3
"checkbox",--4
"checkbox",--5
"checkbox",--6
"text"})--7
if HT.info == nil then os.exit(print([[
━━━━━━━━━━━━━━━━━━━━
               ❌SCRIPT CANCELED❌

         ⚠ENCRYPT FILE CANCELED⚠
━━━━━━━━━━━━━━━━━━━━]]))
end
gg.saveVariable(HT.info, HT.config)
HT.last = HT.info[1]
HT.file = HT.info[1]:match("[^/]+$")
HT.name = HT.info[1]:match("[^/]+$"):gsub("%.lua$", "")
HT.out = HT.info[2] .. "/" .. HT.name .. "_SRNC.lua"
print("🛡Encrypt Tools SerdaduGaminG v3.2[BETA 2]🛡")
if loadfile(HT.last) == nil then
return gg.alert([[⚠️Script not Found! ⚠️]])end
local DATA = io.input(HT.last):read('*a')
if not load(DATA) then
print("⚠️ ERROR\n\nFile Can Not Be Encrypted !")
break 
else

if HT.info[3] == true then
day = os.date("%d")
exp_date = gg.prompt({
"📆 Set Expired Date : ",
"📝 Type Expired Message : "},
{os.date("%Y%m" .. day + 7),"⚠️ Script Expired ⚠️️"},{"number", "text"})
end--if
if not exp_date then
gg.setVisible(true)
elseif exp_date[1] == nil then gg.alert("📆 Date Can Not Be Empty !") gg.setVisible(true)
else
print("📅 Added Expired Date : ".. exp_date[1])
print("")
DATA = '\n if os.date("%Y%m%d") >= "' ..exp_date[1].. '" then print("'..exp_date[2]..'") return gg.alert("' ..exp_date[2] ..'")end\n' .. DATA
end--if

if HT.info[4] == true then
PASS = gg["prompt"]({
"🔐 Set Password For Script :",
"📝 Type Message For Wrong Password : "
}, {"","⚠️ Wrong Password ⚠️"},{
"text",
"text"})
end--if
if not PASS then
gg.setVisible(true)
elseif PASS[1] == nil then
gg.alert("⚠️ Input Password !")
gg.setVisible(true)
else
print("🔐Added Password Script : ".. PASS[1])
print("")
DATA = '\nPASSW = gg.prompt({"🔒 Input password: "},{[1]=""},{[1]="text"})\n if not PASSW the﻿n return end\n if PASSW[1] == "" then gg.alert("❌Password Can Not Be Empty ❌") end\n if PASSW[1] == "' ..PASS[1].. '" then gg.toast("✔️Password correct😘")end\n' .. DATA
end--if

if HT.info[5] == true then
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
print("🛡️Added Minimal GG Version : "..VERSION[1])
print("")
DATA = '\nlocal LynX = gg;local Xslow = LynX.VERSION;if Xslow < "'..VERSION[1] .. '" then print("'..VERSION[2]..'") return gg.alert("' ..VERSION[2].. '")end\n' .. DATA
end--if

if HT.info[6] == true then
NAME = gg.prompt({
"🗒️ Set Name For Script :",
"📝 Type Message For Name Changed :",
}, {HT.out:match("[^/]+$"),
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
print("📝Added Rename Blocker : "..NAME[1])
print("")
DATA = '\nSerdaduProtect = gg.getFile():match("[^/]+$")\n srdd = "'..NAME[1]..'"\n if SerdaduProtect == srdd then else gg.copyText("'..NAME[1]..'") gg.setVisible(true) print("'..NAME[2]..'") return gg.alert("'..NAME[2].. '")end\n' ..DATA
end--if

local HTTBL = {}
local HTTBLOL = {}
function TB(str)
sd = {}
gb = {str:byte(1,-1)}
res = ''
LESS = '\\000'
for i = 1, #gb do
gb[i] = (gb[i] - HTTBLOL[1] - (HTTBLOL[2] + i) * (HTTBLOL[1] + i) ) % 256
res = LESS:rep(gb[i])
table.insert(sd, '"'..res..'"')
end
return "{"..table.concat(sd, ",").."}"
end
memex = 1
for i = 1, 2 do
gay = math.random(53, 266)
table.insert(HTTBLOL, gay)
end
function JomKey()
sd = {}
res = ''
LESS = '\\000'
for i = 1, #HTTBLOL do
res = LESS:rep(HTTBLOL[i])
table.insert(sd, '"'..res..'"')
end
kyyyy = "{"..table.concat(sd, ",").."}"
table.insert(HTTBL, kyyyy)
end
JomKey()
kuhp0 = ''
kntil = ''
for i = 1, math.random(10,25) do
Meqi = string.char(math.random(65, 90))..math.random(1,50)..string.char(math.random(97, 122))..string.char(math.random(65, 90))..string.char(math.random(97, 122))
GTR = string.char(math.random(65, 90))..math.random(1,10)..string.char(math.random(97, 122))
kuhp0 = kuhp0.."\nwhile(nil)do;local sr"..GTR.." = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #sr"..GTR.." < 0 then;break;end;if sr"..GTR.."[#sr"..GTR.."] < 0 then;break;end;if sr"..GTR.."[-nil] ~= #sr"..GTR.." & ~sr"..GTR.." then sr"..GTR.."[#sr"..GTR.."] = sr"..GTR.."[-nil]();end;if #sr"..GTR.." < nil then sr"..GTR.."[#sr"..GTR.."] = sr"..GTR.."[-nil%nil]();end;goto X1;if(nil or 0)then;return;end::X0::Rias()::X1::function Rias()goto X2;if(nil or 0)then;return;end::X3::Rias()::X2::function Issei()end;goto X3;end;goto X0;end"
end
local DATA = string.gsub(DATA,"\nend","\nend\nwhile(nil)do;local "..Meqi.." = {} if("..Meqi.."."..Meqi..")then;"..Meqi.."."..Meqi.."=("..Meqi.."."..Meqi.."("..Meqi.."))end;end")
local DATA =[[
if _A ~= '\n\n═क════ ⊹⊱✫⊰⊹ ════क═\n🛡️Encoded By SerdaduGaminG🛡️\n            Version : 3.2 [BETA 2]\n               🇮🇩INDONESIA🇮🇩\n═क════ ⊹⊱✫⊰⊹ ════क═\n\n' then return gg.alert("[❌] ERROR CODE 0x000A4F1")end
gg.setVisible(true)
gg.toast("🛡️Encrypt By SerdaduGaminG V3.2 [BETA 2]🛡️")
gg.setVisible(false)
local log = {}
for i = 1, 5000 do table.insert(log, {["address"] = 16 + i,  ["flags"] = 4,  ["values"] = 72}) end
gg.setVisible(true)
clock = os.clock()
time = os.time()
for i = 1, 6 do gg.addListItems(log) end
if os.clock() - clock > 2 then
end
gg.setVisible(false)
gg.removeListItems(log)
]]..kuhp0..[[

io.input(gg.getFile())
os.remove(gg.getFile())
gg.setVisible(false)
if not loadfile(gg.getFile()) then io.output(gg.getFile()) io.write(io.read("*a"), "w") return end
io.output(gg.getFile())
io.write(io.read("*a"), "w")
os.rename(gg.getFile(), "/storage/emulated/0/XxX")
os.rename("/storage/emulated/0/XxX", "/storage/emulated/0/Android/NubLuhKontol")
if not loadfile(gg.getFile()) then os.rename("/storage/emulated/0/Android/NubLuhKontol", gg.getFile()) return end
os.rename("/storage/emulated/0/Android/NubLuhKontol", gg.getFile())
io.input(gg.getFile(), "r")
os.remove(gg.getFile())
]]..DATA..[[ 

]]..kuhp0..[[ 

end
HT.care()
]]
for i = 1, 3 do
load(DATA)
end
gg.setVisible(false)
repeat
DATA = DATA:gsub('"(.-)"', function(c)
c = load('return "'..c..'"')()
T = TB(c)
table.insert(HTTBL, T)
memex = memex + 1
return "HT.SerdaduWani(Memex["..memex.."])"
end)
gg.toast("⏳ 10% Please Wait..")
until DATA:match('"(.-)"') == nil
for k, v in pairs(gg) do
repeat
ambl = "gg." .. k
DATA = DATA:gsub(ambl, function()
T = TB(k)
table.insert(HTTBL, T)
memex = memex + 1
return "gg[HT.SerdaduWani(Memex["..memex.."])]"
end)
gg.toast("⏳ 20% Please Wait..")
until DATA:match(ambl) == nil
end
repeat
DATA = DATA:gsub("'(.-)'", function(c)
c = load("return '"..c.."'")()
T = TB(c)
table.insert(HTTBL, T)
memex = memex + 1
return "HT.SerdaduWani(Memex["..memex.."])"
end)
gg.toast("⏳ 35% Please Wait..")
until DATA:match("'(.-)'") == nil
repeat
DATA = DATA:gsub("[[(.-)]]", function(c)
c = load("return [["..c.."]]")()
T = TB(c)
table.insert(HTTBL, T)
memex = memex + 1
return "HT.SerdaduWani(Memex["..memex.."])"
end)
until DATA:match("[[(.-)]]") == nil
repeat
DATA = DATA:gsub("[=[(.-)]=]", function(c)
c = load("return '"..c.."'")()
T = TB(c)
table.insert(HTTBL, T)
memex = memex + 1
return "HT.SerdaduWani(Memex["..memex.."])"
end)
gg.toast("⏳ 40% Please Wait..")
until DATA:match("[=[(.-)]=]") == nil
for k, v in pairs(io) do
repeat
ambl = "io." .. k
DATA = DATA:gsub(ambl, function()
T = TB(k)
table.insert(HTTBL, T)
memex = memex + 1
return "io[HT.SerdaduWani(Memex["..memex.."])]"
end)
gg.toast("⏳ 50% Please Wait..")
until DATA:match(ambl) == nil
end
for k, v in pairs(os) do
repeat
ambl = "os." .. k
DATA = DATA:gsub(ambl, function()
T = TB(k)
table.insert(HTTBL, T)
memex = memex + 1
return "os[HT.SerdaduWani(Memex["..memex.."])]"
end)
gg.toast("⏳ 55% Please Wait..")
until DATA:match(ambl) == nil
end
for k, v in pairs(math) do
repeat
ambl = "math." .. k
DATA = DATA:gsub(ambl, function()
T = TB(k)
table.insert(HTTBL, T)
memex = memex + 1
return "math[HT.SerdaduWani(Memex["..memex.."])]"
end)
gg.toast("⏳ 60% Please Wait..")
until DATA:match(ambl) == nil
end
for k, v in pairs(debug) do
repeat
ambl = "debug." .. k
DATA = DATA:gsub(ambl, function()
T = TB(k)
table.insert(HTTBL, T)
memex = memex + 1
return "debug[HT.SerdaduWani(Memex["..memex.."])]"
end)
gg.toast("⏳ 65% Please Wait..")
until DATA:match(ambl) == nil
end
for k, v in pairs(string) do
repeat
ambl = "string." .. k
DATA = DATA:gsub(ambl, function()
T = TB(k)
table.insert(HTTBL, T)
memex = memex + 1
return "string[HT.SerdaduWani(Memex["..memex.."])]"
end)
gg.toast("⏳ 75% Please Wait..")
until DATA:match(ambl) == nil
end
for k, v in pairs(table) do
repeat
ambl = "table." .. k
DATA = DATA:gsub(ambl, function()
T = TB(k)
table.insert(HTTBL, T)
memex = memex + 1
return "table[HT.SerdaduWani(Memex["..memex.."])]"
end)
until DATA:match(ambl) == nil
end
gg.toast("⏳ 85% Please Wait..")
tfux = {"loadfile%(", "load%(", "print%("}
for i = 1, #tfux do
DATA = DATA:gsub(tfux[i], function(c)
c = c:gsub("%(", "")
T = TB(c)
table.insert(HTTBL, T)
memex = memex + 1
return "SRD[HT.SerdaduWani(Memex["..memex.."])]("
end)
end
local PSBY = table.concat(HTTBL, ",")
gg.toast("⏳ 90% Please Wait..")
io.output(HT.out.."_WolF.lua", "w")
io.write('local _A = "\\n\\n═क════ ⊹⊱✫⊰⊹ ════क═\\n🛡️Encoded By SerdaduGaminG🛡️\\n            Version : 3.2 [BETA 2]\\n               🇮🇩INDONESIA🇮🇩\\n═क════ ⊹⊱✫⊰⊹ ════क═\\n\\n"\n\nwhile(nil)do;local '..GTR..' = {} if('..GTR..'.'..GTR..')then;'..GTR..'.'..GTR..'=('..GTR..'.'..GTR..'('..GTR..'))end;end for i = 1, 0 do local '..Meqi..' = {} '..Meqi..'.hentai = '..Meqi..'.xnxx() if '..Meqi..'.xnxx ~= nil then '..Meqi..'.hentai = '..Meqi..'.xnxx() end '..Meqi..' = nil end local SRD = _G;local HT = {}\nHT.care = function()\nwhile(nil)do;local '..GTR..'= {} if('..GTR..'.'..GTR..')then;'..GTR..'.'..GTR..'=('..GTR..'.'..GTR..'('..GTR..'))end;end for i = 1, 0 do local '..Meqi..' = {} '..Meqi..'.hentai = '..Meqi..'.xnxx() if '..Meqi..'.xnxx ~= nil then '..Meqi..'.hentai = '..Meqi..'.xnxx() end '..Meqi..' = nil end local Memex = {'..PSBY..'}\nfunction HT.wtkc(c)\nc = #c\nreturn c\nend\nsrd ={}\nsrd.stringg = string\nPersebaya = srd.stringg.char\nfunction HT.SerdaduWani(c)\nres = ""\nfor i = 1, HT.wtkc(c) do\nres = res..Persebaya((HT.wtkc(c[i]) + HT.wtkc(Memex[1][1]) + (HT.wtkc(Memex[1][2]) + i) * (HT.wtkc(Memex[1][1]) + i)) % 256)\nend\nreturn res\nend\n'..DATA)
file = io.open(HT.out.."_WolF.lua", "r")
DATS = file:read("*a")
file:close()
gg.toast("Checking Script....")
if not load(DATS) then
os.remove(HT.out.."_WolF.lua")
return gg.alert("⚠️ Script Can't be Encrypted !")
else
local CstHdr = HT.info[7]
file = io.open(HT.out, "w")
file:write(string.dump(loadfile(HT.out.."_WolF.lua"), true))
file:close("━━━━━━━━━━━━━━━━━━━\n➣ Encoded By SerdaduGaminG🛡\n➣ Block SSTOOL | UNLUAC | LOGS\n➣ Powered By : @wtkcesports TEAM\n➣ Join Telegram Channel :\n@officialserdadu\n@wtkcesports\n@CheatGameOnline\n━━━━━━━━━━━━━━━━━━━")
local TTB = function (SerdaduYT)
local Byte = {string.byte(SerdaduYT,1,-1)}
local Result = ""
for I , l in pairs(Byte) do
Result = Result..[[\]]..l
end
load("SerdaduYT = '"..Result.."'")()
return SerdaduYT
end
local gsub , Save , Checker , Text1 , TB = _G["gsub"]
io.input(HT.out)
local Text = io.read("*a")
local CD = function (TXT,Len,Header)
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
file = io.open(HT.out, "w")
file:write(Script.."\n\n━━━━━━━━━━━━━━━━━━━\n➣ Encoded By SerdaduGaminG🛡\n➣ Block SSTOOL | UNLUAC | LOGS\n➣ Powered By : @wtkcesports TEAM\n🎉Special Thanks To BydzNesia🎉\n➣ Join Telegram Channel :\n@officialserdadu\n@wtkcesports\n@CheatGameOnline\n━━━━━━━━━━━━━━━━━━━")
file:close()
os.remove(HT.out.."_WolF.lua")
gg.toast("⏳ 100% Succes Encrypted✔")
gg.setVisible(true)
print("📍Custom Lua Header : "..HT.info[7])
print([[
━━━━━━━━━━━━━━━━━━━
➣ Encrypted By SerdaduGaminG🛡
➣ Block SSTOOL | UNLUAC | LOGS
➣ Powered By : @wtkcesports TEAM
➣ Join Telegram Channel :
@officialserdadu
@wtkcesports
@CheatGameOnline
━━━━━━━━━━━━━━━━━━━]])
return
end
end
end
end

