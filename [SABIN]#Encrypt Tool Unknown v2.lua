--DECRYPTED BY @SABINXD

local L0_1984
L0_1984 = {}
L0_1984.last = gg.getFile()
L0_1984.info = nil
L0_1984.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
DATA = loadfile(L0_1984.config)
if DATA ~= nil then
  L0_1984.info = DATA()
  DATA = nil
end
if L0_1984.info == nil then
  L0_1984.info = {
    L0_1984.last,
    L0_1984.last:gsub("/[^/]+$", "")
  }
end
UnknownAlert = gg.alert("▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬\n🛡️Encrypt Tool Unknown v2🛡️\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬\n➣ Fast Load 98℅\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬\n➣ Base 58 + String\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬\n➣ Block SSTool\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬\n➣ Byte + Key\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬", "↪Iniciar↩", "↪Sair↩")
if UnknownAlert == nil then
end
if UnknownAlert == 1 then
end
if UnknownAlert == 2 then
  return os.exit()
end
L0_1984.info = gg.prompt({
  "↪ File",
  "↪ Path",
  "🕒 Add Expirity Date",
  "🔐 Add Password",
  "🛡️ Add Minimal GG Required",
  "✏️ Add Rename Blocker",
  "💀 Add Verify Human Mode",
  "♻️ Add App Info",
  "🗳️ Add Package Game",
  "🎃 Add ByPass SSTool 1 - 0",
  "🚀 Add Custom Lua Header (LuaxXx)",
  "📌 Auto Detect Descrypt",
  "🕵️ Add Package GameGuardian",
  "🎯 Add Login Offline",
  "⏰ Add Loading"
}, L0_1984.info, {
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
  "checkbox",
  "checkbox",
  "checkbox",
  "checkbox",
  "checkbox"
})
if L0_1984.info == nil then
  return
end
gg.saveVariable(L0_1984.info, L0_1984.config)
L0_1984.last = L0_1984.info[1]
if loadfile(L0_1984.last) == nil then
  do return gg.alert("🔥Error Detected🔥") end
  return
end
L0_1984.out = L0_1984.last:match("[^/]+$")
L0_1984.out = L0_1984.out:gsub(".lua", ".v2Unknown")
L0_1984.out = L0_1984.info[2] .. "/" .. L0_1984.out .. ".lua"
print("▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬\n🛡️Encrypt Tool Unknown v2🛡️\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬\n\n " .. L0_1984.out .. "")
info = {
  L0_1984.out
}
if L0_1984.info[3] == true then
  day = os.date("%d")
  exp_date = gg.prompt({
    "📆 Set Expired Date : ",
    "📝 Type Expired Message : "
  }, {
    os.date("%Y%m" .. day + 7),
    "⚠️ Script Expired ⚠️️"
  }, {"number", "text"})
end
if not exp_date then
  gg.setVisible(true)
elseif exp_date[1] == nil then
  gg.alert("📆 Date Can Not Be Empty !")
  gg.setVisible(true)
else
  print("\n📅 Added Expired Date : " .. exp_date[1])
end
if L0_1984.info[4] == true then
  PASS = gg.prompt({
    "🔐 Set Password For Script :",
    "📝 Type Message For Wrong Password : "
  }, {
    "",
    "⚠️ Wrong Password ⚠️"
  }, {"text", "text"})
end
if not PASS then
  gg.setVisible(true)
elseif PASS[1] == nil then
  gg.alert("⚠️ Input Password !")
  gg.setVisible(true)
else
  print("\n🔐 Added Password Script : " .. PASS[1])
end
if L0_1984.info[5] == true then
  VERSION = gg.prompt({
    "🔐 Set Minimal GG Version : ",
    "🗒️ Set Error GG Message :"
  }, {
    gg.VERSION,
    "⚠️ Error GG VERSION ⚠️"
  }, {"number", "text"})
