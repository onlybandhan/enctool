
local g = {}
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
DATA = loadfile(g.config)
if DATA ~= nil then g.info = DATA() DATA = nil end
if g.info == nil then g.info = {g.last, g.last:gsub("/[^/]+$", "")} end
DuarMmx = gg.alert(os.date([[
╔─━━━━━━━━━━░🔰░━━━━━━━━━─╗
🎉Encryption BlueGamingID (Version 1)  🎉
╚─━━━━━━━━━━░🔰░━━━━━━━━━─╝

┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉
🔰┋ Anti Load + Anti Log              
🔰┋ Anti Lasm + anti hook           
🔰┋ Hide String + Random Key   
🔰┋ SHA256 Obfuscator
┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉]]), "🛡OPEN🛡", "❌EXIT❌")
if DuarMmx == nil then end
if DuarMmx == 1 then end
if DuarMmx == 2 then os.exit(print(os.date([[
╔─━━━━━░🔰░━━━━━─╗
🎉       Script Canceled       🎉
╚─━━━━━░🔰░━━━━━─╝]])))end
while true do
g.info = gg.prompt({
"📂 Select Script To Encrypt :",--1
"📂 Select Ouput after encrypt :",--2
"🕒 Add Expired",--3
"🔐 Add Password",--4
"🛡️ Add Version GameGuardian",--5
"📝 Add Rename Blocker",--6
"🗳 Add Package GameGuardian",--7
"🕵️ Add Package Game",--8
"📝 Custom Lua Header lua(XxxXxx)"--9
},g.info,{
"file",--1
"path",--2
"checkbox",--3
"checkbox",--4
"checkbox",--5
"checkbox",--6
"checkbox",--7
"checkbox",--8
"text"})--9
if g.info == nil then 
print([[
╔─━━━━━░🔰░━━━━━─╗
🎉       Script Canceled       🎉
╚─━━━━━░🔰░━━━━━─╝]])
 os.exit() end
gg.saveVariable(g.info,g.config)
DATA = io.input(g.info[1]):read("*a")
if not load(DATA) then
gg.alert('⚠ Error Fix Your Script ⚠')
print('\n⚠ Error Fix Your Script ⚠\n')
os.exit() end

g.last = g.info[1]
g.out = g.last:match("[^/]+$")
g.out = g.out:gsub(".lua", ".ELGGByBGD")
g.out = g.info[2]..'/'..g.out..'.lua'

if g.info[3] == true then
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
print("📅 Added Expired Date : True✔")

DATA = '\n if os.date("%Y%m%d") >= "'..exp_date[1]..'" then print("'..exp_date[2]..'") return gg.alert("' ..exp_date[2] ..'")end\n' .. DATA
end--if

if g.info[4] == true then
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
print("🔐 Added Password Script : True✔")

DATA = '\nlocal CXY = "'.. PASS[1]..'"\nPASSW = gg.prompt({"🔒 Input password: "},{[1]=""},{[1]="text"})\n if not PASSW the﻿n print("'..PASS[2]..'")  return end\n if PASSW[1] == "" then gg.alert("❌Password Can Not Be Empty ❌") os.exit(print("❌Password Can Not Be Empty ❌"))end\n if PASSW[1] ~= CXY then print("'..PASS[2]..'")return end\nif PASSW[1] == CXY then gg.toast("🎉Wellcome🎉")end\n' .. DATA
end--if

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
print("🛡 Minimal Version Required : True✔")

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
print("📝 Added Rename Blocker : True✔")

DATA = '\nlocal KntolProtect = gg.getFile():match("[^/]+$")local tptd =  "'..NAME[1]..'"\nif KntolProtect ~= tptd then gg.copyText("'..NAME[1]..'")gg.setVisible(true) print("'..NAME[2]..'") return gg.alert("'..NAME[2].. '")end\n' ..DATA
end--if

