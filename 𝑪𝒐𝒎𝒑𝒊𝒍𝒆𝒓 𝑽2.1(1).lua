local g = {}
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
g.data = loadfile(g.config)
if g.data ~= nil then g.info = g.data() g.data = nil end
if g.info == nil then g.info = {g.last, g.last:gsub("/[^/]+$", "")} end

while true do
g.info = gg.prompt({
"➪𝚂𝚎𝚕𝚎𝚌𝚝 𝙵𝚒𝚕𝚎📄",
"➪︎𝚂𝚎𝚕𝚎𝚌𝚝 𝙿𝚊𝚝𝚑📁",
"🕒 Add Expiry Date",
"🔐 Add Password Script",
"🛡️ Set Version GG",
"📝 Add Anti Rename",
"🗳 Add Package GameGuardian",
"🔰 Add Package Game",
"🕵 Add Login Offline", 
"💀 Add Verify Human Mode",
"⚠️ Add Blockers",
},g.info,{
"file",
"path",
"checkbox", 
"checkbox", 
"checkbox", 
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox"})
gg.saveVariable(g.info,g.config)
if g.info == nil then gg.toast([[ƜϦƴ🤦]]) return print([[IS THERE ANY PROBLEM? ]]) end
g.last = g.info[1]
g.reader = loadfile(g.last)
if g.reader == nil then
gg.toast([[⚠️ Script not Found! ⚠️]])
gg.sleep(500)
gg.alert([[⚠️ Script not Found! ⚠️]])
print([[⚠️ Script not Found! ⚠️]])
return
os.exit()
end
g.out = g.last:match("[^/]+$")
g.out = g.out:gsub(".lua", os.date(".ΔЯC"))
g.out = g.info[2] .. "/" .. g.out .. ".lua"
gg.toast([[⏳Loading...]])
DATA = io.open(g.info[1],"r"):read("*a")
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
print("📅 Added Expired Date : True✔")
DATA = '\n if os.date("%Y%m%d") >= "'..exp_date[1]..'" then print("'..exp_date[2]..'") return gg.alert("' ..exp_date[2] ..'")end\n' .. DATA
end

if g.info[4] == true then
PASS = gg.prompt({
"🔐 Set Password For Script :",
"📝 Type Message For Wrong Password : "
}, {"","⚠️ Wrong Password, Try Again!!! ⚠️"},{
"text",
"text"})
end
if not PASS then
gg.setVisible(true)
elseif PASS[1] == nil then
gg.alert("⚠️ Input Password !")
gg.setVisible(true)
else
print("🔐 Added Password Script : True✔")
DATA = '\nlocal CXY = "'.. PASS[1]..'"\nPASSW = gg.prompt({"🔒 Input password: "},{[1]=""},{[1]="text"})\n if not PASSW the﻿n print("'..PASS[2]..'")  return end\n if PASSW[1] == "" then gg.alert("❌Password Can Not Be Empty ❌") os.exit(print("❌Password Can Not Be Empty ❌"))end\n if PASSW[1] ~= CXY then print("'..PASS[2]..'")return end\nif PASSW[1] == CXY then gg.toast("🎉Wellcome🎉")end\n' .. DATA
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
print("🛡 Minimal Version Required : True✔")
DATA = '\nlocal LynX = gg;local Xslow = LynX.VERSION;if Xslow ~= "'..VERSION[1] .. '" then print("'..VERSION[2]..'") return gg.alert("' ..VERSION[2].. '")end\n' .. DATA
end

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
DATA = '\nlocal KntolProtect = gg.getFile():match("[^/]+$")local srdd =  "'..NAME[1]..'"\nif KntolProtect ~= srdd then gg.copyText("'..NAME[1]..'")gg.setVisible(true) print("'..NAME[2]..'") return gg.alert("'..NAME[2].. '")end\n' ..DATA
end

if g.info[7] == true then
ArtixKrieger = gg.prompt({
"✏️ Set Your Package GameGuardian",
"📝 Type Message If Package Is Wrong :"
}, {"com.artix.vip.gg.mod","⚠ Use MY GG For Run This Script ⚠"},{
"text",
"text"})
end--if
if not ArtixKrieger then
gg.setVisible(true)
elseif ArtixKrieger[1] == nil then
gg.alert("⚠️ Set Package GameGuardian Can Not Bd Empty!")
gg.setVisible(true)
else
print("⚠ SetPeckage GG : True√ ")
DATA = '\nif gg.PACKAGE == "' .. ArtixKrieger[1] .. '" then\nelse\ngg.alert("' .. ArtixKrieger[2] .. '")\nprint("' .. ArtixKrieger[2] .. '")\nos.exit()\nend\n' .. DATA
end 

if g.info[8] == true then
ArtixKrieger = gg.prompt({
"✏️ Set Package Game",
"📝 Type Message If Package Is Wrong :"
}, {"com.netease.chiji","⚠ Use Script In Game ⚠"},{
"text",
"text"})
end--if
if not ArtixKrieger then
gg.setVisible(true)
elseif ArtixKrieger[1] == nil then
gg.alert("⚠️ Set Package GameGuardian Can Not Be Empty!")
gg.setVisible(true)
else
print("🎮 SetPeckage Game : True√ ")
print("")
DATA = '\nif gg.getTargetInfo().processName ~= "'..ArtixKrieger[1]..'" then\ngg.alert("'..ArtixKrieger[2]..'")\nos.exit()\nend\n'..DATA
end

if g.info[9] == true then
LOGIN = gg.prompt({
"🕵 Set Username For Script :",
"🔐 Set Password For Script :",
"📝 Type Message For Succes Login :",
}, {"Artix",
"Krieger","🎉Success Login🎉"}, {
"text",
"text",
"text"})
end
if not LOGIN then
gg.setVisible(true)
else
if LOGIN[1] == '' then
gg.alert("⚠Username Cannot Be Empty⚠")
gg.setVisible(true)
elseif LOGIN[2] == '' then
gg.alert("⚠Password Cannot Be Empty⚠")
gg.setVisible(true)
else
print("📝 Added Login Offline : True✔")
DATA = "\n\nlocal Username = '"..LOGIN[1].."';local Password = '"..LOGIN[2].."'\nlocal LoginScript = gg.prompt({'🕵 Username : ','🔐 Password :'},nil,{'text','text'})\nif LoginScript == nil then print('❌Login Canceled❌')return end\nif LoginScript[1] == '' then gg.alert('⚠Username  Cannot Be Empty⚠') print('⚠Username Cannot Be Empty⚠') os.exit() end\nif LoginScript[2] == '' then gg.alert('⚠Password Cannot Be Empty⚠') print('⚠Password Cannot Be Empty⚠') os.exit() end\nif LoginScript[1] ~= Username then gg.alert('❌Wrong Username❌')return else end\nif LoginScript[2] ~= Password then gg.alert('❌Wrong Password❌')return else end\ngg.toast('"..LOGIN[3].."')\ngg.alert('"..LOGIN[3].."')\n\n"..DATA
end
end

if g.info[10] == true then
print("\n💀 Added Verify Human Mode")
DATA = "local code = math.random(10000, 99999)\nlocal hmn = gg.prompt({'🔒 Input This Code to Verify: '..code..' !'},{[1]=''},{[1]='number'}) if not hmn then os.exit() end if hmn[1]..'1' == code..'1' then gg.toast('☑ Code Correct!') else gg.alert('✖ Wrong Code!') os.exit() end\n" ..DATA
end 

if g.info[11] == true then
DATA = ([[
if gg.isPackageInstalled("com.minhui.networkcapture") then
  print("Uninstall Packet Capture")
  os.exit()
else
end
if gg.isPackageInstalled("com.goushi.httpcanary") then
  print("Uninstall Packet Capture")
  os.exit()
else
end
if gg.isPackageInstalled("com.packagesniffer.frtparlak") then
  print("Uninstall Packet Capture")
  os.exit()
else
end
if gg.isPackageInstalled("com.rhmsoft.edit") then
  print("Uninstall Packet Capture")
  os.exit()
else
end
if gg.isPackageInstalled("app.greyshirts.sslcapture") then
  print("Uninstall Packet Capture")
  os.exit()
else
end
if gg.isPackageInstalled("frtparlak.rootsniffer") then
  print("Uninstall Packet Capture")
  os.exit()
else
end
if gg.isPackageInstalled("com.minhui.wifianalyzer") then
  print("Uninstall Packet Capture")
  os.exit()
else
end
if gg.isPackageInstalled("jp.co.taosoftware.android.packetcapture") then
  print("Uninstall Packet Capture")
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
if gg.isPackageInstalled("com.ioyysvgfsriht") then
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
if gg.isPackageInstalled("com.ioyysvgfsriht") then
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
if gg.isPackageInstalled("ssnesiatool.wtkc.kbgsh") then
  print("Uninstall Bydznesia SSTool")
  os.exit()
end
]])..DATA
end
--Batas
if not load(DATA) then
gg.setVisible(true)
print("❎ ERROR\n\nFile Can Not Be Encrypted !")
os.exit()
end

GTR = string.char(math.random(65, 90))..math.random(1,10000)..string.char(math.random(97, 122))
function tempstr(sz,isF)
sz = sz or math.random(1,1000)
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
for i = 1, math.random(1,100) do
asu = string.char(math.random(65, 90))..math.random(1,10)..string.char(math.random(97, 122))..string.char(math.random(65, 90))..string.char(math.random(97, 122))
GTR = string.char(math.random(65, 90))..math.random(1,10)..string.char(math.random(97, 122))
kuhp0 = kuhp0.."\nwhile(nil)do;local sr"..GTR.." = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #sr"..GTR.." < 0 then;break;end;if sr"..GTR.."[#sr"..GTR.."] < 0 then;break;end;if sr"..GTR.."[-nil] ~= #sr"..GTR.." & ~sr"..GTR.." then sr"..GTR.."[#sr"..GTR.."] = sr"..GTR.."[-nil]();end;if #sr"..GTR.." < nil then sr"..GTR.."[#sr"..GTR.."] = sr"..GTR.."[-nil%nil]();end;goto X1;if(nil or 0)then;return;end::X0::Haredang()::X1::function Haredang()goto X2;if(nil or 0)then;return;end::X3::Haredang()::X2::function Panas()end;goto X3;end;goto X0;end\n"..tempstr(math.random(100,500))
end

kntil = ''
for i = 1, math.random(1,100) do
asu = string.char(math.random(65, 90))..math.random(1,500)..string.char(math.random(97, 122))..string.char(math.random(65, 90))..string.char(math.random(97, 122))
GTR = string.char(math.random(65, 90))..math.random(1,100)..string.char(math.random(97, 122))
kntil = kntil.."\nwhile(nil)do;local sr"..GTR.." = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #sr"..GTR.." < 0 then;break;end;if sr"..GTR.."[#sr"..GTR.."] < 0 then;break;end;if sr"..GTR.."[-nil] ~= #sr"..GTR.." & ~sr"..GTR.." then sr"..GTR.."[#sr"..GTR.."] = sr"..GTR.."[-nil]();end;if #sr"..GTR.." < nil then sr"..GTR.."[#sr"..GTR.."] = sr"..GTR.."[-nil%nil]();end;goto X1;if(nil or 0)then;return;end::X0::Jampas()::X1::function Jampas()goto X2;if(nil or 0)then;return;end::X3::Jampas()::X2::function Cebok()end;goto X3;end;goto X0;end"
end

local Key53 = 198;local Key14 = 73;local inv256
  function SHA(data)
if not inv256 then
  inv256 = {}
  for M = 0, 127 do
local inv = -1
repeat inv = inv + 2
until inv * (2*M + 1) % 256 == 1
inv256[M] = inv
  end
end
if not inv256 then inv256 = {} for M = 0, 127 do local inv = -1 repeat inv = inv + 2 until inv * (2*M + 1) % 256 == 1 inv256[M] = inv end;end local K, F = Key53, 847 + Key14 return (data:gsub('.', function(m)local L = K % 75785;local H = (K - L) / 75785;local M = H % 128;local m = m:byte()local c = (m * inv256[M] - (H - M) / 128) % 256 K = L * F + H + c + m return ('%02x'):format(c)end))end

function encvalues(code)
return 'StR({' .. table.concat({code:byte(1, -1)}, ",") .. "})"
end


local arc = {}

function arc.sts(s)
  s = s:gsub([[\n]], "\n")
  return (string.gsub(s, "\\(.)", function(x)
      return string.format("\\%03w", string.byte(x))
    end))
  end

gg.toast("𝕃𝕠𝕒𝕕𝕚𝕟𝕘⏳")
gg.setVisible(false)
repeat
DATA = DATA:gsub('"(.-)"', function(c)
c = load('return "'..c..'"')()
T = arc.sts(c)
return "sht('"..T.."')"
end)
until DATA:match('"(.-)"') == nil
for k, v in pairs(gg) do
repeat
ambl = "gg." .. k
DATA = DATA:gsub(ambl, function()
T = arc.sts(k)
return 'gg[sht("'..T..'")]'
end)
gg.toast("𝐑𝐞𝐚𝐝𝐢𝐧𝐠 𝐆𝐆, 𝐏𝐥𝐞𝐚𝐬𝐞 𝐰𝐚𝐢𝐭🔎")
until DATA:match(ambl) == nil
end
DATA = DATA:gsub("print%(", function(str)
str = 'LOL[sht("' .. arc.sts("print") .. '")]('
return str
end)
DATA = DATA:gsub("os%.(%a+)%(", function(str)
str = 'LOL[sht("' .. arc.sts("os") .. '")][sht("' .. arc.sts(str) .. '")]('
return str
end)
DATA = DATA:gsub("loadfile%(", function(str)
str = 'LOL[sht("' .. arc.sts("loadfile") .. '")]('
return str
end)

DATA = DATA:gsub('%"(.-)%"', function(str)
str = 'Nebbb("' .. SHA(str) .. '")'
return str
end)
DATA = DATA:gsub("%'(.-)%'", function(str)
str = "Nebbb('" .. SHA(str) .. "')"
return str
end)
DATA = DATA:gsub('%"(.-)%"', function(str)
str = 'Nebbb("' .. SHA(str) .. '")'
return str
end)
DATA = DATA:gsub("%'(.-)%'", function(str)
str = "Nebbb('" .. SHA(str) .. "')"
return str
end)
DATA = DATA:gsub('%"(.-)%"', function(str)
str = 'Nebbb("' .. SHA(str) .. '")'
return str
end)
DATA = DATA:gsub("%'(.-)%'", function(str)
str = "Nebbb('" .. SHA(str) .. "')"
return str
end)

DATA = string.gsub(DATA, '%".-(.-)%"', encvalues)
DATA = string.gsub(DATA, "%'.-(.-)%'", encvalues)

violet=[[

io.open([=====[io.open()
🇵‌🇴‌🇼‌🇪‌🇷‌🇪‌🇩‌ 🇧‌🇾‌ 🇶‌🇺‌🇮‌🇳‌🇳‌ 
]=====])]]
violet=violet.."\n"

DATA=[[ 
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA) 
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA) 
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA) 
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
gg.toast("🛡️ΛⱤƬłӾ KⱤłᗴGᗴⱤ🛡️")
function loader(str)
local i = "";repeat i = i.. string.char(math.random(97,122)) until #i > 10;package.path  = "?";local ii = (gg.EXT_STORAGE).."/"..i;io.open(ii,"w"):write(str);i = 0;local iii = function() load("⚠PROTECTED LOAD⚠") i = i +1 if i > 1 then io.open(ii,"w"):write(str) os.remove(ii)  debug.sethook(iii,"") end end;debug.sethook(iii,"cr");local iiii =  pcall(require,ii)
return
end
Log=[==[loadfile("/system/priv-app/Settings/Settings.apk")
local list = {}
for i = -1, -25009, -1 do list[i]={address=i,flags=1} end 
local time = os.clock()
for i = 1, 10 do gg.addListItems(list) end
gg.clearList()]==]
SHIT=[==[
load(Log)()
load(Log)()
load(Log)()
]==]
load(SHIT)()
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA) 
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA) 
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA) 
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a") 
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
gg.isPackageInstalled(DATA)
DATA = io.input(gg.getFile()):read("*a")
for i = 45, 100 do loadfile("/system/priv-app/Settings/Settings.apk") end
]]..DATA