end
if not VERSION then
  gg.setVisible(true)
elseif VERSION[1] == nil then
  gg.alert("🛡️ Input Minimal Required GG Version !")
  gg.setVisible(true)
else
  print("\n🛡️ Added Minimal GG Version : " .. VERSION[1])
end
if L0_1984.info[6] == true then
  NAME = gg.prompt({
    "🗒️ Set Name For Script :",
    "📝 Type Message For Name Changed :"
  }, {
    L0_1984.out:match("[^/]+$"),
    "⚠️ RENAME DETECTED ⚠️"
  }, {"text", "text"})
end
if not NAME then
  gg.setVisible(true)
elseif NAME[1] == nil then
  gg.alert("📝 Set Name Can Not Be Empty !")
  gg.setVisible(true)
else
  print("\n📝 Added Rename Blocker : " .. NAME[1])
end
if L0_1984.info[7] == true then
  print("\n💀 Added Verify Human Mode : ✔")
end
if L0_1984.info[8] == true then
  print("\n♻️ Added App Info : ✔")
end
if L0_1984.info[9] == true then
  p = gg.prompt({
    "🗳️ Set Package Game :",
    ""
  }, nil, {"checkbox", "text"})
  if p[1] == true then
    print("\n🗳️ Added Package Game : " .. p[2])
  end
end
if L0_1984.info[10] == true then
  print("\n🎃 Added ByPass SSTool 1 - 0 : ✔")
end
if L0_1984.info[11] == true then
  CustomLua = gg.prompt({
    "🚀 Custom Lua Header",
    ""
  }, nil, {"checkbox", "text"})
  if CustomLua[1] == true then
    print("\n🚀 Added Custom Lua Header : " .. CustomLua[2])
  end
end
if L0_1984.info[12] == true then
  print("\n📌 Added Auto Detect Descrypt : ✔")
end
if L0_1984.info[13] == true then
  Game = gg.prompt({
    "✏️ Set Your Package GameGuardian",
    "📝 Type Message If Package Is Wrong :"
  }, {
    "com.GameGuardian.id",
    "⚠ Use MY GG For Run This Script ⚠"
  }, {"text", "text"})
end
if not Game then
  gg.setVisible(true)
elseif Game[1] == nil then
  gg.alert("⚠️ Set Package GameGuardian Can Not Bd Empty!")
  gg.setVisible(true)
else
  print("\n🕵️ Added Package GameGuardian : ✔")
end
if L0_1984.info[14] == true then
  LOGIN = gg.prompt({
    "🕵 Set Username For Script :",
    "🔐 Set Password For Script :",
    "📝 Type Message For Succes Login :"
  }, {
    "unknown",
    "0000",
    "✔"
  }, {
    "text",
    "text",
    "text"
  })
end
if not LOGIN then
  gg.setVisible(true)
elseif LOGIN[1] or LOGIN[2] == nil then
  gg.alert("⚠Username Or Password Cannot Be Empty⚠")
  gg.setVisible(true)
else
  print("\n📝 Added Login Offline : ✔")
end
if L0_1984.info[15] == true then
  print("\n⏰ Added Loading : ✔")
end
if load((io.open(L0_1984.info[1], "r"):read("*a"))) == nil then
  gg.alert("🔥Error Detected🔥")
  return
