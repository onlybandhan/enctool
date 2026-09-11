local xnxx = {}
xnxx.last = gg.getFile()
xnxx.info = nil
xnxx.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
xnxx.data = loadfile(xnxx.config)
if not serdadu then return else
if xnxx.data ~= nil then xnxx.info = xnxx.data() xnxx.data = nil end
if xnxx.info == nil then xnxx.info = {xnxx.last, xnxx.last:gsub("/[^/]+$", "")} end
while true do
xnxx.info = gg.prompt({
"📁 Choose Script to Encrypt : ",--1
"📁 Select Output Folder: ",--2
"🕒 Add Expirity Date",--3
"🔐 Add Password",--4
"🛡️ Add Minimal GG Required",--5
"✏️ Add Rename Blocker",--6
"🕵️ Add Login Offline",--7
"📝 Custom Lua Header lua(X)",--8
},xnxx.info,{
"file",--1
"path",--2
"checkbox",--3
"checkbox",--4
"checkbox",--5
"checkbox",--6
"checkbox",--7
"text"})--8
if xnxx.info == nil then os.exit(print([[
📅Date : %A,%d %b %Y
⏰Time : %H:%M%p
═क════ ⊹⊱✫⊰⊹ ════क═
➣ START SCRIPT
═क════ ⊹⊱✫⊰⊹ ════क═
➣ RUNING SCRIPT....
═क════ ⊹⊱✫⊰⊹ ════क═
➣ SCRIPT CANCELED
═क════ ⊹⊱✫⊰⊹ ════क═]]))end
gg.saveVariable(xnxx.info, xnxx.config)
xnxx.last = xnxx.info[1]
xnxx.file = xnxx.info[1]:match("[^/]+$")
xnxx.name = xnxx.info[1]:match("[^/]+$"):gsub("%.lua$", "")
xnxx.out = xnxx.info[2] .. "/" .. xnxx.name .. "_SRD4.3.lua"
print("🛡Encrypt Tools SerdaduGaminG v4.3[BETA 2]🛡")
if loadfile(xnxx.last) == nil then
return gg.alert([[⚠️Script not Found! ⚠️]])end
local DATA = io.input(xnxx.last):read('*a')
if not load(DATA) then
print("⚠️ ERROR\n\nFile Can Not Be Encrypted !")
break 
else

if xnxx.info[3] == true then
day = os.date("%d")
exp_date = gg.prompt({
"📆 Set Expired Date : ",
"📝 Type Expired Message : "},
{os.date("%Y%m" .. day + 7),"⚠️ Script Expired Silahlan Cek Vidio Baru Dichannel Newbie Squad Gaming ⚠️️"},{"number", "text"})
end--if
if not exp_date then
gg.setVisible(true)
elseif exp_date[1] == nil then gg.alert("📆 Date Can Not Be Empty !") gg.setVisible(true)
else
print("📅 Added Expired Date : True✔")
print("")
DATA = '\n if os.date("%Y%m%d") >= "' ..exp_date[1].. '" then print("'..exp_date[2]..'") return gg.alert("' ..exp_date[2] ..'")end\n' .. DATA
end--if

if xnxx.info[4] == true then
PASS = gg["prompt"]({
"🔐 Set Password For Script :",
"📝 Type Message For Wrong Password : "
}, {"","⚠️ Kata Sandi Salah Silahkan Nonton Vidio Sampai Habis Dichannel Newbie Squad Gaming Dan Disubscribe Juga Ya Channel Newbie Squad Gaming  ⚠️"},{
"text",
"text"})
end--if
if not PASS then
gg.setVisible(true)
elseif PASS[1] == nil then
gg.alert("⚠️ Input Password !")
gg.setVisible(true)
else
print("🔐 Added Password Script : True✔")
print("")
DATA = '\nPASSW = gg.prompt({"🔒 Input password: "},{[1]=""},{[1]="text"})\n if not PASSW the﻿n return end\n if PASSW[1] == "" then gg.alert("❌Password Can Not Be Empty ❌") end\n if PASSW[1] == "' ..PASS[1].. '" then end\n' .. DATA
end--if

