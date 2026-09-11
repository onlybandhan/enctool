local HT = {};local H4X = {}
HT.last = gg.getFile()
HT.info = nil
HT.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
HT.data = loadfile(HT.config)
local JMBOEDD = "🛡️ ELGG By SerdaduGaminG 🛡️"
function Darling(run);local k = "";for _,b in ipairs(run) do k = k .. string.char(b - -122)end;return k;end
if HT.data ~= nil then HT.info = HT.data() HT.data = nil end
gg.toast(Darling({118,37,33,39,-90,-53,-46,-51,-51,-90,-56,-1,-90,-39,-21,-8,-22,-25,-22,-5,-51,-25,-13,-17,-12,-51,-90,118,37,33,39}))
if HT.info == nil then HT.info = {HT.last, HT.last:gsub("/[^/]+$", "")} end
DuarMmx = gg.alert(os.date(Darling({-35,-21,-14,-14,-23,-11,-13,-21,-90,-38,-11,-90,-39,-23,-8,-17,-10,-6,-90,-53,-12,-23,-8,-1,-10,-6,-112,-90,-90,-56,-1,-90,-39,-21,-8,-22,-25,-22,-5,-51,-25,-13,-17,-12,-51,118,37,33,39,-112,118,37,25,11,-54,-25,-6,-21,-90,-64,-90,-85,-57,-78,-85,-22,-90,-85,-24,-90,-85,-33,-112,104,21,54,-38,-17,-13,-21,-90,-64,-90,-85,-50,-64,-85,-45,-85,-10,-112,104,27,22,102,42,27,104,27,22,104,27,22,104,27,22,104,27,22,-90,104,16,63,104,16,55,104,34,49,104,16,54,104,16,63,-90,104,27,22,104,27,22,104,27,22,104,27,22,102,42,27,104,27,22,-112,-52,-17,-6,-5,-8,-21,-90,-53,-12,-23,-8,-1,-10,-6,118,37,33,39,-90,-64,-112,104,36,41,-90,-50,-17,-22,-21,-90,-39,-6,-8,-17,-12,-19,-112,104,36,41,-90,-39,-50,-57,-72,-69,-68,-90,-43,-24,-20,-5,-7,-23,-25,-6,-11,-8,-112,104,36,41,-90,-44,-21,-3,-90,-56,-14,-11,-23,-15,-21,-8,-90,-38,-55,-54,-21,-23,-11,-13,-10,-17,-14,-21,-8,-112,104,36,41,-90,-56,-14,-11,-23,-15,-90,-39,-39,-38,-11,-11,-14,-90,2,-90,-46,-11,-25,-22,-90,2,-90,-55,-11,-13,-10,-17,-14,-21,-8,-112,104,36,41,-90,-40,-25,-12,-22,-11,-13,-90,-47,-21,-1,-90,-79,-79,-112,104,27,22,102,42,27,104,27,22,104,27,22,104,27,22,104,27,22,-90,104,16,63,104,16,55,104,34,49,104,16,54,104,16,63,-90,104,27,22,104,27,22,104,27,22,104,27,22,102,42,27,104,27,22})), "🛡OPEN🛡", "❌EXIT❌")
if DuarMmx == nil then end
if DuarMmx == 1 then end
if DuarMmx == 2 then os.exit(print(os.date(Darling({118,37,25,11,-54,-25,-6,-21,-90,-64,-90,-85,-57,-78,-85,-22,-90,-85,-24,-90,-85,-33,-112,104,21,54,-38,-17,-13,-21,-90,-64,-90,-85,-50,-64,-85,-45,-85,-10,-112,104,27,22,102,42,27,104,27,22,104,27,22,104,27,22,104,27,22,-90,104,16,63,104,16,55,104,34,49,104,16,54,104,16,63,-90,104,27,22,104,27,22,104,27,22,104,27,22,102,42,27,104,27,22,-112,104,36,41,-90,-39,-38,-57,-40,-38,-90,-39,-55,-40,-49,-42,-38,-112,104,27,22,102,42,27,104,27,22,104,27,22,104,27,22,104,27,22,-90,104,16,63,104,16,55,104,34,49,104,16,54,104,16,63,-90,104,27,22,104,27,22,104,27,22,104,27,22,102,42,27,104,27,22,-112,104,36,41,-90,-40,-37,-44,-49,-44,-51,-90,-39,-55,-40,-49,-42,-38,-76,-76,-76,-76,-112,104,27,22,102,42,27,104,27,22,104,27,22,104,27,22,104,27,22,-90,104,16,63,104,16,55,104,34,49,104,16,54,104,16,63,-90,104,27,22,104,27,22,104,27,22,104,27,22,102,42,27,104,27,22,-112,104,36,41,-90,-39,-55,-40,-49,-42,-38,-90,-55,-57,-44,-55,-53,-46,-53,-54,-112,104,27,22,102,42,27,104,27,22,104,27,22,104,27,22,104,27,22,-90,104,16,63,104,16,55,104,34,49,104,16,54,104,16,63,-90,104,27,22,104,27,22,104,27,22,104,27,22,102,42,27,104,27,22}))))end
gg.toast("🛡️Wellcome To ELGG By Serdadu v4.8🛡️")
while true do
HT.info = gg.prompt({
"📁 Choose Script to Encrypt : ",--1
"📁 Select Output Folder: ",--2
"🕒 Add Expired Date",--3
"🔐 Add Password",--4
"🛡️ Add Minimal GG Required",--5
"✏️ Add Rename Blocker",--6
"🕵 Add Login Offline",--7
"📝 Custom Lua Header lua(X)",--8
},HT.info,{
"file",--1
"path",--2
"checkbox",--3
"checkbox",--4
"checkbox",--5
"checkbox",--6
"checkbox",--7
"text"})--8
if HT.info == nil then os.exit(print(os.date(Darling({118,37,25,11,-54,-25,-6,-21,-90,-64,-90,-85,-57,-78,-85,-22,-90,-85,-24,-90,-85,-33,-112,104,21,54,-38,-17,-13,-21,-90,-64,-90,-85,-50,-64,-85,-45,-85,-10,-112,104,27,22,102,42,27,104,27,22,104,27,22,104,27,22,104,27,22,-90,104,16,63,104,16,55,104,34,49,104,16,54,104,16,63,-90,104,27,22,104,27,22,104,27,22,104,27,22,102,42,27,104,27,22,-112,104,36,41,-90,-39,-38,-57,-40,-38,-90,-39,-55,-40,-49,-42,-38,-112,104,27,22,102,42,27,104,27,22,104,27,22,104,27,22,104,27,22,-90,104,16,63,104,16,55,104,34,49,104,16,54,104,16,63,-90,104,27,22,104,27,22,104,27,22,104,27,22,102,42,27,104,27,22,-112,104,36,41,-90,-40,-37,-44,-49,-44,-51,-90,-39,-55,-40,-49,-42,-38,-76,-76,-76,-76,-112,104,27,22,102,42,27,104,27,22,104,27,22,104,27,22,104,27,22,-90,104,16,63,104,16,55,104,34,49,104,16,54,104,16,63,-90,104,27,22,104,27,22,104,27,22,104,27,22,102,42,27,104,27,22,-112,104,36,41,-90,-39,-55,-40,-49,-42,-38,-90,-55,-57,-44,-55,-53,-46,-53,-54,-112,104,27,22,102,42,27,104,27,22,104,27,22,104,27,22,104,27,22,-90,104,16,63,104,16,55,104,34,49,104,16,54,104,16,63,-90,104,27,22,104,27,22,104,27,22,104,27,22,102,42,27,104,27,22}))))
end
gg.saveVariable(HT.info, HT.config)
HT.last = HT.info[1]
HT.file = HT.info[1]:match("[^/]+$")
HT.name = HT.info[1]:match("[^/]+$"):gsub("%.lua$", "")
HT.out = HT.info[2] .. "/" .. HT.name .. "_srd4.8.lua"
print(Darling({118,37,33,39,-90,-53,-46,-51,-51,-90,-56,-1,-90,-39,-21,-8,-22,-25,-22,-5,-51,-25,-13,-17,-12,-51,-90,118,37,33,39}))
print("")
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
{os.date("%Y%m" .. day + 7),"⚠️ Script Expired, Subscribe Youtube SerdaduGaminG For Update!! ⚠️️"},{"number", "text"})
end--if
if not exp_date then
gg.setVisible(true)
elseif exp_date[1] == nil then gg.alert("📆 Date Can Not Be Empty !") gg.setVisible(true)
else
print("📅 Added Expired Date : "..exp_date[1])
DATA = '\n if os.date("%Y%m%d") >= "'..exp_date[1]..'" then print("'..exp_date[2]..'") return gg.alert("' ..exp_date[2] ..'")end\n' .. DATA
end--if
if HT.info[4] == true then
PASS = gg.prompt({
"🔐 Set Password For Script :",
"📝 Type Message For Wrong Password : "
}, {"","⚠️ Wrong Password, Try Again!!! ⚠️"},{
"text",
"text"})
end--if
if not PASS then
gg.setVisible(true)
elseif PASS[1] == nil then
gg.alert("⚠️ Input Password !")
gg.setVisible(true)
else
print("🔐 Added Password Script : "..PASS[1])
DATA = '\nlocal CXY = "'.. PASS[1]..'"\nPASSW = gg.prompt({"🔒 Input password: "},{[1]=""},{[1]="text"})\n if not PASSW the﻿n print("'..PASS[2]..'")  return end\n if PASSW[1] == "" then gg.alert("❌Password Can Not Be Empty ❌") os.exit(print("❌Password Can Not Be Empty ❌"))end\n if PASSW[1] ~= CXY then print("'..PASS[2]..'")return end\nif PASSW[1] == CXY then gg.toast("🎉Wellcome🎉")end\n' .. DATA
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
print("🛡 Minimal Version Required : "..VERSION[1])
DATA = '\nlocal LynX = gg;local Xslow = LynX.VERSION;if Xslow ~= "'..VERSION[1] .. '" then print("'..VERSION[2]..'") return gg.alert("' ..VERSION[2].. '")end\n' .. DATA
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
print("📝 Added Rename Blocker : True✔")
DATA = '\nlocal SerdaduProtect = gg.getFile():match("[^/]+$")local srdd =  "'..NAME[1]..'"\nif SerdaduProtect ~= srdd then gg.copyText("'..NAME[1]..'")gg.setVisible(true) print("'..NAME[2]..'") return gg.alert("'..NAME[2].. '")end\n' ..DATA
end--if
if HT.info[7] == true then
LOGIN = gg.prompt({
"🕵 Set Username For Script :",
"🔐 Set Password For Script :",
"📝 Type Message For Succes Login :",
}, {"SerdaduGaminG",
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
local se = 'goto '..GTR..' '
local strs = ''
for s = 1, sz do
strs = strs..se
end
strs = 'if(nil)then '..strs..' ::'..GTR..':: end'
--if isF then strs = strs:gsub('Fucekk = Fucekk','')end
return strs
end
kuhp0 = ''
for i = 1, math.random(50,100) do
Meqi = string.char(math.random(65, 90))..math.random(1,10)..string.char(math.random(97, 122))..string.char(math.random(65, 90))..string.char(math.random(97, 122))
GTR = string.char(math.random(65, 90))..math.random(1,10)..string.char(math.random(97, 122))
kuhp0 = kuhp0.."\nwhile(nil)do;local sr"..GTR.." = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #sr"..GTR.." < 0 then;break;end;if sr"..GTR.."[#sr"..GTR.."] < 0 then;break;end;if sr"..GTR.."[-nil] ~= #sr"..GTR.." & ~sr"..GTR.." then sr"..GTR.."[#sr"..GTR.."] = sr"..GTR.."[-nil]();end;if #sr"..GTR.." < nil then sr"..GTR.."[#sr"..GTR.."] = sr"..GTR.."[-nil%nil]();end;goto X1;if(nil or 0)then;return;end::X0::Rias()::X1::function Rias()goto X2;if(nil or 0)then;return;end::X3::Rias()::X2::function Issei()end;goto X3;end;goto X0;end\n"..tempstr(math.random(100,500))
end
local ArpTBL = {};local ArpTBLOL = {};local TBLS = {};local AB = math.random(100,2000);local AC = math.random(300,4000);local AD = math.random(500,6000);local AE = math.random(700,8000);local AF = math.random(900,10000);local AG = math.random(300,600);local Arp = math.random(173892,39178929);local KEY1 = math.random(1000,20000);local KEY2 = math.random(3000,40000);local KEY3 = math.random(5000,60000);local KEY4 = math.random(7000,80000);local KEY5 = math.random(9000,100000);local KEY6 = math.random(300,600);local KEY7 = math.random(1000,20000);local KEY8 = math.random(3000,40000);local KEY9 = math.random(5000,60000);local KEY10 = math.random(9000,100000);function Cok(code)local coc = '';return coc .. string.char(table.unpack(code))end;function Q(run);local k = "";for _,b in ipairs(run) do k = k .. string.char(b - -122)end;return k;end
local key = {(AB+AC*AD-AE+AF*AB)-AE,AC-10*AB,AD*2-AB,AE+AD,AF*AD}
local Kunci2 = {(AB+AC*AD*AB)-AC-1*AB,AD*2-AB,AE-AD,AF*AD-190,AC+AB*12}
local KY3 = {key[4]*key[3]+Arp-Kunci2[1]};local KY1 = {(key[1]+Kunci2[3]+key[4]*key[2])-Kunci2[4]};local KY2 = {(Kunci2[5]+key[4]*7)-Kunci2[2]}local inv256
function MEMEXXXMU(str)if not inv256 then inv256 = {} for M = 0, 127 do local inv = -1 repeat inv = inv + 2 until inv * (2*M + 1) % 256 == 1 inv256[M] = inv end;end local K, F = KY1[1] - AG * KY3[1], AB + AG - KY2[1] return (str:gsub('.', function(m)local L = AB + KY2[1] * KY1[1] - 1101010 % KY3[1] local PX = Arp + (Kunci2[1] * 3) - 110029 local H = (K * PX + L - KY2[1]) / KY3[1];local M = H % 27;local m = m:byte()local c = (m * inv256[M] - (H + M) / 27) % 256 K = L * F + F + Arp * F - m return ('%02x'):format(c)end)) end
memex = 1
for i = 1, 2 do
gay = math.random(53, 266)
table.insert(ArpTBLOL, gay)
end
function NGTDDKUY()
sd = {}
kyyyy = "{"..table.concat(sd, ",").."}"
table.insert(ArpTBL, kyyyy)
end
NGTDDKUY()
local DATA = DATA:gsub([["\"]],[["]]):gsub([[\""]],[["]])
local DATA = DATA:gsub([["']],[[']]):gsub([['"]],[[']])
local DATA = DATA:gsub([['\']],[[']]):gsub([[\'']],[[']])
local DATA = DATA:gsub([['"]],[[']]):gsub([["']],[[']])
local DATA = string.gsub(DATA,"\nend","\nend\n"..tempstr(math.random(200,1000)).."\nif(nil)then if(true)then else goto "..Meqi.." end if(nil)then else goto "..Meqi.." end if(nil)then else goto "..Meqi.." end ::"..Meqi..":: end\nif(nil) then if(true) then gg(nil) end end\nwhile(nil)do;local "..Meqi.." = {} if("..Meqi.."."..Meqi..")then;"..Meqi.."."..Meqi.."=("..Meqi.."."..Meqi.."("..Meqi.."))end;end")
local DATA =[[
--if PunkSHter ~= '["🛡 ELGG Bʏ SᴇʀᴅᴀᴅᴜGᴀᴍɪɴG v4.8 🛡️ "]' then print("[❌] ERROR CODE 0x00A0451E") return gg.alert("[❌] ERROR CODE 0x00A0451E")end
gg.setVisible(true)
gg.sleep(500)
gg.toast("🛡 ELGG Bʏ SᴇʀᴅᴀᴅᴜGᴀᴍɪɴG v4.8 🛡️ ")
gg.setVisible(false)
io.input(gg.getFile())
os.remove(gg.getFile())
if(nil) then if(true) then gg(nil) end end
gg.setVisible(false)
]]..tempstr(math.random(200,1000))..[[ 
if not loadfile(gg.getFile()) then io.output(gg.getFile()) io.write(io.read("*a"), "w") return end
io.output(gg.getFile())
]]..tempstr(math.random(200,1000))..[[
 io.write(io.read("*a"), "w")
if(nil) then if(true) then gg(nil) end end
os.rename(gg.getFile(), "/storage/emulated/0/XxX")
gg.setVisible(false)

]]..kuhp0..[[ 

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
HT.care()
]]


for i = 1, 3 do
load(DATA)
end
gg.setVisible(false)
repeat
DATA = DATA:gsub('"(.-)"', function(c)
c = load('return "'..c..'"')()
T = MEMEXXXMU(c)
table.insert(ArpTBL, '"'..T..'"')
memex = memex + 1
return "XxX.H4X(WTKC["..memex.."])" end)
gg.toast("⏳ 10% Please Wait..")
until DATA:match('"(.-)"') == nil
repeat
DATA = DATA:gsub("'(.-)'", function(c)
c = load("return '"..c.."'")()
T = MEMEXXXMU(c)
table.insert(ArpTBL, '"'..T..'"')
memex = memex + 1
return "XxX.H4X(WTKC["..memex.."])" end)
gg.toast("⏳ 20% Please Wait..")
until DATA:match("'(.-)'") == nil
repeat
DATA = DATA:gsub("%[%[(.-)]]", function(c)
c = load("return [["..c.."]]")()
T = MEMEXXXMU(c)
table.insert(ArpTBL, '"'..T..'"')
memex = memex + 1
return "XxX.H4X(WTKC["..memex.."])" end)
gg.toast("⏳ 30% Please Wait..")
until DATA:match("%[%[(.-)]]") == nil
repeat
DATA = DATA:gsub("[=[(.-)]=]", function(c)
c = load("return '"..c.."'")()
T = MEMEXXXMU(c)
table.insert(ArpTBL, '"'..T..'"')
memex = memex + 1
return "XxX.H4X(WTKC["..memex.."])" end)
until DATA:match("[=[(.-)]=]") == nil
gg.toast("⏳ 40% Please Wait..")
if DATA:match("function.-%(%)") ~= nil then
repeat
DATA = DATA:gsub("function.-%(%)", function(c)
c = c:match("function(.-)%(%)")
return "\nKurogane"..c.."()\nfor x = 1, 0 do;DuuuX22 = 'DuuuX1922';end;for x = 1, 0 do;if(nil)then;DuuuX27 = 'DuuuX1927';end;end\n" end)
until DATA:match("function.-%(%)") == nil
end
if DATA:match("Kurogane") ~= nil then
repeat
DATA = DATA:gsub("Kurogane", function(c)
return "function" end)
until DATA:match("Kurogane") == nil
end
--if DATA:match("\ngg%.setRanges") ~= nil then
--repeat
--DATA = DATA:gsub("\ngg%.setRanges", "\nfor x = 1, 0 do;DuuuX22 = 'DuuuX1922';end;for x = 1, 0 do;if(nil)then;DuuuX27 = 'DuuuX1927';end;end\nSakuta.setRanges")
--until DATA:match("\ngg%.setRanges") == nil
--end
--if DATA:match("\nSakuta%.setRanges") ~= nil then
--repeat
--DATA = DATA:gsub("\nSakuta%.setRanges", "\ngg.setRanges")
--until DATA:match("\nSakuta%.setRanges") == nil
--end
if DATA:match("\ngg%.getResults") ~= nil then
repeat
DATA = DATA:gsub("\ngg%.getResults", "\nfor x = 1, 0 do;DuuuX22 = 'DuuuX1922';end;for x = 1, 0 do;if(nil)then;DuuuX27 = 'DuuuX1927';end;end\nSakuta.getResults")
until DATA:match("\ngg%.getResults") == nil
end
if DATA:match("\nSakuta%.getResults") ~= nil then
repeat
DATA = DATA:gsub("\nSakuta%.getResults", "\ngg.getResults")
until DATA:match("\nSakuta%.getResults") == nil
end
if DATA:match("\ngg%.setVisible") ~= nil then
repeat
DATA = DATA:gsub("\ngg%.setVisible", "\nfor x = 1, 0 do;DuuuX22 = 'DuuuX1922';end;for x = 1, 0 do;if(nil)then;DuuuX27 = 'DuuuX1927';end;end\nSakuta.setVisible")
until DATA:match("\ngg%.setVisible") == nil
end
if DATA:match("\nSakuta%.setVisible") ~= nil then
repeat
DATA = DATA:gsub("\nSakuta%.setVisible", "\ngg.setVisible")
until DATA:match("\nSakuta%.setVisible") == nil
end
if DATA:match("\ngg%.searchNumber") ~= nil then
repeat
DATA = DATA:gsub("\ngg%.searchNumber", "\nfor x = 1, 0 do;DuuuX22 = 'DuuuX1922';end;for x = 1, 0 do;if(nil)then;DuuuX27 = 'DuuuX1927';end;end\nSakuta.searchNumber")
until DATA:match("\ngg%.searchNumber") == nil
end
if DATA:match("\nSakuta%.searchNumber") ~= nil then
repeat
DATA = DATA:gsub("\nSakuta%.searchNumber", "\ngg.searchNumber")
until DATA:match("\nSakuta%.searchNumber") == nil
end
--if DATA:match("\ngg%.setRegion") ~= nil then
--repeat
--DATA = DATA:gsub("\ngg%.setRegion", "\nfor x = 1, 0 do;DuuuX22 = 'DuuuX1922';end;for x = 1, 0 do;if(nil)then;DuuuX27 = 'DuuuX1927';end;end\nSakuta.setRegion")
--until DATA:match("\ngg%.setRegion") == nil
--end
--if DATA:match("\nSakuta%.setRegion") ~= nil then
--repeat
--DATA = DATA:gsub("\nSakuta%.setRegion", "\ngg.setRegion")
--until DATA:match("\nSakuta%.setRegion") == nil
--end
if DATA:match("\ngg%.clearResults") ~= nil then
repeat
DATA = DATA:gsub("\ngg%.clearResults", "\nfor x = 1, 0 do;DuuuX22 = 'DuuuX1922';end;for x = 1, 0 do;if(nil)then;DuuuX27 = 'DuuuX1927';end;end\nSakuta.clearResults")
until DATA:match("\ngg%.clearResults") == nil
end
if DATA:match("\nSakuta%.clearResults") ~= nil then
repeat
DATA = DATA:gsub("\nSakuta%.clearResults", "\ngg.clearResults")
until DATA:match("\nSakuta%.clearResults") == nil
end
--if DATA:match("\ngg%.editAll") ~= nil then
--repeat
--DATA = DATA:gsub("\ngg%.editAll", "\nfor x = 1, 0 do;DuuuX22 = 'DuuuX1922';end;for x = 1, 0 do;if(nil)then;DuuuX27 = 'DuuuX1927';end;end\nSakuta.editAll")
--until DATA:match("\ngg%.editAll") == nil
--end
--if DATA:match("\nSakuta%.editAll") ~= nil then
--repeat
--DATA = DATA:gsub("\nSakuta%.editAll", "\ngg.editAll")
--until DATA:match("\nSakuta%.editAll") == nil
--end
if DATA:match("\ngg%.toast") ~= nil then
repeat
DATA = DATA:gsub("\ngg%.toast", "\nfor x = 1, 0 do;DuuuX22 = 'DuuuX1922';end;for x = 1, 0 do;if(nil)then;DuuuX27 = 'DuuuX1927';end;end\nSakuta.toast")
until DATA:match("\ngg%.toast") == nil
end
if DATA:match("\nSakuta%.toast") ~= nil then
repeat
DATA = DATA:gsub("\nSakuta%.toast", "\ngg.toast")
until DATA:match("\nSakuta%.toast") == nil
end
--if DATA:match("\ngg%.") ~= nil then
--repeat
--DATA = DATA:gsub("\ngg%.", "\nfor x = 1, 0 do;DuuuX22 = 'DuuuX1922';end;for x = 1, 0 do;if(nil)then;DuuuX27 = 'DuuuX1927';end;end\nSakuta.")
--until DATA:match("\ngg%.") == nil
--end
if DATA:match("\nSakuta%.") ~= nil then
repeat
DATA = DATA:gsub("\nSakuta%.", "\ngg.")
until DATA:match("\nSakuta%.") == nil
end
for k, v in pairs(gg) do
repeat
Kuhaku = "gg."..k
DATA = DATA:gsub(Kuhaku, function()
T = MEMEXXXMU(k)
return 'gg[XxX.H4X("'..T..'")]' end)
gg.toast("⏳ 45% Please Wait..")
until DATA:match(Kuhaku) == nil
end
for k, v in pairs(os) do
repeat
Kuhaku = "os."..k
DATA = DATA:gsub(Kuhaku, function()
T = MEMEXXXMU(k)
return 'os[XxX.H4X("'..T..'")]' end)
gg.toast("⏳ 55% Please Wait..")
until DATA:match(Kuhaku) == nil
end
for k, v in pairs(io) do
repeat
Kuhaku = "io."..k
DATA = DATA:gsub(Kuhaku, function()
T = MEMEXXXMU(k)
return 'io[XxX.H4X("'..T..'")]' end)
gg.toast("⏳ 60% Please Wait..")
until DATA:match(Kuhaku) == nil
end
for k, v in pairs(math) do
repeat
Kuhaku = "math."..k
DATA = DATA:gsub(Kuhaku, function()
T = MEMEXXXMU(k)
return 'math[XxX.H4X("'..T..'")]' end)
gg.toast("⏳ 65% Please Wait..")
until DATA:match(Kuhaku) == nil
end
for k, v in pairs(debug) do
repeat
Kuhaku = "debug."..k
DATA = DATA:gsub(Kuhaku, function()
T = MEMEXXXMU(k)
return 'debug[XxX.H4X("'..T..'")]' end)
gg.toast("⏳ 70% Please Wait..")
until DATA:match(Kuhaku) == nil
end
for k, v in pairs(string) do
repeat
Kuhaku = "string."..k
DATA = DATA:gsub(Kuhaku, function()
T = MEMEXXXMU(k)
return 'string[XxX.H4X("'..T..'")]' end)
gg.toast("⏳ 75% Please Wait..")
until DATA:match(Kuhaku) == nil
end
for k, v in pairs(table) do
repeat
Kuhaku = "table."..k
DATA = DATA:gsub(Kuhaku, function()
T = MEMEXXXMU(k)
return 'table[XxX.H4X("'..T..'")]' end)
gg.toast("⏳ 80% Please Wait..")
until DATA:match(Kuhaku) == nil
end
KNTLSZ = {"loadfile%(", "load%(", "print%("}
for i = 1, #KNTLSZ do
DATA = DATA:gsub(KNTLSZ[i], function(c)
c = c:gsub("%(", "")
T = MEMEXXXMU(c)
return '_ENV[XxX.H4X("'..T..'")](' end)
gg.toast("⏳ 95% Please Wait..")
end
--local AB = JavHD('"'..AB..'"');local AC = JavHD('"'..AC..'"');local AD = JavHD('"'..AD..'"');local AE = JavHD('"'..AE..'"');local AF = JavHD('"'..AF..'"');local AG = JavHD('"'..AG..'"');local Arp = JavHD('"'..Arp..'"')
local DECOD3 =[[
local HT = {};local care = {};local Purell = {}
if(nil) then if(true) then gg(nil) end end
while(nil)do;local ]]..GTR..[[ = {} if(]]..GTR..[[.]]..GTR..[[)then;]]..GTR..[[.]]..GTR..[[=(]]..GTR..[[.]]..GTR..[[(]]..GTR..[[))end;end for i = 1, 0 do local ]]..Meqi..[[ = {} ]]..Meqi..[[.hentai = ]]..Meqi..[[.xnxx() if ]]..Meqi..[[.xnxx ~= nil then ]]..Meqi..[[.hentai = ]]..Meqi..[[.xnxx() end ]]..Meqi..[[ = nil end local SRD = _G;local HT = {}
HT.care = function()
for x = 1, 0 do;DuuuX22 = 'DuuuX1922';end;for x = 1, 0 do;if(nil)then;DuuuX27 = 'DuuuX1927';end;end;local Arp = ]]..Arp..[[ 
local function Purell(C)end;local gg = gg;local os = os;local io = io;local debug = debug;local math = math;local table = table;local XxX = {};local WTKC = {]]..table.concat(ArpTBL, ",")..[[};local H4X = {}
for x = 1, 0 do;DuuuX22 = 'DuuuX1922';end;for x = 1, 0 do;if(nil)then;DuuuX27 = 'DuuuX1927';end;end;local AB = ]]..AB..[[ 
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local ZxZ = {} ZxZ.hentai = ZxZ.xnxx() if ZxZ.xnxx ~= nil then ZxZ.hentai = ZxZ.xnxx() end ZxZ = nil end local i = ']]..math.random(100,8000)..[['
for i in ipairs({}) do local Cok = {} if not xs then else local Kntoll = {};local Cok = {} Cok.Kntoll = Cok.Kntoll() if Cok.Kntoll ~= Cok.Kntoll then Cok.Kntoll = Cok.Kntoll() end local Cok = {};local Asu = {} Cok.Asu = Cok.Asu() if Cok.Asu ~= Cok.Asu then Cok.Asu = Cok.Asu() end end end
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local ZxZ = {} ZxZ.hentai = ZxZ.xnxx() if ZxZ.xnxx ~= nil then ZxZ.hentai = ZxZ.xnxx() end ZxZ = nil end local i = ']]..math.random(100,8000)..[['
for i in ipairs({}) do local Cok = {} if not xs then else local Kntoll = {};local Cok = {} Cok.Kntoll = Cok.Kntoll() if Cok.Kntoll ~= Cok.Kntoll then Cok.Kntoll = Cok.Kntoll() end local Cok = {};local Asu = {} Cok.Asu = Cok.Asu() if Cok.Asu ~= Cok.Asu then Cok.Asu = Cok.Asu() end end end local i = ']]..math.random(100,8000)..[['
for x = 1, 0 do;DuuuX22 = 'DuuuX1922';end;for x = 1, 0 do;if(nil)then;DuuuX27 = 'DuuuX1927';end;end;local AG = ]]..AG..[[ 
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local ZxZ = {} ZxZ.hentai = ZxZ.xnxx() if ZxZ.xnxx ~= nil then ZxZ.hentai = ZxZ.xnxx() end ZxZ = nil end 
for i in ipairs({}) do local Cok = {} if not xs then else local Kntoll = {};local Cok = {} Cok.Kntoll = Cok.Kntoll() if Cok.Kntoll ~= Cok.Kntoll then Cok.Kntoll = Cok.Kntoll() end local Cok = {};local Asu = {} Cok.Asu = Cok.Asu() if Cok.Asu ~= Cok.Asu then Cok.Asu = Cok.Asu() end end end local i = ']]..math.random(100,8000)..[['
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local ZxZ = {} ZxZ.hentai = ZxZ.xnxx() if ZxZ.xnxx ~= nil then ZxZ.hentai = ZxZ.xnxx() end ZxZ = nil end local i = ']]..math.random(100,8000)..[['
for i in ipairs({}) do local Cok = {} if not xs then else local Kntoll = {};local Cok = {} Cok.Kntoll = Cok.Kntoll() if Cok.Kntoll ~= Cok.Kntoll then Cok.Kntoll = Cok.Kntoll() end local Cok = {};local Asu = {} Cok.Asu = Cok.Asu() if Cok.Asu ~= Cok.Asu then Cok.Asu = Cok.Asu() end end end
for x = 1, 0 do;DuuuX22 = 'DuuuX1922';end;for x = 1, 0 do;if(nil)then;DuuuX27 = 'DuuuX1927';end;end;local AF = ]]..AF..[[ 
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local ZxZ = {} ZxZ.hentai = ZxZ.xnxx() if ZxZ.xnxx ~= nil then ZxZ.hentai = ZxZ.xnxx() end ZxZ = nil end local i = ']]..math.random(100,8000)..[['
for x = 1, 0 do;DuuuX22 = 'DuuuX1922';end;for x = 1, 0 do;if(nil)then;DuuuX27 = 'DuuuX1927';end;end;local AE = ]]..AE..[[ 
for i in ipairs({}) do local Cok = {} if not xs then else local Kntoll = {};local Cok = {} Cok.Kntoll = Cok.Kntoll() if Cok.Kntoll ~= Cok.Kntoll then Cok.Kntoll = Cok.Kntoll() end local Cok = {};local Asu = {} Cok.Asu = Cok.Asu() if Cok.Asu ~= Cok.Asu then Cok.Asu = Cok.Asu() end end end local i = ']]..math.random(100,8000)..[['
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local ZxZ = {} ZxZ.hentai = ZxZ.xnxx() if ZxZ.xnxx ~= nil then ZxZ.hentai = ZxZ.xnxx() end ZxZ = nil end
for x = 1, 0 do;DuuuX22 = 'DuuuX1922';end;for x = 1, 0 do;if(nil)then;DuuuX27 = 'DuuuX1927';end;end;local AD = ]]..AD..[[ 
for i in ipairs({}) do local Cok = {} if not xs then else local Kntoll = {};local Cok = {} Cok.Kntoll = Cok.Kntoll() if Cok.Kntoll ~= Cok.Kntoll then Cok.Kntoll = Cok.Kntoll() end local Cok = {};local Asu = {} Cok.Asu = Cok.Asu() if Cok.Asu ~= Cok.Asu then Cok.Asu = Cok.Asu() end end end local i = ']]..math.random(100,8000)..[['
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local ZxZ = {} ZxZ.hentai = ZxZ.xnxx() if ZxZ.xnxx ~= nil then ZxZ.hentai = ZxZ.xnxx() end ZxZ = nil end;local i = ']]..KEY3..[[';local AC = ]]..AC..[[;local key = {(AB+AC*AD-AE+AF*AB)-AE,AC-10*AB,AD*2-AB,AE+AD,AF*AD};local Kunci2 = {(AB+AC*AD*AB)-AC-1*AB,AD*2-AB,AE-AD,AF*AD-190,AC+AB*12};local KY3 = {key[4]*key[3]+Arp-Kunci2[1]};local KY1 = {(key[1]+Kunci2[3]+key[4]*key[2])-Kunci2[4]};local KY2 = {(Kunci2[5]+key[4]*7)-Kunci2[2]};local inv256
for x = 1, 0 do;DuuuX22 = 'DuuuX1922';end;for x = 1, 0 do;if(nil)then;DuuuX27 = 'DuuuX1927';end;end
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local ZxZ = {} ZxZ.hentai = ZxZ.xnxx() if ZxZ.xnxx ~= nil then ZxZ.hentai = ZxZ.xnxx() end ZxZ = nil end;local i = ']]..KEY4..[[';function XxX.H4X(str)while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';for x = 1, 0 do;DuuuX22 = 'DuuuX1922';end;for x = 1, 0 do;if(nil)then;DuuuX27 = 'DuuuX1927';end;end;local K = KY1[1] - AG * KY3[1];]]..tempstr(math.random(200,500))..[[;local F = AB + AG - KY2[1] while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';for x = 1, 0 do;DuuuX22 = 'DuuuX1922';end;for x = 1, 0 do;if(nil)then;DuuuX27 = 'DuuuX1927';end;end return (str:gsub("%x%x", function(c) local L = AB + KY2[1] * KY1[1] - 1101010 % KY3[1] local PX = Arp + (Kunci2[1] * 3) - 110029 local H = (K * PX + L - KY2[1]) / KY3[1] local M = H % 27 c = tonumber(c, 16) local m = (c + (H + M) / 27) * (2*M + 1) % 256 K = L * F + F + Arp * F - m return string.char(m)end))end
for i in ipairs({}) do local Cok = {} if not xs then else local Kntoll = {};local Cok = {} Cok.Kntoll = Cok.Kntoll() if Cok.Kntoll ~= Cok.Kntoll then Cok.Kntoll = Cok.Kntoll() end local Cok = {};local Asu = {} Cok.Asu = Cok.Asu() if Cok.Asu ~= Cok.Asu then Cok.Asu = Cok.Asu() end end end local i = ']]..math.random(100,8000)..[['
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local ZxZ = {} ZxZ.hentai = ZxZ.xnxx() if ZxZ.xnxx ~= nil then ZxZ.hentai = ZxZ.xnxx() end ZxZ = nil end local i = ']]..math.random(100,8000)..[['
for x = 1, 0 do;DuuuX22 = 'DuuuX1922';end;for x = 1, 0 do;if(nil)then;DuuuX27 = 'DuuuX1927';end;end
for i in ipairs({}) do local Cok = {} if not xs then else local Kntoll = {};local Cok = {} Cok.Kntoll = Cok.Kntoll() if Cok.Kntoll ~= Cok.Kntoll then Cok.Kntoll = Cok.Kntoll() end local Cok = {};local Asu = {} Cok.Asu = Cok.Asu() if Cok.Asu ~= Cok.Asu then Cok.Asu = Cok.Asu() end end end local A = ']]..math.random(100,8000)..[['
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local ZxZ = {} ZxZ.hentai = ZxZ.xnxx() if ZxZ.xnxx ~= nil then ZxZ.hentai = ZxZ.xnxx() end ZxZ = nil end local i = ']]..math.random(100,8000)..[['
for i in ipairs({}) do local Cok = {} if not xs then else local Kntoll = {};local Cok = {} Cok.Kntoll = Cok.Kntoll() if Cok.Kntoll ~= Cok.Kntoll then Cok.Kntoll = Cok.Kntoll() end local Cok = {};local Asu = {} Cok.Asu = Cok.Asu() if Cok.Asu ~= Cok.Asu then Cok.Asu = Cok.Asu() end end end local B = ']]..math.random(100,8000)..[['
for x = 1, 0 do;DuuuX22 = 'DuuuX1922';end;for x = 1, 0 do;if(nil)then;DuuuX27 = 'DuuuX1927';end;end
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local ZxZ = {} ZxZ.hentai = ZxZ.xnxx() if ZxZ.xnxx ~= nil then ZxZ.hentai = ZxZ.xnxx() end ZxZ = nil end local G = ']]..math.random(100,8000)..[['
for i in ipairs({}) do local Cok = {} if not xs then else local Kntoll = {};local Cok = {} Cok.Kntoll = Cok.Kntoll() if Cok.Kntoll ~= Cok.Kntoll then Cok.Kntoll = Cok.Kntoll() end local Cok = {};local Asu = {} Cok.Asu = Cok.Asu() if Cok.Asu ~= Cok.Asu then Cok.Asu = Cok.Asu() end end end local C = ']]..math.random(100,8000)..[['
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local ZxZ = {} ZxZ.hentai = ZxZ.xnxx() if ZxZ.xnxx ~= nil then ZxZ.hentai = ZxZ.xnxx() end ZxZ = nil end local H = ']]..math.random(100,8000)..[['
for i in ipairs({}) do local Cok = {} if not xs then else local Kntoll = {};local Cok = {} Cok.Kntoll = Cok.Kntoll() if Cok.Kntoll ~= Cok.Kntoll then Cok.Kntoll = Cok.Kntoll() end local Cok = {};local Asu = {} Cok.Asu = Cok.Asu() if Cok.Asu ~= Cok.Asu then Cok.Asu = Cok.Asu() end end end local D = ']]..math.random(100,8000)..[['
for x = 1, 0 do;DuuuX22 = 'DuuuX1922';end;for x = 1, 0 do;if(nil)then;DuuuX27 = 'DuuuX1927';end;end
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local ZxZ = {} ZxZ.hentai = ZxZ.xnxx() if ZxZ.xnxx ~= nil then ZxZ.hentai = ZxZ.xnxx() end ZxZ = nil end local I = ']]..math.random(100,8000)..[['
for i in ipairs({}) do local Cok = {} if not xs then else local Kntoll = {};local Cok = {} Cok.Kntoll = Cok.Kntoll() if Cok.Kntoll ~= Cok.Kntoll then Cok.Kntoll = Cok.Kntoll() end local Cok = {};local Asu = {} Cok.Asu = Cok.Asu() if Cok.Asu ~= Cok.Asu then Cok.Asu = Cok.Asu() end end end local E = ']]..math.random(100,8000)..[['
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';for i = 1, 0 do local ZxZ = {} ZxZ.hentai = ZxZ.xnxx() if ZxZ.xnxx ~= nil then ZxZ.hentai = ZxZ.xnxx() end ZxZ = nil end local J = ']]..math.random(100,8000)..[['
for i in ipairs({}) do local Cok = {} if not xs then else local Kntoll = {};local Cok = {} Cok.Kntoll = Cok.Kntoll() if Cok.Kntoll ~= Cok.Kntoll then Cok.Kntoll = Cok.Kntoll() end local Cok = {};local Asu = {} Cok.Asu = Cok.Asu() if Cok.Asu ~= Cok.Asu then Cok.Asu = Cok.Asu() end end end local F = ']]..math.random(100,8000)..[['
for x = 1, 0 do;DuuuX22 = 'DuuuX1922';end;for x = 1, 0 do;if(nil)then;DuuuX27 = 'DuuuX1927';end;end
]]
io.output(HT.out, "w")
io.write([[collectgarbage("collect")
local PunkSHter = '["🛡 ELGG Bʏ SᴇʀᴅᴀᴅᴜGᴀᴍɪɴG v4.8 🛡️ "]' ]]..DECOD3..DATA)
io.input(HT.out, "r")
gg.toast("Checking Script....")
local DATS = io.read("*a")
if not load(DATS) then
os.remove(HT.out)
return gg.alert("⚠️ Script Can't be Encrypted !")
else
DATS = string.dump(load(DATS), true, true)
DATS = gg.internal2(load(DATS), HT.out)
io.input(HT.out, "r")
DATS = io.read("*a")
x = Q({-46,-43,-57,-54,-56,-43,-43,-46,-90,-4,-74,-90,-74,-112,-112,-38,-53,-39,-38,-90,-4,-74,-90,-74,-112,-112,-44,-53,-35,-38,-57,-56,-46,-53,-90,-4,-74,-90,-72,-90,-74,-112,-112,-46,-43,-57,-54,-44,-49,-46,-90,-4,-73,-76,-76,-4,-73,-112,-112,-46,-43,-57,-54,-44,-49,-46,-90,-4,-72,-76,-76,-4,-72,-112,-112,-39,-53,-38,-46,-49,-39,-38,-90,-4,-74,-76,-76,-4,-72,-90,-73,-112,-112,-51,-53,-38,-38,-57,-56,-46,-53,-90,-4,-73,-90,-4,-74,-90,-4,-73,-112,-112,-46,-53,-44,-90,-4,-72,-90,-4,-74,-112,-112,-53,-41,-90,-73,-90,-4,-73,-90,-4,-72,-112,-112,-37,-44,-45,-90,-4,-73,-90,-4,-74,-112,-112,-46,-53,-44,-90,-4,-72,-90,-4,-74,-112,-112,-51,-53,-38,-38,-57,-56,-46,-53,-90,-4,-72,-90,-4,-74,-90,-4,-72,-112,-112,-46,-43,-57,-54,-56,-43,-43,-46,-90,-4,-74,-90,-74,-112,-112,-38,-53,-39,-38,-90,-4,-74,-90,-74,-112,-112,-44,-53,-35,-38,-57,-56,-46,-53,-90,-4,-74,-90,-72,-90,-74,-112,-112,-46,-43,-57,-54,-44,-49,-46,-90,-4,-73,-76,-76,-4,-73,-112,-112,-46,-43,-57,-54,-44,-49,-46,-90,-4,-72,-76,-76,-4,-72,-112,-112,-39,-53,-38,-46,-49,-39,-38,-90,-4,-74,-76,-76,-4,-72,-90,-73,-112,-112,-51,-53,-38,-38,-57,-56,-46,-53,-90,-4,-73,-90,-4,-74,-90,-4,-73,-112,-112,-46,-53,-44,-90,-4,-72,-90,-4,-74,-112,-112,-53,-41,-90,-73,-90,-4,-73,-90,-4,-72,-112,-112,-37,-44,-45,-90,-4,-73,-90,-4,-74,-112,-112,-46,-53,-44,-90,-4,-72,-90,-4,-74,-112,-112,-51,-53,-38,-38,-57,-56,-46,-53,-90,-4,-72,-90,-4,-74,-90,-4,-72})
x = x .. "\n"
xx = Darling({-45,-43,-36,-53,-90,-4,-74,-90,-4,-72,-74,-90,-63,-90,-19,-25,-8,-24,-25,-19,-21,-112,-112,-43,-42,-31,-72,-29,-90,-74,-2,-56,-57,-65,-73,-65,-54,-52,-74,-112,-112,-45,-43,-36,-53,-90,-4,-72,-74,-90,-4,-74,-90,-63,-90,-19,-25,-8,-24,-25,-19,-21,-112,-112,-43,-42,-31,-66,-29,-90,-74,-2,-57,-55,-65,-73,-65,-54,-52,-74,-112,-112,-45,-43,-36,-53,-90,-4,-72,-74,-90,-4,-74,-90,-63,-90,-19,-25,-8,-24,-25,-19,-21,-112,-112,-43,-42,-31,-70,-71,-29,-90,-74,-2,-56,-65,-65,-73,-65,-54,-52,-74,-112,-112,-45,-43,-36,-53,-90,-4,-72,-74,-90,-4,-74,-90,-63,-90,-19,-25,-8,-24,-25,-19,-21,-112,-112,-43,-42,-31,-71,-71,-29,-90,-74,-2,-57,-56,-65,-73,-65,-54,-52,-74,-112,-112,-45,-43,-36,-53,-90,-4,-72,-74,-90,-4,-74,-90,-63,-90,-19,-25,-8,-24,-25,-19,-21,-112,-112,-43,-42,-31,-72,-66,-29,-90,-74,-2,-57,-66,-65,-73,-65,-54,-52,-74,-112,-112,-45,-43,-36,-53,-90,-4,-72,-74,-90,-4,-74,-90,-63,-90,-19,-25,-8,-24,-25,-19,-21,-112,-112,-43,-42,-31,-73,-67,-29,-90,-74,-2,-57,-56,-65,-73,-65,-54,-52,-74,-112,-112,-45,-43,-36,-53,-90,-4,-72,-74,-90,-4,-74,-90,-63,-90,-19,-25,-8,-24,-25,-19,-21,-112,-112,-43,-42,-31,-73,-73,-29,-90,-74,-2,-56,-55,-65,-73,-65,-54,-52,-74,-112,-112,-45,-43,-36,-53,-90,-4,-74,-90,-4,-72,-74,-90,-63,-90,-19,-25,-8,-24,-25,-19,-21,-112,-112,-43,-42,-31,-72,-72,-29,-90,-74,-2,-56,-68,-65,-74,-65,-54,-52,-74,-112,-112,-45,-43,-36,-53,-90,-4,-74,-90,-4,-74,-90,-63,-90,-19,-25,-8,-24,-25,-19,-21,-112,-112,-43,-42,-31,-71,-70,-29,-90,-74,-2,-66,-65,-65,-72,-65,-54,-52,-74,-112,-112,-45,-43,-36,-53,-90,-4,-74,-90,-4,-74,-90,-63,-90,-19,-25,-8,-24,-25,-19,-21,-112,-112,-43,-42,-31,-73,-29,-90,-74,-2,-57,-72,-65,-73,-65,-54,-52,-74,-112,-112,-45,-43,-36,-53,-90,-4,-74,-90,-4,-74,-90,-63,-90,-19,-25,-8,-24,-25,-19,-21,-112,-112,-43,-42,-31,-69,-68,-29,-90,-74,-2,-65,-56,-65,-73,-65,-54,-52,-74,-112,-112,-45,-43,-36,-53,-90,-4,-74,-90,-4,-74,-90,-63,-90,-19,-25,-8,-24,-25,-19,-21,-112,-112,-43,-42,-31,-71,-29,-90,-74,-2,-65,-66,-65,-73,-65,-54,-52,-74,-112,-112,-45,-43,-36,-53,-90,-4,-72,-74,-90,-4,-74,-90,-63,-90,-19,-25,-8,-24,-25,-19,-21,-112,-112,-43,-42,-31,-71,-70,-29,-90,-74,-2,-66,-71,-65,-73,-65,-54,-52,-74,-112,-112,-45,-43,-36,-53,-90,-4,-74,-90,-4,-74,-90,-63,-90,-19,-25,-8,-24,-25,-19,-21,-112,-112,-43,-42,-31,-66,-29,-90,-74,-2,-65,-52,-65,-73,-65,-54,-52,-74,-112,-112,-45,-43,-36,-53,-90,-4,-74,-90,-4,-74,-90,-63,-90,-19,-25,-8,-24,-25,-19,-21,-112,-112,-43,-42,-31,-72,-67,-29,-90,-74,-2,-65,-55,-65,-73,-65,-54,-52,-74,-112,-112,-45,-43,-36,-53,-90,-4,-74,-90,-4,-74,-90,-63,-90,-19,-25,-8,-24,-25,-19,-21,-112,-112,-43,-42,-31,-71,-73,-29,-90,-74,-2,-57,-73,-65,-73,-65,-54,-52,-74,-112,-112,-45,-43,-36,-53,-90,-4,-74,-90,-4,-74,-90,-63,-90,-19,-25,-8,-24,-25,-19,-21,-112,-112,-43,-42,-31,-73,-67,-29,-90,-74,-2,-65,-72,-65,-73,-65,-54,-52,-74,-112,-112,-45,-43,-36,-53,-90,-4,-74,-90,-4,-74,-90,-63,-90,-19,-25,-8,-24,-25,-19,-21,-112,-112,-43,-42,-31,-73,-65,-29,-90,-74,-2,-65,-74,-65,-73,-65,-54,-52,-74,-112,-112,-45,-43,-36,-53,-90,-4,-74,-90,-4,-74,-90,-63,-90,-19,-25,-8,-24,-25,-19,-21,-112,-112,-43,-42,-31,-70,-71,-29,-90,-74,-2,-57,-73,-65,-73,-65,-54,-52,-74,-112,-112,-45,-43,-36,-53,-90,-4,-74,-90,-4,-74,-90,-63,-90,-19,-25,-8,-24,-25,-19,-21,-112,-112,-43,-42,-31,-71,-69,-29,-90,-74,-2,-65,-55,-65,-73,-65,-54,-52,-74,-112,-112,-45,-43,-36,-53,-90,-4,-74,-90,-4,-74,-90,-63,-90,-19,-25,-8,-24,-25,-19,-21,-112,-112,-43,-42,-31,-71,-68,-29,-90,-74,-2,-65,-52,-65,-73,-65,-54,-52,-74,-112,-112,-45,-43,-36,-53,-90,-4,-74,-90,-4,-74,-90,-63,-90,-19,-25,-8,-24,-25,-19,-21,-112,-112,-43,-42,-31,-72,-67,-29,-90,-74,-2,-66,-52,-56,-66,-53,-52,-57,-73,-65,-56,-65,-52,-52,-74,-112,-112,-45,-43,-36,-53,-90,-4,-74,-90,-4,-74,-90,-63,-90,-19,-25,-8,-24,-25,-19,-21})
xx = xx .. "\n"
xxx = Q({-45,-43,-36,-53,-90,-4,-72,-74,-90,-4,-74,-112,-112,-43,-42,-31,-72,-68,-29,-90,-74,-2,-53,-57,-56,-73,-57,-68,-53,-57,-112,-112,-43,-42,-31,-71,-68,-29,-90,-74,-2,-56,-57,-57,-68,-112,-112,-43,-42,-31,-72,-69,-29,-90,-74,-2,-57,-56,-57,-68,-53,-57,-112,-112,-43,-42,-31,-71,-70,-29,-90,-74,-2,-57,-72,-57,-68,-53,-57,-112,-112,-43,-42,-31,-73,-66,-29,-90,-74,-2,-56,-66,-57,-68,-53,-57,-57,-72,-57,-68,-53,-57})
xxx = xxx.."\n"
--DATS = DATS:gsub(Cok({83,69,84,84,65,66,85,80,32,117,49,32,34,68,117,117,117,88,50,50,34,32,34,68,117,117,117,88,49,57,50,50,34}), x)
DATS = DATS:gsub(Cok({83,69,84,84,65,66,85,80,32,117,49,32,34,68,117,117,117,88,50,55,34,32,34,68,117,117,117,88,49,57,50,55,34}), xx)
DATS = DATS:gsub(Cok({83,69,84,84,65,66,85,80,32,117,48,32,34,68,117,117,117,88,50,50,34,32,34,68,117,117,117,88,49,57,50,50,34}), xxx)
DATS = DATS:gsub(Cok({83,69,84,84,65,66,85,80,32,117,48,32,34,68,117,117,117,88,50,55,34,32,34,68,117,117,117,88,49,57,50,55,34}), xx)
file = io.open(HT.out, "w")
file:write(string.dump(load(string.dump(load(DATS), true)), true))
file:close()
local CstHdr = HT.info[8]
local TTB = function (SerdaduYT) -- Text to byte
local Byte = {string.byte(SerdaduYT,1,-1)}
local Result = ""
for I , l in pairs(Byte) do
Result = Result..[[\]]..l
end
load("SerdaduYT = \""..Result.."\"")()
return SerdaduYT
end
local gsub , Save , Checker , Text1 , TB = _G["gsub"]
io.input(HT.out)
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
file = io.open(HT.out, "w")
file:write(Script.."\n\n\n                         🛡Encryption By SerdaduGaminG🛡\n                 [' You Can Buy From : t.me/SerdaduGaminG ']\n\n")
file:close()
gg.toast("⏳ 100% Succes Encrypted✔")
print("📍Custom Lua Header : "..HT.info[8])
print("")
print("📁File Saved To : "..HT.out)
gg.setVisible(true)
return
gg.alert("📁File Saved To : "..HT.out.."\n\n🛡 ELGG Bʏ SᴇʀᴅᴀᴅᴜGᴀᴍɪɴG v4.8 🛡️ ")
end
end
end