end
function Enc58(A0_1985)
  return (A0_1985:gsub(".", function(A0_1986)
    for i = 8, 1, -1 do
    end
    return "" .. (A0_1986:byte() % 2 ^ i - A0_1986:byte() % 2 ^ (i - 1) > 0 and "1" or "0")
  end
  ) .. "0000"):gsub("%d%d%d?%d?%d?%d?", function(A0_1987)
    local L1_1988
    L1_1988 = #A0_1987
    if L1_1988 < 6 then
      L1_1988 = ""
      return L1_1988
    end
    L1_1988 = 0
    for i = 1, 6 do
      L1_1988 = L1_1988 + (A0_1987:sub(i, i) == "1" and 2 ^ (6 - i) or 0)
    end
    return STM0:sub(L1_1988 + 1, L1_1988 + 1)
  end
  ) .. ({
    "",
    "==",
    "="
  })[#A0_1985 % 3 + 1]
end

AB = math.random(10600, 20000)
AC = math.random(30080, 40000)
AD = math.random(570000, 607000)
AE = math.random(78900, 80000)
AF = math.random(99000, 100000)
AG = math.random(386000, 5000086)
ABB = math.random(1000, 2000)
ACC = math.random(3000, 4000)
ADD = math.random(5000, 6000)
AEE = math.random(7000, 8000)
AFF = math.random(9000, 10000)
AGG = math.random(300, 600)
Arp = math.random(173892, 39178929)
ABBB = math.random(1000, 2000)
ACCC = math.random(3000, 4000)
ADDD = math.random(5000, 6000)
AEEE = math.random(7000, 8000)
AFFF = math.random(9000, 10000)
AGGG = math.random(300, 600)
EncodeFunction = [[
function EncodeSha(Cr)
return string.char(table.unpack(Cr))
end
local ADD = ]] .. ADD .. ";local AEE = " .. AEE .. ";local AFF = " .. AFF .. ";local AB = " .. AB .. ";local iimi = 8181;local ABB = " .. ABB .. ";local iimi = 9071118;local iimi = 66241;local AGG = " .. AGG .. ";local AC = " .. AC .. ";local iimi = 815158;local iimi = 5277371;local iimi = 615181;local iimi = 615173;local iimi = 26262;local iimi = 72626;local iimi = 72623;local AD = " .. AD .. ";local iimi = 626311;local iimi = 7361821;local ACC = " .. ACC .. ";local AE = " .. AE .. ";local i = " .. math.random(100, 8000) .. ";local iimi = 611942;local AF = " .. AF .. ";local i = " .. math.random(100, 8000) .. ";local i = " .. math.random(100, 8000) .. ";local AG = " .. AG .. ";local iimi = 715182;local Arp = " .. Arp .. ";local ABBB = '" .. ABBB .. "';local ACCC = '" .. ACCC .. "';local ADDD = '" .. ADDD .. "';local AEEE = '" .. AEEE .. "';local AFFF = '" .. AFFF .. "';local AGGG = '" .. AGGG .. [[
';local sss = '42884';local ssi = '679753';local sal = '63289'; local sil = '62379';local m = {(AB+AC*AD-AE+AF*AB)-AE,AC-10*AB,AD*2-AB,AE+AD,AF*AD,AB,AG+AF,AD-2,AC+3}
local R_ = function(n, m)
res = ''
for j in ipairs(n) do
res = res..string.char((n[j]-m[1]+m[2]*m[3]*m[4]+m[5]%m[2]+m[1]*m[4]+m[3]-m[1]*j)%256)
end
return res
end
EncodeBlock = function(c)
return R_(c, m)
end
]]
function EncodeKey(A0_1989)
  return table.concat({
    A0_1989:byte(1, -1)
  }, ",")
end

function EncodeByte(A0_1990, A1_1991)
  return "String[EncodeSha({" .. EncodeKey(A0_1990) .. "})][EncodeSha({" .. EncodeKey(A1_1991) .. "})]"
end

function EncodeValue(A0_1992)
  return "EncodeSha({" .. EncodeKey(A0_1992) .. "})"
end

function EncodeRevo6(A0_1993)
  return "(" .. STM0(A0_1993) .. ")"
end

function EncodeRevo6(A0_1994)
  return "EncodeBlock(" .. STM0(A0_1994, STM1) .. ")"
end

for i, i in pairs(gg) do
end
ambl = "%gg%.getFile%(%)"
for i = 1, 3 do
  load(EncodeFunction .. string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub("gg.sleep(150)\ngg.toast(\"🛡️Encrypt Tool Unknown v2🛡️\")\ngg.sleep(350)\n" .. io.open(L0_1984.info[1], "r"):read("*a"), "gg." .. i, EncodeByte("gg", i)), "%'.-(.-)%'", EncodeRevo6), "%\".-(.-)%\"", EncodeRevo6), "%[%[.-(.-)%]%]", EncodeRevo6), "%\"(.-)%\"", EncodeValue), "%'(.-)%'", EncodeValue), "92,110", "10"))