if g.info[7] == true then
DATA = ([[if gg.isPackageInstalled("com.minhui.networkcapture") then
  print("Desinstale o Packet Capture")
  os.exit()
else
end
if gg.isPackageInstalled("com.goushi.gtpcanary") then
  print("Desinstale o Packet Capture")
  os.exit()
else
end
if gg.isPackageInstalled("com.packagesniffer.frtparlak") then
  print("Desinstale o Packet Capture")
  os.exit()
else
end
if gg.isPackageInstalled("com.rhmsoft.edit") then
  print("Desinstale o Packet Capture")
  os.exit()
else
end
if gg.isPackageInstalled("app.greyshirts.sslcapture") then
  print("Desinstale o Packet Capture")
  os.exit()
else
end
if gg.isPackageInstalled("frtparlak.rootsniffer") then
  print("Desinstale o Packet Capture")
  os.exit()
else
end
if gg.isPackageInstalled("com.minhui.wifianalyzer") then
  print("Desinstale o Packet Capture")
  os.exit()
else
end
if gg.isPackageInstalled("jp.co.taosoftware.android.packetcapture") then
  print("Desinstale o Packet Capture")
  os.exit()
else
end
if gg.isPackageInstalled("com.prabalgaming.logger") then
  print("uninstall your logger gg to Run Script")
  os.exit()
else
end
if gg.isPackageInstalled("any_.body_.can_.fuck_.tencent_") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.s.fyojrme") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.rjvsbmhdspmnfbame") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.redwolfgaming.ripgg") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.vrexqfftfsxekm.kl") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.nochqxpucsbldqqx") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.ghueczxrttlhgd") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.yy.qptvrjwerw.ghoex") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.nochqxpucsbldqqx") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.pvt4u") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.Egypt.yuosseef") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.tssfjipkmrco") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.vip.paidhacksonly.mr.toxin") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.ioyysvgfsrig") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.mrteamz.id") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.jtbodgpqxox") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.eidymumcghpfeeeavps") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.mod.iraq") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.dzelttwyuyyes") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.sxqa") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.xyyxgxfn") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.zgb") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.tssfjipkmrco") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.vnpqk") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.mwjvnwesbghkxbjznbwo") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.blackduty.gc") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.s.fyojrme") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.roxmemek") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.fhshwhpvqvruvjtu") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.fireongaming.fog") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.paranoiaworks.unicus.android.sse") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.raincitygaming.ggmod") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.pvt4u") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.nydpvsb.z.r.pkgh") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.ioyysvgfsrig") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.gmsm") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.sudsjcqvvcmgutdjeg") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.redwolfgaming.ripgg") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.coolfoolggfuckscript.tm") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.eidymumcghpfeeeavps") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.dzelttwyuyyes") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.foxcyber.gg") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.sxqa") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("com.zgb") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("catch_.me_.if_.you_.can_") then
  print("uninstall ur Decrypt GG")
  os.exit()
end
if gg.isPackageInstalled("sstool.only.com.sstool") then
  print("Uninstall SSTOOL Deceypt")
  os.exit()
end
if gg.isPackageInstalled("sstool.only.com.sstool") then
  print("Uninstall SSTOOL Deceypt")
  os.exit()
end
if gg.isPackageInstalled("catch_.me_.if_.you_.can_") then
  print("Uninstall orginal GG")
  os.exit()
end
]])..DATA
print('🛡 Auto Detect Decrypt : True √ ')

end

if g.info[8] == true then
BlueGamingID = gg.prompt({
"✏️ Set Your Package GameGuardian",
"📝 Type Message If Package Is Wrong :"
}, {"com.ardianxp","⚠ Use MY GG For Run This Script ⚠"},{
"text",
"text"})
end--if
if not BlueGamingID then
gg.setVisible(true)
elseif BlueGamingID[1] == nil then
gg.alert("⚠️ Set Package GameGuardian Can Not Bd Empty!")
gg.setVisible(true)
else
print("⚠ SetPeckage GG : True√ ")
DATA = '\nif gg.PACKAGE == "' .. BlueGamingID[1] .. '" then\nelse\ngg.alert("' .. BlueGamingID[2] .. '")\nprint("' .. BlueGamingID[2] .. '")\nos.exit()\nend\n' .. DATA
end