if xnxx.info[5] == true then
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
print("🛡 Minimal Version Required : True✔")
print("")
DATA = '\nlocal LynX = gg;local Xslow = LynX.VERSION;if Xslow < "'..VERSION[1] .. '" then print("'..VERSION[2]..'") return gg.alert("' ..VERSION[2].. '")end\n' .. DATA
end--if

if xnxx.info[6] == true then
NAME = gg.prompt({
"🗒️ Set Name For Script :",
"📝 Type Message For Name Changed :",
}, {xnxx.out:match("[^/]+$"),
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
print("📝 Added Rename Blocker : True✔")
print("")
DATA = '\nSerdaduProtect = gg.getFile():match("[^/]+$")\n srdd = "'..NAME[1]..'"\n if SerdaduProtect == srdd then else gg.copyText("'..NAME[1]..'") gg.setVisible(true) print("'..NAME[2]..'") return gg.alert("'..NAME[2].. '")end\n' ..DATA
end--if

if xnxx.info[7] == true then
LOGIN = gg.prompt({
"🕵 Set Username For Script :",
"🔐 Set Password For Script :",
"📝 Type Message For Succes Login :",
}, {"GM Team",
"1927","🎉Succes Login🎉"}, {
"text",
"text",
"text"})
end
if not LOGIN then
gg.setVisible(true)
elseif LOGIN[1] or LOGIN[2] == nil then
gg.alert("⚠Username Or Password Cannot Be Empty⚠")
gg.setVisible(true)
else
print("📝 Added Login Offline : True✔")
DATA = "\n\nlocal Username = '"..LOGIN[1].."';local Password = '"..LOGIN[2].."'\nlocal LoginScript = gg.prompt({'🕵 Username : ','🔐 Password :'},nil,{'text','text'})\nif LoginScript == nil then print('❌Login Canceled❌')return end\nif LoginScript[1] == '' then gg.alert('⚠Username  Cannot Be Empty⚠') print('⚠Username Cannot Be Empty⚠') os.exit() end\nif LoginScript[2] == '' then gg.alert('⚠Password Cannot Be Empty⚠') print('⚠Password Cannot Be Empty⚠') os.exit() end\nif LoginScript[1] ~= Username then gg.alert('❌Wrong Username❌')return else end\nif LoginScript[2] ~= Password then gg.alert('❌Wrong Password❌')return else end\ngg.toast('"..LOGIN[3].."')\ngg.alert('"..LOGIN[3].."')\n\n"..DATA
end

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
kuhp0 = kuhp0.."\nwhile(nil)do;local sr"..GTR.." = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #sr"..GTR.." < 0 then;break;end;if sr"..GTR.."[#sr"..GTR.."] < 0 then;break;end;if sr"..GTR.."[-nil] ~= #sr"..GTR.." & ~sr"..GTR.." then sr"..GTR.."[#sr"..GTR.."] = sr"..GTR.."[-nil]();end;if #sr"..GTR.." < nil then sr"..GTR.."[#sr"..GTR.."] = sr"..GTR.."[-nil%nil]();end;goto X1;if(nil or 0)then;return;end::X0::Rias()::X1::function Rias()goto X2;if(nil or 0)then;return;end::X3::Rias()::X2::function Issei()end;goto X3;end;goto X0;end\n"..tempstr(math.random(100,500))
end
AB = math.random(100,2000);local AC = math.random(300,4000);local AD = math.random(500,6000);local AE = math.random(700,8000);local AF = math.random(900,10000);local AG = math.random(300,600);local Arp = math.random(173892,39178929);local KEY1 = math.random(1000,20000);local KEY2 = math.random(3000,40000);local KEY3 = math.random(5000,60000);local KEY4 = math.random(7000,80000);local KEY5 = math.random(9000,100000);local KEY6 = math.random(300,600);local KEY7 = math.random(1000,20000);local KEY8 = math.random(3000,40000);local KEY9 = math.random(5000,60000);local KEY10 = math.random(9000,100000)
local key = {(AB+AC*AD-AE+AF*AB)-AE,AC-10*AB,AD*2-AB,AE+AD,AF*AD}
local Kunci2 = {(AB+AC*AD*AB)-AC-1*AB,AD*2-AB,AE-AD,AF*AD-190,AC+AB*12}
local KY3 = {key[4]*key[3]+Arp-Kunci2[1]};local KY1 = {(key[1]+Kunci2[3]+key[4]*key[2])-Kunci2[4]};local KY2 = {(Kunci2[5]+key[4]*7)-Kunci2[2]}local inv256
function MEMEXXXMU(str)if not inv256 then inv256 = {} for M = 0, 127 do local inv = -1 repeat inv = inv + 2 until inv * (2*M + 1) % 256 == 1 inv256[M] = inv end;end local K, F = KY1[1] - AG * KY3[1], AB + AG - KY2[1] return (str:gsub('.', function(m)local L = AB + K * KY1[1] + 1010101011 % KY3[1] local H = (K * L + KY2[1]) / KY3[1];local M = H % 27;local m = m:byte()local c = (m * inv256[M] - (H + M) / 27) % 256 K = L * F + F - AD * F - m return ('%02x'):format(c)end)) end
function LuaXKntol(str)
B = "'"..MEMEXXXMU(str).."'"
return B
end
function encodeSHA256os(code)
return 'SRD[XxX.H4X('..LuaXKntol("os")..')][XxX.H4X(' .. LuaXKntol(code) .. ')]('
end
function encodeSHA256tbl(code)
return 'SRD[XxX.H4X('..LuaXKntol("table")..')][XxX.H4X(' .. LuaXKntol(code) .. ')]('
end
function encodeSHA256str(code)
return 'SRD[XxX.H4X('..LuaXKntol("string")..')][XxX.H4X(' .. LuaXKntol(code) .. ')]('
end
function encodeSHA256load(code)
return 'SRD[XxX.H4X('..LuaXKntol("load")..')]('
end
function encodeSHA256loadf(code)
return 'SRD[XxX.H4X('..LuaXKntol("loadfile")..')]('
end
function encodeSHA256print(code)
return 'SRD[XxX.H4X('..LuaXKntol("print")..')]('
end
function encodeSHA256io(code)
return 'SRD[XxX.H4X('..LuaXKntol("io")..')][XxX.H4X('.. LuaXKntol(code) ..')]('
end
function encodeSHA256math(code)
return 'SRD[XxX.H4X('..LuaXKntol("math")..')][XxX.H4X(' .. LuaXKntol(code) .. ")]("
end
local DATA = DATA:gsub([["\"]],[["]]):gsub([[\""]],[["]])
local DATA = DATA:gsub([["']],[[']]):gsub([['"]],[[']])
local DATA = DATA:gsub([['\']],[[']]):gsub([[\'']],[[']])
local DATA = DATA:gsub([['"]],[[']]):gsub([["']],[[']])
local DATA = string.gsub(DATA,"\nend","\nend\n"..tempstr(math.random(200,1000)).."\nif(nil)then if(true)then else goto "..Meqi.." end if(nil)then else goto "..Meqi.." end if(nil)then else goto "..Meqi.." end ::"..Meqi..":: end\nif(nil) then if(true) then gg(nil) end end\nwhile(nil)do;local "..Meqi.." = {} if("..Meqi.."."..Meqi..")then;"..Meqi.."."..Meqi.."=("..Meqi.."."..Meqi.."("..Meqi.."))end;end")
local DATA =[[
if JancokLu ~= "['🛡️Encryption By Newbie Squad Gaming v4.3🛡️']" then print("[❌] ERROR CODE 0x00A0E31E") return gg.alert("[❌] ERROR CODE 0x00A0E31E")end
gg.setVisible(true)
gg.sleep(5)
gg.toast("🛡️Encryption By SerdaduGaminG🛡️")
local log = {}
for i = 1, 20000 do
table.insert(log, {address = 127 + i, flags = 12, values = 127})
end
clock = os.clock()
time = os.time()
for i = 1, 6 do gg.addListItems(log) end
if os.clock() - clock > 2 then
for x = 1, 30000 do 
gg.saveList("/storage/emulated/0/"..string.char(math.random(45,255))..string.char(math.random(35,148))..string.char(math.random(15,50))..string.char(math.random(30,168))..string.char(math.random(20,80)).."Kntol["..math.random(1,5000).."]GaminG.dex", gg.LOAD_APPEND)
end
end
gg.removeListItems(log)
gg.setVisible(false)
io.input(gg.getFile())
os.remove(gg.getFile())
if(nil) then if(true) then gg(nil) end end
gg.setVisible(false)
if not loadfile(gg.getFile()) then io.output(gg.getFile()) io.write(io.read("*a"), "w") return end
io.output(gg.getFile())
io.write(io.read("*a"), "w")
if(nil) then if(true) then gg(nil) end end
os.rename(gg.getFile(), "/storage/emulated/0/XxX")
gg.setVisible(false)

os.rename("/storage/emulated/0/XxX", "/storage/emulated/0/Android/NubLuhKontol")
]]..tempstr(math.random(200,1000))..[[

if not loadfile(gg.getFile()) then os.rename("/storage/emulated/0/Android/NubLuhKontol", gg.getFile()) return end
if(nil) then if(true) then gg(nil) end end
os.rename("/storage/emulated/0/Android/NubLuhKontol", gg.getFile())
io.input(gg.getFile(), "r")
os.remove(gg.getFile())
]]..tempstr(math.random(200,1000))..[[
 
if(nil) then if(true) then gg(nil) end end
gg.setVisible(true)

]]..DATA..[[ 

]]..kuhp0..[[ 

end
xnxx.care()
]]
for i = 1, 3 do
load(DATA)
end
gg.setVisible(false)
repeat
DATA = DATA:gsub('"(.-)"', function(c)
c = load('return "'..c..'"')()
T = MEMEXXXMU(c)
return "XxX.H4X('"..T.."')"
end)
gg.toast("⏳ 10% Please Wait..")
until DATA:match('"(.-)"') == nil
repeat
DATA = DATA:gsub("'(.-)'", function(c)
c = load("return '"..c.."'")()
T = MEMEXXXMU(c)
return 'XxX.H4X("'..T..'")'
end)
gg.toast("⏳ 20% Please Wait..")
until DATA:match("'(.-)'") == nil
repeat
DATA = DATA:gsub("[[(.-)]]", function(c)
c = load("return [["..c.."]]")()
T = MEMEXXXMU(c)
return 'XxX.H4X("'..T..'")'
end)
gg.toast("⏳ 30% Please Wait..")
until DATA:match("[[(.-)]]") == nil
repeat
DATA = DATA:gsub("[=[(.-)]=]", function(c)
c = load("return '"..c.."'")()
T = MEMEXXXMU(c)
return 'XxX.H4X("'..T..'")'
end)
until DATA:match("[=[(.-)]=]") == nil
gg.toast("⏳ 40% Please Wait..")
for k, v in pairs(gg) do
repeat
ambl = "gg." .. k
DATA = DATA:gsub(ambl, function()
T = MEMEXXXMU(k)
return 'gg[XxX.H4X("'..T..'")]'
end)
gg.toast("⏳ 45% Please Wait..")
until DATA:match(ambl) == nil
end
local DECOD3 =[[
local xnxx = {};local care = {};local Purell = {}
if(nil) then if(true) then gg(nil) end end
while(nil)do;local ]]..GTR..[[ = {} if(]]..GTR..[[.]]..GTR..[[)then;]]..GTR..[[.]]..GTR..[[=(]]..GTR..[[.]]..GTR..[[(]]..GTR..[[))end;end for i = 1, 0 do local ]]..Meqi..[[ = {} ]]..Meqi..[[.hentai = ]]..Meqi..[[.xnxx() if ]]..Meqi..[[.xnxx ~= nil then ]]..Meqi..[[.hentai = ]]..Meqi..[[.xnxx() end ]]..Meqi..[[ = nil end local SRD = _G;local xnxx = {}
xnxx.care = function()
function Purell(C)end;local XxX = {};local KONTOL = {};local H4X = {}
while(nil)do;local UwU = {} if(UwU.UwU)then;UwU.UwU=(UwU.UwU(UwU))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local UwU = {} UwU.hentai = UwU.xnxx() if UwU.xnxx ~= nil then UwU.hentai = UwU.xnxx() end UwU = nil end
for i in ipairs({}) do local Cok = {} if not xs then else local Kntoll = {};local Cok = {} Cok.Kntoll = Cok.Kntoll() if Cok.Kntoll ~= Cok.Kntoll then Cok.Kntoll = Cok.Kntoll() end local Cok = {};local Asu = {} Cok.Asu = Cok.Asu() if Cok.Asu ~= Cok.Asu then Cok.Asu = Cok.Asu() end end end local AB = ']]..AB..[['
while(nil)do;local UwU = {} if(UwU.UwU)then;UwU.UwU=(UwU.UwU(UwU))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local UwU = {} UwU.hentai = UwU.xnxx() if UwU.xnxx ~= nil then UwU.hentai = UwU.xnxx() end UwU = nil end
for i in ipairs({}) do local Cok = {} if not xs then else local Kntoll = {};local Cok = {} Cok.Kntoll = Cok.Kntoll() if Cok.Kntoll ~= Cok.Kntoll then Cok.Kntoll = Cok.Kntoll() end local Cok = {};local Asu = {} Cok.Asu = Cok.Asu() if Cok.Asu ~= Cok.Asu then Cok.Asu = Cok.Asu() end end end
while(nil)do;local UwU = {} if(UwU.UwU)then;UwU.UwU=(UwU.UwU(UwU))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local UwU = {} UwU.hentai = UwU.xnxx() if UwU.xnxx ~= nil then UwU.hentai = UwU.xnxx() end UwU = nil end local AF = ']]..AF..[['
for i in ipairs({}) do local Cok = {} if not xs then else local Kntoll = {};local Cok = {} Cok.Kntoll = Cok.Kntoll() if Cok.Kntoll ~= Cok.Kntoll then Cok.Kntoll = Cok.Kntoll() end local Cok = {};local Asu = {} Cok.Asu = Cok.Asu() if Cok.Asu ~= Cok.Asu then Cok.Asu = Cok.Asu() end end end
while(nil)do;local UwU = {} if(UwU.UwU)then;UwU.UwU=(UwU.UwU(UwU))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local UwU = {} UwU.hentai = UwU.xnxx() if UwU.xnxx ~= nil then UwU.hentai = UwU.xnxx() end UwU = nil end
for i in ipairs({}) do local Cok = {} if not xs then else local Kntoll = {};local Cok = {} Cok.Kntoll = Cok.Kntoll() if Cok.Kntoll ~= Cok.Kntoll then Cok.Kntoll = Cok.Kntoll() end local Cok = {};local Asu = {} Cok.Asu = Cok.Asu() if Cok.Asu ~= Cok.Asu then Cok.Asu = Cok.Asu() end end end local AG = ']]..AG..[['
while(nil)do;local UwU = {} if(UwU.UwU)then;UwU.UwU=(UwU.UwU(UwU))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local UwU = {} UwU.hentai = UwU.xnxx() if UwU.xnxx ~= nil then UwU.hentai = UwU.xnxx() end UwU = nil end
for i in ipairs({}) do local Cok = {} if not xs then else local Kntoll = {};local Cok = {} Cok.Kntoll = Cok.Kntoll() if Cok.Kntoll ~= Cok.Kntoll then Cok.Kntoll = Cok.Kntoll() end local Cok = {};local Asu = {} Cok.Asu = Cok.Asu() if Cok.Asu ~= Cok.Asu then Cok.Asu = Cok.Asu() end end end
while(nil)do;local UwU = {} if(UwU.UwU)then;UwU.UwU=(UwU.UwU(UwU))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local UwU = {} UwU.hentai = UwU.xnxx() if UwU.xnxx ~= nil then UwU.hentai = UwU.xnxx() end UwU = nil end local AE = ']]..AE..[['
for i in ipairs({}) do local Cok = {} if not xs then else local Kntoll = {};local Cok = {} Cok.Kntoll = Cok.Kntoll() if Cok.Kntoll ~= Cok.Kntoll then Cok.Kntoll = Cok.Kntoll() end local Cok = {};local Asu = {} Cok.Asu = Cok.Asu() if Cok.Asu ~= Cok.Asu then Cok.Asu = Cok.Asu() end end end
while(nil)do;local UwU = {} if(UwU.UwU)then;UwU.UwU=(UwU.UwU(UwU))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local UwU = {} UwU.hentai = UwU.xnxx() if UwU.xnxx ~= nil then UwU.hentai = UwU.xnxx() end UwU = nil end;local i = ']]..KEY3..[[';local AC = ']]..AC..[[';local AD = ']]..AD..[[';local Arp = ']]..Arp..[[';local key = {(AB+AC*AD-AE+AF*AB)-AE,AC-10*AB,AD*2-AB,AE+AD,AF*AD};local Kunci2 = {(AB+AC*AD*AB)-AC-1*AB,AD*2-AB,AE-AD,AF*AD-190,AC+AB*12};local KY3 = {key[4]*key[3]+Arp-Kunci2[1]};local KY1 = {(key[1]+Kunci2[3]+key[4]*key[2])-Kunci2[4]};local KY2 = {(Kunci2[5]+key[4]*7)-Kunci2[2]};local inv256
while(nil)do;local UwU = {} if(UwU.UwU)then;UwU.UwU=(UwU.UwU(UwU))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local UwU = {} UwU.hentai = UwU.xnxx() if UwU.xnxx ~= nil then UwU.hentai = UwU.xnxx() end UwU = nil end;local i = ']]..KEY4..[[';function XxX.H4X(str)while(nil)do;local UwU = {} if(UwU.UwU)then;UwU.UwU=(UwU.UwU(UwU))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local UwU = {} UwU.hentai = UwU.xnxx() if UwU.xnxx ~= nil then UwU.hentai = UwU.xnxx() end UwU = nil end local K = KY1[1] - AG * KY3[1];]]..tempstr(math.random(200,500))..[[;local F = AB + AG - KY2[1] while(nil)do;local UwU = {} if(UwU.UwU)then;UwU.UwU=(UwU.UwU(UwU))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local UwU = {} UwU.hentai = UwU.xnxx() if UwU.xnxx ~= nil then UwU.hentai = UwU.xnxx() end UwU = nil end return (str:gsub("%x%x", function(c) local L = AB + K * KY1[1] + 1010101011 % KY3[1] local H = (K * L + KY2[1]) / KY3[1] local M = H % 27 c = tonumber(c, 16) local m = (c + (H + M) / 27) * (2*M + 1) % 256 K = L * F + F - AD * F - m return string.char(m)end))end
for i in ipairs({}) do local Cok = {} if not xs then else local Kntoll = {};local Cok = {} Cok.Kntoll = Cok.Kntoll() if Cok.Kntoll ~= Cok.Kntoll then Cok.Kntoll = Cok.Kntoll() end local Cok = {};local Asu = {} Cok.Asu = Cok.Asu() if Cok.Asu ~= Cok.Asu then Cok.Asu = Cok.Asu() end end end
while(nil)do;local UwU = {} if(UwU.UwU)then;UwU.UwU=(UwU.UwU(UwU))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local UwU = {} UwU.hentai = UwU.xnxx() if UwU.xnxx ~= nil then UwU.hentai = UwU.xnxx() end UwU = nil end
for i in ipairs({}) do local Cok = {} if not xs then else local Kntoll = {};local Cok = {} Cok.Kntoll = Cok.Kntoll() if Cok.Kntoll ~= Cok.Kntoll then Cok.Kntoll = Cok.Kntoll() end local Cok = {};local Asu = {} Cok.Asu = Cok.Asu() if Cok.Asu ~= Cok.Asu then Cok.Asu = Cok.Asu() end end end
while(nil)do;local UwU = {} if(UwU.UwU)then;UwU.UwU=(UwU.UwU(UwU))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local UwU = {} UwU.hentai = UwU.xnxx() if UwU.xnxx ~= nil then UwU.hentai = UwU.xnxx() end UwU = nil end
for i in ipairs({}) do local Cok = {} if not xs then else local Kntoll = {};local Cok = {} Cok.Kntoll = Cok.Kntoll() if Cok.Kntoll ~= Cok.Kntoll then Cok.Kntoll = Cok.Kntoll() end local Cok = {};local Asu = {} Cok.Asu = Cok.Asu() if Cok.Asu ~= Cok.Asu then Cok.Asu = Cok.Asu() end end end
while(nil)do;local UwU = {} if(UwU.UwU)then;UwU.UwU=(UwU.UwU(UwU))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local UwU = {} UwU.hentai = UwU.xnxx() if UwU.xnxx ~= nil then UwU.hentai = UwU.xnxx() end UwU = nil end
for i in ipairs({}) do local Cok = {} if not xs then else local Kntoll = {};local Cok = {} Cok.Kntoll = Cok.Kntoll() if Cok.Kntoll ~= Cok.Kntoll then Cok.Kntoll = Cok.Kntoll() end local Cok = {};local Asu = {} Cok.Asu = Cok.Asu() if Cok.Asu ~= Cok.Asu then Cok.Asu = Cok.Asu() end end end
while(nil)do;local UwU = {} if(UwU.UwU)then;UwU.UwU=(UwU.UwU(UwU))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local UwU = {} UwU.hentai = UwU.xnxx() if UwU.xnxx ~= nil then UwU.hentai = UwU.xnxx() end UwU = nil end
for i in ipairs({}) do local Cok = {} if not xs then else local Kntoll = {};local Cok = {} Cok.Kntoll = Cok.Kntoll() if Cok.Kntoll ~= Cok.Kntoll then Cok.Kntoll = Cok.Kntoll() end local Cok = {};local Asu = {} Cok.Asu = Cok.Asu() if Cok.Asu ~= Cok.Asu then Cok.Asu = Cok.Asu() end end end
while(nil)do;local UwU = {} if(UwU.UwU)then;UwU.UwU=(UwU.UwU(UwU))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local UwU = {} UwU.hentai = UwU.xnxx() if UwU.xnxx ~= nil then UwU.hentai = UwU.xnxx() end UwU = nil end
for i in ipairs({}) do local Cok = {} if not xs then else local Kntoll = {};local Cok = {} Cok.Kntoll = Cok.Kntoll() if Cok.Kntoll ~= Cok.Kntoll then Cok.Kntoll = Cok.Kntoll() end local Cok = {};local Asu = {} Cok.Asu = Cok.Asu() if Cok.Asu ~= Cok.Asu then Cok.Asu = Cok.Asu() end end end
while(nil)do;local UwU = {} if(UwU.UwU)then;UwU.UwU=(UwU.UwU(UwU))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local UwU = {} UwU.hentai = UwU.xnxx() if UwU.xnxx ~= nil then UwU.hentai = UwU.xnxx() end UwU = nil end
for i in ipairs({}) do local Cok = {} if not xs then else local Kntoll = {};local Cok = {} Cok.Kntoll = Cok.Kntoll() if Cok.Kntoll ~= Cok.Kntoll then Cok.Kntoll = Cok.Kntoll() end local Cok = {};local Asu = {} Cok.Asu = Cok.Asu() if Cok.Asu ~= Cok.Asu then Cok.Asu = Cok.Asu() end end end
]]
gg.toast("⏳ 90% Please Wait..")
io.output(xnxx.out.."_WolF.lua", "w")
io.write([[
local JancokLu = "['🛡️Encryption By NizxMoon Gaming v4.3🛡️']"

]]..DECOD3..DATA)
file = io.open(xnxx.out.."_WolF.lua", "r")
DATS = file:read("*a")
file:close()
gg.toast("Checking Script....")
if not load(DATS) then
os.remove(xnxx.out.."_WolF.lua")
return gg.alert("⚠️ Script Can't be Encrypted !")
else
local CstHdr = xnxx.info[8]
file = io.open(xnxx.out, "w")
file:write(string.dump(loadfile(xnxx.out.."_WolF.lua"), true))
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
io.input(xnxx.out)
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
file = io.open(xnxx.out, "w")
file:write(Script..[[


                                    🛡️ SerdaduGaminG 🛡️

                     🛡Encryption By NizxMoon Gaming🛡
                 [' You Can Buy From : t.me/SerdaduGaminG ']

]])
file:close()
os.remove(xnxx.out.."_WolF.lua")
gg.toast("⏳ 100% Succes Encrypted✔")
gg.setVisible(true)
print("📍Custom Lua Header : "..xnxx.info[8])
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