end
repeat
until (EncodeFunction .. string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub("gg.sleep(150)\ngg.toast(\"🛡️Encrypt Tool Unknown v2🛡️\")\ngg.sleep(350)\n" .. io.open(L0_1984.info[1], "r"):read("*a"), "gg." .. i, EncodeByte("gg", i)), "%'.-(.-)%'", EncodeRevo6), "%\".-(.-)%\"", EncodeRevo6), "%[%[.-(.-)%]%]", EncodeRevo6), "%\"(.-)%\"", EncodeValue), "%'(.-)%'", EncodeValue), "92,110", "10")):gsub("'(.-)'", function(A0_1995)
  A0_1995 = load("return \"" .. A0_1995 .. "\"")()
  T = Enc58(A0_1995)
  return "Dec58(\"" .. T .. "\")"
end
):match("'(.-)'") == nil
repeat
until (EncodeFunction .. string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub("gg.sleep(150)\ngg.toast(\"🛡️Encrypt Tool Unknown v2🛡️\")\ngg.sleep(350)\n" .. io.open(L0_1984.info[1], "r"):read("*a"), "gg." .. i, EncodeByte("gg", i)), "%'.-(.-)%'", EncodeRevo6), "%\".-(.-)%\"", EncodeRevo6), "%[%[.-(.-)%]%]", EncodeRevo6), "%\"(.-)%\"", EncodeValue), "%'(.-)%'", EncodeValue), "92,110", "10")):gsub("'(.-)'", function(A0_1996)
  A0_1996 = load("return \"" .. A0_1996 .. "\"")()
  T = Enc58(A0_1996)
  return "Dec58(\"" .. T .. "\")"
end
):gsub("\"(.-)\"", function(A0_1997)
  A0_1997 = load("return \"" .. A0_1997 .. "\"")()
  T = Enc58(A0_1997)
  return "Dec58('" .. T .. "')"
end
):match("\"(.-)\"") == nil
for i, i in pairs(gg) do
  ambl = "gg." .. i
  if (EncodeFunction .. string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub("gg.sleep(150)\ngg.toast(\"🛡️Encrypt Tool Unknown v2🛡️\")\ngg.sleep(350)\n" .. io.open(L0_1984.info[1], "r"):read("*a"), "gg." .. i, EncodeByte("gg", i)), "%'.-(.-)%'", EncodeRevo6), "%\".-(.-)%\"", EncodeRevo6), "%[%[.-(.-)%]%]", EncodeRevo6), "%\"(.-)%\"", EncodeValue), "%'(.-)%'", EncodeValue), "92,110", "10")):gsub("'(.-)'", function(A0_1998)
    A0_1998 = load("return \"" .. A0_1998 .. "\"")()
    T = Enc58(A0_1998)
    return "Dec58(\"" .. T .. "\")"
  end
  ):gsub("\"(.-)\"", function(A0_1999)
    A0_1999 = load("return \"" .. A0_1999 .. "\"")()
    T = Enc58(A0_1999)
    return "Dec58('" .. T .. "')"
  end
  ):match(ambl) ~= nil then
    repeat
    until (EncodeFunction .. string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub("gg.sleep(150)\ngg.toast(\"🛡️Encrypt Tool Unknown v2🛡️\")\ngg.sleep(350)\n" .. io.open(L0_1984.info[1], "r"):read("*a"), "gg." .. i, EncodeByte("gg", i)), "%'.-(.-)%'", EncodeRevo6), "%\".-(.-)%\"", EncodeRevo6), "%[%[.-(.-)%]%]", EncodeRevo6), "%\"(.-)%\"", EncodeValue), "%'(.-)%'", EncodeValue), "92,110", "10")):gsub("'(.-)'", function(A0_2000)
      A0_2000 = load("return \"" .. A0_2000 .. "\"")()
      T = Enc58(A0_2000)
      return "Dec58(\"" .. T .. "\")"
    end
    ):gsub("\"(.-)\"", function(A0_2001)
      A0_2001 = load("return \"" .. A0_2001 .. "\"")()
      T = Enc58(A0_2001)
      return "Dec58('" .. T .. "')"
    end
    ):gsub(ambl, function()
      T = Enc58(STM1)
      U = Enc58("gg")
      return "gg[Dec58({" .. U .. "})][Dec58({" .. T .. "})]"
    end
    ):match(ambl) == nil
  end