if g.info[9] == true then
BlueGamingIDg = gg.prompt({
"✏️ Set Package Game",
"📝 Type Message If Package Is Wrong :"
}, {"com.telegram.org","⚠ Use Script In Game ⚠"},{
"text",
"text"})
end--if
if not BlueGamingIDg then
gg.setVisible(true)
elseif BlueGamingIDg[1] == nil then
gg.alert("⚠️ Set Package GameGuardian Can Not Be Empty!")
gg.setVisible(true)
else
print("🎮 SetPeckage Game : True√ ")

DATA = '\nif gg.getTargetInfo().processName ~= "'..BlueGamingIDg[1]..'" then\ngg.alert("'..BlueGamingIDg[2]..'")\nos.exit()\nend\n'..DATA
end
local DATA = DATA:gsub([["\"]],[["]]):gsub([[\""]],'"')

local Nab = {}
local KEYTBL = {}
local Lass = {}
local KeyLast = {}
local GTBL = {}
local TBNUB = {}

local mkm0 = "function _1() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _3() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _3() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _4() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _5() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _6() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _7() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _8() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _9() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _10() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _11() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _12() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _13() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _14() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _15() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _16() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _17() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _18() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _19() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _20() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end"
local l = function(BlueGamingID)
  function I(res, ress)
res = res:gsub("\\n", "\n")
lll = ress .. "(.-)" .. ress 
for i in res:gmatch(lll) do
local Key53 = 738373383729291;local Key14 = 9391;local inv256
  function llll(data)
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
  
  lllllllllllllll = llll(i)
  llllllllllllllll = "BlueGamingID(([[" .. lllllllllllllll .. "]]))"
  res = res:gsub(lll, llllllllllllllll, 1)
end
return res
  end
  BlueGamingID = I(BlueGamingID, "\"")
  return BlueGamingID
end

Block8=[[
]]..mkm0..[[ 
local Key53 = 738373383729291;local Key14 = 9391;local inv256
]]..mkm0..[[ 
for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;
local BlueGamingID = function(data)
]]..mkm0..[[ 
local K, F = Key53, 16384 + Key14 return (data:gsub('%x%x', function(c) local L = K % 274877906944 local H = (K - L) / 274877906944 local M = H % 128 c = tonumber(c, 16) local m = (c + (H - M) / 128) * (2*M + 1) % 256 K = L * F + H + c + m return string.char(m)end))end
]]..mkm0..[[
]]