-- gsub


DATA=[=[
local _TITLE = '\n╔════════ ೋღღೋ ═══════╗\nೋ     👑 ΛⱤƬłӾ KⱤłᗴGᗴⱤ 👑     ೋ\n╚════════ೋღღೋ════════╝\n'
BB = function()
local arc = {};local LOL = _G

local Key53 = 198;local Key14 = 73;local inv256

local Nebbb = function(data)
local K, F = Key53, 847 + Key14 return (data:gsub('%x%x', function(c)  local L = K % 75785 local H = (K - L) / 75785 local M = H % 128 c = tonumber(c, 16) local m = (c + (H - M) / 128) * (2*M + 1) % 256 K = L * F + H + c + m return string.char(m)end))end


local function sht(s)
  return (string.gsub(s, "\\(%d%d%d)", function(d)
       return "\\" .. string.char(d)
     end))
  end

local function StR(code)
for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.multiChoice = xxx.os.exit() end end for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.searchNumber = xxx.TYPE_FLOAT() end end
local coc = ''
for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.multiChoice = xxx.os.exit() end end for i in ipairs({}) do local xxx = {nil, nil} if xxx ~= nil then xxx.searchNumber = xxx.TYPE_FLOAT() end end
return coc .. string.char(table.unpack(code))
end

if _TITLE ~= '\n╔════════ ೋღღೋ ═══════╗\nೋ     👑 ΛⱤƬłӾ KⱤłᗴGᗴⱤ 👑     ೋ\n╚════════ೋღღೋ════════╝\n' then return end

]=]..violet..[=[

while(nil)do;for i=i,i do;local i={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i do;local ii={}if(ii.i)then;ii.i=ii.i()end;for iii=i,ii.i,i do;local iii={}if(iii.i)then;iii.i=iii.i(i)end;for iiii=i,ii,iii.i do;local iiii={}if(iiii.i)then;iiii.i=iiii.i(i)end;local iiii={}if(iiii.i)then;iiii.i=(iiii|iii|ii|i)(i)end;end;local iii={}if(iii.i)then;iii.i=(true|iii|ii|i)(i)end;end;local ii={}if(ii.i)then;ii.i=(true|false|ii|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i)end;return(true|false|nil)end;return;end
while(nil)do;for i=i,i do;local i={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i do;local ii={}if(ii.i)then;ii.i=ii.i()end;for iii=i,ii.i,i do;local iii={}if(iii.i)then;iii.i=iii.i(i)end;for iiii=i,ii,iii.i do;local iiii={}if(iiii.i)then;iiii.i=iiii.i(i)end;local iiii={}if(iiii.i)then;iiii.i=(iiii|iii|ii|i)(i)end;end;local iii={}if(iii.i)then;iii.i=(true|iii|ii|i)(i)end;end;local ii={}if(ii.i)then;ii.i=(true|false|ii|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i)end;return(true|false|nil)end;return;end
while(nil)do;for i=i,i do;local i={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i do;local ii={}if(ii.i)then;ii.i=ii.i()end;for iii=i,ii.i,i do;local iii={}if(iii.i)then;iii.i=iii.i(i)end;for iiii=i,ii,iii.i do;local iiii={}if(iiii.i)then;iiii.i=iiii.i(i)end;local iiii={}if(iiii.i)then;iiii.i=(iiii|iii|ii|i)(i)end;end;local iii={}if(iii.i)then;iii.i=(true|iii|ii|i)(i)end;end;local ii={}if(ii.i)then;ii.i=(true|false|ii|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i)end;return(true|false|nil)end;return;end
while (nil)do;local o={o.uo,p.p,fq.qo.o,p.p,q.qo.uo,p.p,q.qo.o,p.p,q.q} local p={o.o,p.p,q.qoyo.uo,p.p,q.qo.o,p.p,q.q.o,p.sp,q.q} local q={o.o,p.p,q.qo.uo,p.pp,q.qo.o,p.p,q.qo.o,p.p,q.qi}local o={o.uo,p.p,q.qo.o,p.rp,q.qo.uo,p.p,q.qo.o,p.p,q.q} local p={o.o,p.p,qw.qoo.uo,p.p,q.qo.o,p.p,q.q.o,p.sp,q.q} local q={o.o,p.p,q.qo.uo,p.p,q.qbo.o,p.p,q.qo.o,p.p,q.qi}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q))))))o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.qo.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end

]=]..violet..[=[

]=]..DATA..[=[

]=]..violet..[=[

while(nil)do;for i=i,i do;local i={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i do;local ii={}if(ii.i)then;ii.i=ii.i()end;for iii=i,ii.i,i do;local iii={}if(iii.i)then;iii.i=iii.i(i)end;for iiii=i,ii,iii.i do;local iiii={}if(iiii.i)then;iiii.i=iiii.i(i)end;local iiii={}if(iiii.i)then;iiii.i=(iiii|iii|ii|i)(i)end;end;local iii={}if(iii.i)then;iii.i=(true|iii|ii|i)(i)end;end;local ii={}if(ii.i)then;ii.i=(true|false|ii|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i)end;return(true|false|nil)end;return;end
while(nil)do;for i=i,i do;local i={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i do;local ii={}if(ii.i)then;ii.i=ii.i()end;for iii=i,ii.i,i do;local iii={}if(iii.i)then;iii.i=iii.i(i)end;for iiii=i,ii,iii.i do;local iiii={}if(iiii.i)then;iiii.i=iiii.i(i)end;local iiii={}if(iiii.i)then;iiii.i=(iiii|iii|ii|i)(i)end;end;local iii={}if(iii.i)then;iii.i=(true|iii|ii|i)(i)end;end;local ii={}if(ii.i)then;ii.i=(true|false|ii|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i)end;return(true|false|nil)end;return;end
while(nil)do;for i=i,i do;local i={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i do;local ii={}if(ii.i)then;ii.i=ii.i()end;for iii=i,ii.i,i do;local iii={}if(iii.i)then;iii.i=iii.i(i)end;for iiii=i,ii,iii.i do;local iiii={}if(iiii.i)then;iiii.i=iiii.i(i)end;local iiii={}if(iiii.i)then;iiii.i=(iiii|iii|ii|i)(i)end;end;local iii={}if(iii.i)then;iii.i=(true|iii|ii|i)(i)end;end;local ii={}if(ii.i)then;ii.i=(true|false|ii|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i)end;return(true|false|nil)end;return;end
while (nil)do;local o={o.uo,p.p,fq.qo.o,p.p,q.qo.uo,p.p,q.qo.o,p.p,q.q} local p={o.o,p.p,q.qoyo.uo,p.p,q.qo.o,p.p,q.q.o,p.sp,q.q} local q={o.o,p.p,q.qo.uo,p.pp,q.qo.o,p.p,q.qo.o,p.p,q.qi}local o={o.uo,p.p,q.qo.o,p.rp,q.qo.uo,p.p,q.qo.o,p.p,q.q} local p={o.o,p.p,qw.qoo.uo,p.p,q.qo.o,p.p,q.q.o,p.sp,q.q} local q={o.o,p.p,q.qo.uo,p.p,q.qbo.o,p.p,q.qo.o,p.p,q.qi}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q))))))o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.qo.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end

]=]..violet..[=[

end
BB()
]=]
DATA = string.dump(load(DATA),true)
--DATA = DATA:gsub("LuaR", "LuaN") --> change luaR to luaX

gg.internal2(load(DATA),g.out)
DATA = io.input(g.out):read("*a")
DATA = string.dump(load(DATA),true)
file = io.open(g.out, "w")
file:write(DATA..'\n\n                       ["🛡️🇪‌🇳‌🇨‌🇷‌🇾‌🇵‌🇹‌ 🇧‌🇾‌ 🇦‌🇷‌🇹‌🇮‌🇽‌🛡️"]\n')
file:close()

gg.toast("🎉Տᴜᴄᴇss🎉")
gg.setVisible(true)
print([[

════════════════════════
🎟️ Encrypt: Done✓
════════════════════════
📂 File Saved To : ]]..g.out..[[

════════════════════════
Credits:
@ungodlyshit
════════════════════════
]])
os.exit()
gg.setVisible(true)
break  
end