end
io.open(L0_1984.out, "w"):write((string.gsub(string.dump(load("collectgarbage(\"collect\") collectgarbage() local Title = '\\n\\n🛡️Encrypt Tool Unknown v2🛡️\\n\\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬\\n[\"Credits @KKKK4_K\"]\\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬\\n[\"You Need Of Encrypt?\"]\\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬\\n[\"Dm @UnknownOfficial1\"]\\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬\\n[\"Thanks To My Teacher @ASDROIDS\"]\\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬\\n\\n'\nfor x = 1,0 do local j = {} if j.x ~= nil then j.x = j.x() end end\nlocal Unknown = {}\nUnknown.Block = function()\nlocal String = _G\nlocal b = \"" .. "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz" .. [[
"
local function Dec58(data)
data = string.gsub(data, '[^'..b..'=]', '')
return (data:gsub('.', function(x)
if (x == '=') then return '' end
local r,f = '',(b:find(x)-1)
for i = 6,1,-1 do r = r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
return r;
end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
if (#x ~= 8) then return '' end
local c = 0
for i = 1,8 do c = c+(x:sub(i,i) == '1' and 2^(8-i) or 0) end
return string.char(c)
end))
end ll = pcall III = load local II = '' l = Dec58(II) ll(III(l)) gg.clearList()

]] .. (EncodeFunction .. string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub("gg.sleep(150)\ngg.toast(\"🛡️Encrypt Tool Unknown v2🛡️\")\ngg.sleep(350)\n" .. io.open(L0_1984.info[1], "r"):read("*a"), "gg." .. i, EncodeByte("gg", i)), "%'.-(.-)%'", EncodeRevo6), "%\".-(.-)%\"", EncodeRevo6), "%[%[.-(.-)%]%]", EncodeRevo6), "%\"(.-)%\"", EncodeValue), "%'(.-)%'", EncodeValue), "92,110", "10")):gsub("'(.-)'", function(A0_2002)
  A0_2002 = load("return \"" .. A0_2002 .. "\"")()
  T = Enc58(A0_2002)
  return "Dec58(\"" .. T .. "\")"
end
):gsub("\"(.-)\"", function(A0_2003)
  A0_2003 = load("return \"" .. A0_2003 .. "\"")()
  T = Enc58(A0_2003)
  return "Dec58('" .. T .. "')"
end
):gsub(ambl, function()
  T = Enc58(STM1)
  U = Enc58("gg")
  return "gg[Dec58({" .. U .. "})][Dec58({" .. T .. "})]"
end
) .. [[

end
Unknown.Block()
]]), true), "LuaR", "LuaR", 1))):close()
gg.alert("▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬\n🛡️Encrypt Tool Unknown v2🛡️\n▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬\n\n " .. L0_1984.out .. "")
do return end
do return end
return

--DECRYPTED BY @SABINXD