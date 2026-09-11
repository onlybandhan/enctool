local g = {}
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
g.data = loadfile(g.config)
if g.data ~= nil then g.info = g.data() g.data = nil end
if g.info == nil then g.info = {g.last, g.last:gsub("/[^/]+$", "")} end
gg.alert([[
━━━━━━━━━━━━━━━━━━
  🛡️ Encryption Tool By [TEAM] ( Version Xll ) v9.2™️ 🛡️️
━━━━━━━━━━━━━━━━━━
  🚬 Fitur :
  ➣ Encrypt lua file
  ➣ Hide string
  ➣ Add password
  ➣ Add expired date
  ➣ Add minimal GG version
  ➣ Blocking loader
  ➣ Blocking full decrypt with unluac
━━━━━━━━━━━━━━━━━━]], "START ↗️")
while true do
g.info = gg.prompt({
"📁 Choose Script to Encrypt : ",--1
"📁 Select Output Folder: ",--2
"🕒 Add Expirity Date",--3
"🔐 Add Pasasword",--4
"🛡️ Add Minimal GG Required",--5
"✏️ Add Rename Blocker",--6
"💀 Add Verify Human Mode",--7
"♻️ Add App Info",--8
"🗳️ Add Set Anti Package",--9
},g.info,{
"file",--1
"path",--2
"checkbox",--3
"checkbox",--4
"checkbox",--5
"checkbox",--6
"checkbox",--7
"checkbox",--8
"checkbox"})--9
if g.info == nil then
return
end
gg.saveVariable(g.info, g.config)
g.last = g.info[1]
if loadfile(g.last) == nil then
return gg.alert([[⚠️Script not Found! ⚠️]])
else
g.out = g.last:match("^.+/(.+).lua$") .. os.date(".%d%m%Y.ELGGRevo")
g.out = g.info[2] .. "/" .. g.out .. ".lua"
print("============Start=============")
print(" 〰️〰️〰️〰️〰️〰️〰️〰️〰️〰️〰️〰️〰️")
print("🛡️ Encryption Tool By [TEAM] ( Version Xll ) v9.2™️ 🛡️")
print("〰️〰️〰️〰️〰️〰️〰️〰️〰️〰️〰️〰️〰️")
print("=============================")
print("➣ Cek file dan lokasi output.....")
print("【✔️】 File script : " .. g.info[1] .. "")
print("【✔️】 Lokasi output : " .. g.info[2] .. "")
print("➣ Encrypting.......")
print("【✔】 Berhasil")
print("➣ File tersimpan di : 📂 " .. g.out .. "")
print("➣ Bersih-bersih temporary.....")
print("【✔】 Selesai")
print("➣ Keluar")
print("=============================")
print(os.date("%H:%M:%S %p ⌚️ %A, %d %B %Y"))
info = {g.out}
end
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
end
if not VERSION then
gg.setVisible(true)
elseif VERSION[1] == nil then
gg.alert("🛡️ Input Minimal Required GG Version !")
gg.setVisible(true)
else
print("\n🛡️Added Minimal GG Version : "..VERSION[1])
DATA = '\n if gg.VERSION < "'..VERSION[1] .. '" then print("'..VERSION[2]..'") return gg.alert("' ..VERSION[2].. '")end\n' .. DATA
end
if not load(DATA) then
print("⚠️ ERROR\n\nFile Can Not Be Encrypted !")
break
else
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
if g.info[7] == true then
print("\n💀 Added Verify Human Mode")
DATA = "local code = math.random(10000, 99999)\nlocal hmn = gg.prompt({'🔒 Input This Code to Verify: '..code..' !'},{[1]=''},{[1]='number'}) if not hmn then os.exit() end if hmn[1]..'1' == code..'1' then gg.toast('☑ Code Correct!') else gg.alert('✖ Wrong Code!') os.exit() end\n" ..DATA
end
if g.info[8] == true then
print("\n♻️ Added App Info")
DATA = 'gg.alert("╔क══════════════क⊱✫⊰क══════════════क╗\\n\\n➣ App Name: "..gg.getTargetInfo()["name"].."\\n➣ App Version: "..gg.getTargetInfo()["versionName"].."\\n➣ Package Name: "..gg.getTargetInfo()["packageName"].."\\n➣ Installation Date: "..os.date("%x", gg.getTargetInfo()["firstInstallTime"]).."\\n➣ Last Update: "..os.date("%x", gg.getTargetInfo()["lastUpdateTime"]).."\\n\\n╚क══════════════क⊱✫⊰क══════════════क╝")\n' ..DATA
end
if g.info[9] == true then
Prompt = gg.prompt({"🔐 Set Anti Package : ",
"🗒️ Set Error Package Message :"},{gg.getTargetPackage(),"⚠️ Error Package ⚠️"},{"text","text"}) end
if not Prompt then
gg.setVisible(true)
elseif Prompt[1] == nil then
gg.alert("🛡️ Input Anti Package !")
gg.setVisible(true)
else
print("\n🛡️Added Anti Package : "..Prompt[1])
DATA = '\nCheck_Package = gg.getTargetPackage() == "' ..Prompt[1] ..'" or (function() gg.alert("' ..Prompt[2] ..'") while true do os.exit() end end)()\n' .. DATA
end
local Key1 = math.random(3900,4000);local Key2 = math.random(5090,6000);local Key3 = math.random(900,8000);local Key4 = math.random(900,100000);local Key5 = math.random(338,600);local Key6 = math.random(300,600);
local GWT_XSL = {}   local WT_XSNUB = {}   local getKey = -Key1+Key2-Key3+Key4-Key5   local Key53 = Key3;local Key14 = Key5;local inv256   function EncSHA(str)if not inv256 then inv256 = {} for M = 0, 127 do local inv = -1 repeat inv = inv + 2 until inv * (2*M + 1) % 256 == 1 inv256[M] = inv end;end local K, F = Key53, 99663840 + Key14 return (str:gsub('.', function(m)local L = K % Key2;local H = (K - L) / Key2;local M = H % 128;local m = m:byte()local c = (m * inv256[M] - (H - M) / 128) % 256 K = L * F + H + c + m return ('%02x'):format(c)end))end  function WT_XS(str)  str = EncSHA(str)   gb = {str:byte(1,-1)}   for i = 1, #gb do   gb[i] = (gb[i] - Key1 - (getKey + i) * (Key1 + i) ) % Key6
end   return "{"..table.concat(gb, ",").."}"   end   eek = 1     for i = 1, 2 do   xxnx = math.random(53, 266)    table.insert(WT_XSNUB, xxnx)   end
local DATA = [[       local function ELGGTEAM_CHUCKREVO()      if ELGGTEAM_CHUCK ~= '🛡️ Encryption Tool By [TEAM] ( Version Xll ) v9.2™️ 🛡️' then     return gg.alert("⚠ERROR DETECTED⚠") end     gg.setVisible(false)      ]]..DATA..[[     end      ELGGTEAM_CHUCKREVO()    ]]
for i = 1, 3 do     load(DATA)    end    if DATA:match('"(.-)"') ~= nil then    repeat   DATA = DATA:gsub('"(.-)"', function(c)     c = load('return "'..c..'"')()   T = WT_XS(c)   return "WT_XS(TEAM("..T.."))"   end)   until DATA:match('"(.-)"') == nil    end    for k, v in pairs(gg) do    ambl = "gg." .. k    if DATA:match(ambl) ~= nil then    repeat   DATA = DATA:gsub(ambl, function()   T = WT_XS(k)    return "gg[WT_XS(TEAM("..T.."))]"    end)      until DATA:match(ambl) == nil     end     end if DATA:match("'(.-)'") ~= nil then   repeat   DATA = DATA:gsub("'(.-)'", function(c)   c = load("return '"..c.."'")()   T = WT_XS(c)   return "WT_XS(TEAM("..T.."))"   end)   until DATA:match("'(.-)'") == nil   end   if DATA:match("[[(.-)]]") ~= nil then   repeat   DATA = DATA:gsub("[[(.-)]]", function(c)   c = load("return [["..c.."]]")()   T = WT_XS(c)   return "WT_XS(TEAM("..T.."))"   end)   until DATA:match("[[(.-)]]") == nil   end   if DATA:match("[=[(.-)]=]") ~= nil then   repeat   DATA = DATA:gsub("[=[(.-)]=]", function(c)   c = load("return '"..c.."'")()   T = WT_XS(c)   return "WT_XS(TEAM("..T.."))"   end)   until DATA:match("[=[(.-)]=]") == nil   end   for k, v in pairs(io) do   ambl = "io." .. k   if DATA:match(ambl) ~= nil then   repeat   DATA = DATA:gsub(ambl, function()   T = WT_XS(k)   return "io[WT_XS(TEAM("..T.."))]"   end)   until DATA:match(ambl) == nil   end   end   for k, v in pairs(os) do   ambl = "os." .. k   if DATA:match(ambl) ~= nil then   repeat   DATA = DATA:gsub(ambl, function()   T = WT_XS(k)   return "os[WT_XS(TEAM("..T.."))]"   end)   until DATA:match(ambl) == nil   end   end   for k, v in pairs(math) do   ambl = "math." .. k   if DATA:match(ambl) ~= nil then   repeat   DATA = DATA:gsub(ambl, function()   T = WT_XS(k)   return "math[WT_XS(TEAM("..T.."))]"   end)   until DATA:match(ambl) == nil   end   end   for k, v in pairs(debug) do   ambl = "debug." .. k   if DATA:match(ambl) ~= nil then   repeat   DATA = DATA:gsub(ambl, function()   T = WT_XS(k)   return "debug[WT_XS(TEAM("..T.."))]"   end)   until DATA:match(ambl) == nil   end   end   for k, v in pairs(string) do   ambl = "string." .. k   if DATA:match(ambl) ~= nil then   repeat   DATA = DATA:gsub(ambl, function()   T = WT_XS(k)   return "string[WT_XS(TEAM("..T.."))]"   end)   until DATA:match(ambl) == nil   end   end   for k, v in pairs(table) do   ambl = "table." .. k   if DATA:match(ambl) ~= nil then   repeat   DATA = DATA:gsub(ambl, function()   T = WT_XS(k)   return "table[WT_XS(TEAM("..T.."))]"   end)   until DATA:match(ambl) == nil   end   end   gg.toast("⏳ 75% Please Wait..")   tfux = {"loadfile%(", "load%(", "print%("}   for i = 1, #tfux do   if DATA:match(tfux[i]) ~= nil then   repeat   DATA = DATA:gsub(tfux[i], function(c)   c = c:gsub("%(", "")   T = WT_XS(c)   return "_G[WT_XS(TEAM("..T.."))]("   end)   until DATA:match(tfux[i]) == nil   end   end   
gg.toast("⏳ 80% Please Wait..")
io.output(g.out, "w")
io.write(string.dump(load([[
local ELGGTEAM_CHUCK =  "🛡️ Encryption Tool By [TEAM] ( Version Xll ) v9.2™️ 🛡️"
local Key1 = ]]..Key1..[[    local Key3 = ]]..Key3..[[    local Key5 = ]]..Key5..[[    local Key4 = ]]..Key4..[[    local Key2 = ]]..Key2..[[ local Key6 = ]]..Key6..[[
local getKey = -Key1+Key2-Key3+Key4-Key5
local Key53 = ]]..Key3..[[;local Key14 = ]]..Key5..[[;local inv256
TEAM, WT_XS = function(c);text = '';for i in ipairs(c) do;text = text .. string.char((c[i] + Key1 + (getKey + i) * (Key1 + i)) % Key6);end;return text;end, function(str)local K, F = Key53, 99663840 + Key14 return (str:gsub('%x%x', function(c) local L = K % Key2 local H = (K - L) / Key2 local M = H % 128 c = tonumber(c, 16) local m = (c + (H - M) / 128) * (2*M + 1) % 256 K = L * F + H + c + m return string.char(m)end))end
]]..DATA), true))
io.input(g.out, "r")
local ELGGTEAM_CHUCK = '🛡️ Encryption Tool By [TEAM] ( Version Xll ) v9.2™️ 🛡️'
local ELGGTEAM_CHUCK_VERSION = ELGGTEAM_CHUCK:match('%s(v.+)™️')
XTEAM = 'Revo' .. ELGGTEAM_CHUCK_VERSION:sub(2, 4) .. gg.internal9(g.out, '', ELGGTEAM_CHUCK_VERSION:gsub('[v.]', ""):sub(1, 2))
io.open(g.out, "w"):write(XTEAM):close()
os.exit()
end
end