DATA = [[
collectgarbage("collect")
code = (DATA)
DATA = code
function encodegg(code)
return '_G[string.char(table.unpack({103,103}))][string.char(table.unpack({' .. table.concat({code:byte(1, -1)}, ",") .. '}))]('
end
function encodeos(code)
return '_G[string.char(table.unpack({111,115}))][string.char(table.unpack({' .. table.concat({code:byte(1, -1)}, ",") .. '}))]('
end
function encodetbl(code)
return '_G[string.char(table.unpack({116,97,98,108,101}))][string.char(table.unpack({' .. table.concat({code:byte(1, -1)}, ",") .. '}))]('
end
function encodestr(code)
return '_G[string.char(table.unpack({115,116,114,105,110,103}))][string.char(table.unpack({' .. table.concat({code:byte(1, -1)}, ",") .. '}))]('
end
function encodeload(code)
return '_G[string.char(table.unpack({108,111,97,100}))]('
end 
function encodeloadf(code)
return '_G[string.char(table.unpack({108,111,97,100,102,105,108,101}))]('
end
function encodeprint(code)
return '_G[string.char(table.unpack({112,114,105,110,116}))]('
end
function encodeio(code)
return '_G[string.char(table.unpack({105,111}))][string.char(table.unpack({'.. table.concat({code:byte(1, -1)}, ",") ..'}))]('
end
function encvalue(code)
return '(load(string.char(table.unpack({' .. table.concat({code:byte(1, -1)}, ",") .. "})))))()"
end
function encvalues(code)
return 'string.char(table.unpack({' .. table.concat({code:byte(1, -1)}, ",") .. "}))"
end
function encodelocal(code)
return '_G[string.char(table.unpack({122,121,205,120,115}))]('
end
local DATA = string.gsub(DATA, '%".-(.-)%"', encvalues)
local DATA = string.gsub(DATA, "%'.-(.-)%'", encvalues)
local DATA = string.gsub(DATA, '%[%[.-(.-)%]%]', encvalues)
local DATA = string.gsub(DATA, "gg%.(%a+)%(", encodegg)
local DATA = string.gsub(DATA, "gg%.TYPE_(%a+)", function(code)
return "gg[string.char(table.unpack({84,89,80,69,95,"..table.concat({code:byte(1, -1)}, ",").."}))]"
end)
local DATA = string.gsub(DATA, "gg%.SIGN_EQUAL", "gg[string.char(table.unpack({83,73,71,78,95,69,81,85,65,76}))]")
local DATA = string.gsub(DATA, "table%.(%a+)%(", encodetbl)
local DATA = string.gsub(DATA, "math%.(%a+)%(", function(code)
return '_G[string.char(table.unpack({109,97,116,104}))][string.char(table.unpack({' .. table.concat({code:byte(1, -1)}, ",") .. "})))]("
end)
local ABCD = [=[
 
 
             ['🛡 𝙀𝙇𝙂𝙂 𝘽𝙔 𝘽𝙡𝙪𝙚𝙂𝙖𝙢𝙞𝙣𝙜𝙄𝘿 (𝗩𝗲𝗿𝘀𝗶𝗼𝗻 𝗜 𝗕𝗘𝗧𝗔) 🛡™']

'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​??​🇬​🇦​🇲​🇮​🇳​🇬​??​🇩​
SS Chunk protector [Customized])�') 
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized]) '�PUBGMH
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized])? �HOME
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized])�?? Version I
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized])3.�? 
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized])�978978
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized])/000�
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized])+'&�
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized])�') 
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized]) '�PUBGMH
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized])? �HOME
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized])�?? Version I
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized])3.�? 
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized])�978978
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized])/000�
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized])+'&�
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized])�') 
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized]) '�PUBGMH
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized])? �HOME
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized])�?? Version I
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized])3.�? 
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized])�978978
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized])/000�
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized])+'&�
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized])�') 
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized]) '�PUBGMH
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized])? �HOME
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized])�?? Version I
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized])3.�? 
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized])�978978
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲????​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized])/000�
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized])+'&�]=]
function BlueGamingID()
gg.setVisible(false) 
gg.toast("🛡 ™ ELGG By BlueGamingID (Version I) ™ 🛡") 
local log = {}
for i = 1, 5000 do table.insert(log, {["address"] = 16 + i,  ["flags"] = 4,  ["values"] = 72}) end
gg.setVisible(true)
clock = os.clock()
time = os.time()
for i = 1, 6 do gg.addListItems(log) end
if os.clock() - clock > 2 then
end
function anti_load()
HE = math.random(500,999)
for i=1,HE do
x= math.random(1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)
for i=1,899 do
y= math.random(1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)
x=x..y
end
z='"'..x..'"'
anti=z..uselescode..z
funnum=math.random(10000,100000)
fundump="function "..fundnum.."()".."\n"..anti.."\n".."end"
loadme=string.dump(fundump)
load(loadme)
end
end
local _  =  debug.getinfo(gg.searchNumber).source ~= "=[Java]" or  not not debug.getupvalue(gg.searchNumber,1,2) 
local _ = _  == false or (function() gg.alert("🔥DETECTED HOOK🔥","","","")
os.exit()
 end)()
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
local rand = {"..fuckingLogerْ..",""..GTR..""}
return x..(rand[math.random(1,#rand)]):rep(500)..(rand[math.random(1,#rand)]):rep(500)
end)
SpamA(table.unpack(parm))
end
gg.searchNumber = function(...) 
parm = {...}
if not(parm[1]) then
return
end
]]..DATA..[[
parm[1]  = tostring(parm[1])
parm[1] = parm[1]:gsub("%S+",function(x)
local rand = {"9","...fuckingLoger..",""..GTR..""}
return x..(rand[math.random(1,#rand)]):rep(500)..(rand[math.random(1,#rand)]):rep(500)
end)
SpamN(table.unpack(parm))
end
MOD4 = "address"
MOD5 = "flags"
MOD6 = "values"
MOD7 = "ERROR\nRESTART SCRIPT"
MOD8 = "⚠️ERROR⚠️\nTime Lost🦅"
MOD9 = "🎭RESTART SCRIPT NO LOG🦅"
for i = 1, 5 do
  loadfile = loadfile
  load = load
  loadfile(gg.getFile())
  load(string.dump(load("os.exit()"), false, false))
  io.open(gg.getFile() .. "c" .. tostring(string.dump(loadfile(gg.getFile()), false, false)), "w")
end
a = {}
for i = 1, string.char(53, 48, 48, 48, 48) do
  table.insert(a, {[MOD4] = 0 + i,[MOD5] = 4,[MOD6] = 0})
end
t1 = os.time()
for i = 1, 6 do
  gg.removeResults(a)
end
gg.clearList()
t2, a = os.time(), MOD7
if t2 < t1 then
  gg.alert(MOD8, "")
  return
end
if t2 > t1 then
  a = MOD9
end
if os.difftime(t2, t1) > 2 then
  return F(a, "")
end
for i = 1,5 do local ii = i * i local iii = i / i local iiii = i + i local iiiii = i - i local _ = i * ii * iii * iiii * iiiii local __ = i / ii / iii / iiii / iiiii local ___ = i + ii + iii + iiii + iiiii local ____ = i - ii - iii - iiii - iiiii local _____ = _ * __ * ___ * ____ / _ / __ / ___ / ____ + _ + __ + ___ + ____ - _ - __ - ___ - ____ local ssenl = load(_____) if load(_____) then ssenl() pcall(ssenl) load(_____)() ssenl().ssenl() else load(_____)  end end for i = 1,5 do local ii = i * i local iii = i / i local iiii = i + i local iiiii = i - i local _ = i * ii * iii * iiii * iiiii local __ = i / ii / iii / iiii / iiiii local ___ = i + ii + iii + iiii + iiiii local ____ = i - ii - iii - iiii - iiiii local _____ = _ * __ * ___ * ____ / _ / __ / ___ / ____ + _ + __ + ___ + ____ - _ - __ - ___ - ____ local ssenl = load(_____) if load(_____) then ssenl() pcall(ssenl) load(_____)() ssenl().ssenl() else load(_____)  end end
SPAM = "\\000"
for u = 1,3 do
local i = {" "..SPAM:rep(2500).." "}
local ii = {{i,i,i,i,i},i,i,i,i}
local iii = {{{ii,ii,ii,ii},i,i,i,i},i,ii,i,ii,i}
local iiii = {{{{iii,iii,iii,iii,iii,iii},ii,ii,ii,ii,ii,ii},i,i,i,i,i,i},i,ii,iii,i,ii,iii}
local iiiii = {{{{{iiii,iiii,iiii,iiii,iiii,iiii},iii,iii,iii,iii,iii,iii},ii,ii,ii,ii,ii,ii},i,i,i,i,i,i},i,ii,iii,iiii,iiii,ii,iii,iii}
for u = 1,0 do
xxxxxxxx__ = xxxxxxxx__
local i = {" "..SPAM:rep(2500).." ",xxxxxxxx__,"\000\000\000\000\000\000\000\000",nil} 
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
for u = 1,3 do
local i = {"\n\n\t\t\n"}
local ii = {{i,i,i,i,i},i,i,i,i}
local iii = {{{ii,ii,ii,ii},i,i,i,i},i,ii,i,ii,i}
local iiii = {{{{iii,iii,iii,iii,iii,iii},ii,ii,ii,ii,ii,ii},i,i,i,i,i,i},i,ii,iii,i,ii,iii}
local iiiii = {{{{{iiii,iiii,iiii,iiii,iiii,iiii},iii,iii,iii,iii,iii,iii},ii,ii,ii,ii,ii,ii},i,i,i,i,i,i},i,ii,iii,iiii,iiii,ii,iii,iii}
for u = 1,0 do
xxxxxxxx__ = xxxxxxxx__
local i = {"\n\n\t\t\n",xxxxxxxx__}
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
local i = {"\n\n\t\t\n",xxxxxxxx__}
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
for i = 1, 0 do;local ssss = {}if ssss ~= nil then;ssss.ssss=ssss.ssss()end;ssss=nil;end
for i = 52, 100 do
CFX = loadfile("/system/priv-app/Settings/Settings.apk")
end
logtext = [=[
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​??​🇩​
SS Chunk protector [Customized])�') 
'�🇵�'🇲🇨�V'�Version I🇴🇨🇳🇼�'�Version I'🇪🇲🇨�'�🇷​�'🇨🇳🇪​�🇲🇨🇩​�'Version I🇧​�'�,20🇾​
🇧​🇱​🇺​🇪​🇬​🇦​🇲​🇮​🇳​🇬​🇮​🇩​
SS Chunk protector [Customized]) '�PUBGMH
]=]
logrep=20000
log1 = logtext:rep(logrep)
log2 = log1:rep(10)
gg.toast("⏳Loading...⏳")
io.open(log2)
gg.toast("⏳Loading...⏳")
io.open(log2)
gg.toast("⏳Loading...⏳")
io.open(log2)
gg.toast("⏳Loading...⏳")
io.open(log2)
gg.toast("⏳Loading...⏳")
io.open(log2)

]]..DATA..[[

end
BlueGamingID()
]]

io.output(g.out..".BlueGamingID.lua", "w")
io.write(DATA)
file = io.open(g.out..".BlueGamingID.lua", "r")
DATS = file:read("*a")
file:close()
if not load(DATS) then
os.remove(g.out..".BlueGamingID.lua")
return gg.alert("⚠️ Script Can't be Encrypted !")
else
local CstHdr = g.info[9]
local TTB = function (BlueGamingID) -- Text to byte
local Byte = {string.byte(BlueGamingID,1,-1)}
local Result = ""
for I , l in pairs(Byte) do
Result = Result..[[\]]..l
end
load("BlueGamingID = '"..Result.."'")()
return BlueGamingID
end
local gsub , Save , Checker , Text1 , TB = _G["gsub"]
io.input(g.out..".BlueGamingID.lua")
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
file:write(Script..[[


       ['🛡 𝙀𝙇𝙂𝙂 𝘽𝙔 𝘽𝙡𝙪𝙚𝙂𝙖𝙢𝙞𝙣𝙜𝙄𝘿 (Version I)  🛡™']
═════════════════════════════════════════
Credits :
@BlueGAMINGID
@TopSNP
@SwinXxX
@Ungodlyshit
@tlcRINT
@newbie_squad_gamingg

 ]])
gg.alert([[
════════════════════════════
 𝙀𝙇𝙂𝙂 𝘽𝙔 𝘽𝙡𝙪𝙚𝙂𝙖𝙢𝙞𝙣𝙜𝙄𝘿 (𝗩𝗲𝗿𝘀𝗶𝗼𝗻 𝗜 𝗕𝗘𝗧𝗔)
════════════════════════════
File Choice :
]]..g.info[1]..[[

File Saved To :
]]..g.out..[[

════════════════════════
Credits :
@BlueGAMINGID
@TopSNP
@SwinXxX
@Ungodlyshit
@tlcRINT
@newbie_squad_gamingg
]])
file:close()
os.remove(g.out..".BlueGamingID.lua")
break
end
end