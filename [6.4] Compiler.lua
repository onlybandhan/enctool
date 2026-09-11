local Nbd = 0
local function toass(t,w)
Nbd = Nbd + w
if Nbd ~= 100 then
Strd = "🐤 " .. t .. " in Proggress, " .. Nbd .. "%"
else
Strd = "🐤 " .. t .. ", " .. Nbd .. "%"
end
return gg.toast(Strd)
end
local Saver_CallApi = {}
Saver_CallApi['Api'] = {}
Saver_CallApi['Api']['First'] = {}
Saver_CallApi['Api']['Last'] = {}
Saver_CallApi['Get'] = {'gg','os','io','table','debug','math','string'}
Saver_CallApi['Saver'] = {}
for i in ipairs(Saver_CallApi['Get']) do
API_Name = Saver_CallApi['Get'][i]
for v, z in pairs(_G[API_Name]) do
Saver_CallApi['Saver'][#Saver_CallApi['Saver']+1] = {API_Name,v}
end
end
for i in ipairs(Saver_CallApi['Saver']) do
if Saver_CallApi['Saver'][i][2]:match('_') and string.len(tostring(Saver_CallApi['Saver'][i][2])) > 12 then
Saver_CallApi['Api']['First'][#Saver_CallApi['Api']['First']+1] = {Saver_CallApi['Saver'][i][1],Saver_CallApi['Saver'][i][1]..'.'..Saver_CallApi['Saver'][i][2],Saver_CallApi['Saver'][i][2]}
Saver_CallApi['Saver'][i] = {}
end
end
for i in ipairs(Saver_CallApi['Saver']) do
if Saver_CallApi['Saver'][i][2] ~= nil and Saver_CallApi['Saver'][i][1] ~= nil then
if string.len(tostring(Saver_CallApi['Saver'][i][2])) > 9 then
Saver_CallApi['Api']['First'][#Saver_CallApi['Api']['First']+1] = {Saver_CallApi['Saver'][i][1],Saver_CallApi['Saver'][i][1]..'.'..Saver_CallApi['Saver'][i][2],Saver_CallApi['Saver'][i][2]}
Saver_CallApi['Saver'][i] = {}
end
end
end
for i in ipairs(Saver_CallApi['Saver']) do
if Saver_CallApi['Saver'][i][2] ~= nil and Saver_CallApi['Saver'][i][1] ~= nil then
Saver_CallApi['Api']['First'][#Saver_CallApi['Api']['First']+1] = {Saver_CallApi['Saver'][i][1],Saver_CallApi['Saver'][i][1]..'.'..Saver_CallApi['Saver'][i][2],Saver_CallApi['Saver'][i][2]}
Saver_CallApi['Saver'][i] = {}
end
end
local APIList = Saver_CallApi['Api']['First']
local ns = {}
ns.vers = gg.VERSION
ns.verr = gg["VERSION_INT"]
ns.last = gg.getFile()
ns.info = nil
ns.cnf = gg["EXT_CACHE_DIR"] .. "/"
ns.config = ns.cnf .. gg.getFile():match("[^/]+$") .. ".cfg"
strongs = loadfile(ns.config)
if strongs ~= nil then ns.info = strongs() strongs = nil end
if ns.info == nil then ns.info = {ns.last, ns.last:gsub("/[^/]+$", ""), false, false, false,true} end
local function nesiaP(a,b,c) return gg.prompt(a,b,c) end
print('🛡️ Encryption by BydzNesia v6.4 🛡️')
print('')
gg.setVisible(false)
while true do
goto nes1
:: nes1 ::
ns.prp = nesiaP({"📁 File : ", "📂 Outpath :","🐥 use Expired Date","🐥 use Password", "🐥 Change Name","🐥 Reduce time for Encrypt"}, ns.info, {'file','path','checkbox','checkbox','checkbox','checkbox','checkbox'})
goto nes2
:: nes2 ::
if ns.prp == nil then return end -- if
ns.file = ns.prp[1]
gg.saveVariable(ns.prp, ns.config)
ns.loading,ns.amr = loadfile(ns.file)
if ns.loading == nil then
gg.alert("🐣 Script can't be loaded. Please Fix First.")
print("🐣 Script can't be loaded. Please Fix First.\n\n" .. ns.amr)
break
end -- if
local time_1 = os.time()
ns.out = ns.prp[2] .. "/[6.4 ~🐣]".. ns.file:match("[^/]+$"):gsub(".lua", "") .. ".lua"
ns.filename = "[6.4 ~🐣]" .. ns.file:match("[^/]+$"):gsub(".lua", "") .. ".lua"
local function enc_str(c)
c = {c:byte(1,-1)}
c = table.concat(c, ',')
return 'string.char(table.unpack({' .. c .. '}))'
end
local function match(str)
inten = {}
stg = str
str = {str:byte(1,-1)}
for a in ipairs(str) do
if str[a] == 34 or str[a] == 39 then
bmg = {[1] = str[a]}
for e = a+1, #str do
if str[e] ~= str[a] then
bmg[#bmg+1] = str[e]
str[e] = ''
else
bmg[#bmg+1] = str[e]
str[e] = ''
break
end -- if
end -- for e
bmg = load('return ' ..string.char(table.unpack(bmg)))()
str[a] = enc_str(bmg)
bmg = {}
end -- if
end -- for a
last = ''
for u in ipairs(str) do
if type(str[u]) == 'number' then
last = last .. string.char(str[u])
end -- if type
if type(str[u]) == 'string' and str[u] ~= '' then
last = last .. str[u]
end
end -- for u
return last
end
Motch = Match
local Keamanan = ' ; local MekiLO = _G["loadfile"] ;_G["loadfile"] = function() return end ; local MekiLU = _G["print"] ; _G["print"] = function() return end ; '
local Keamanan = match(Keamanan)
-- Key & Encrypting Function
local Get = {} local Hex = {} local Num = {}
for i = 255, 0, -1 do Get[i] = string.char(255 - i) end
for i = 255, 0, -1 do Hex[i] = ('%03X'):format((255 - i)) end
for i = 255, 0, -1 do Num[i] = 255 - i end
local F = {} local G = {} local Saver = {} local NumBer = math.random(45,150)
for i = 1, 20 do G[i] = math.random(48,95) - ( i + 2 )end
G[21] = NumBer
toass('Making Key',5)
F[1] = function(str)
str = {str:byte(1,-1)}
for i in ipairs(str) do
str[i] = (str[i] + G[1] - G[2] - G[3] + G[4] + G[5]) % 255
str[i] = Hex[str[i]]
end
str = table.concat(str, string.char())
str = {str:byte(1,-1)}
for i in ipairs(str) do
str[i] = (str[i] + G[6] + G[7] - G[8] + G[9] - G[10]) % 255
str[i] = Get[str[i]]
end
str = table.concat(str, string.char())
str = {str:byte(1,-1)}
for i in ipairs(str) do
str[i] = (str[i] - G[11] - G[12] - G[13] - G[14] + G[15]) % 255
str[i] = Get[str[i]]
end
str = table.concat(str, string.char())
str = {str:byte(1,-1)}
for i in ipairs(str) do
str[i] = (str[i] + G[16] - G[17] - G[18] + G[19] + G[20] - i) % 255
end
str = 'D["Il"]({["Il"]={' .. table.concat(str, ',') .. '}})'
return str
end
Key = '{' .. table.concat(G, ',') .. '}'
-- end key & enc function
local function match(str)
inten = {}
stg = str
str = {str:byte(1,-1)}
for a in ipairs(str) do
if str[a] == 34 or str[a] == 39 then
bmg = {[1] = str[a]}
for e = a+1, #str do
if str[e] ~= str[a] then
bmg[#bmg+1] = str[e]
str[e] = ''
else
bmg[#bmg+1] = str[e]
str[e] = ''
break
end -- if
end -- for e
bmg = load('return ' ..string.char(table.unpack(bmg)))()
str[a] = F[1](bmg)
bmg = {}
end -- if
end -- for a
last = ''
for u in ipairs(str) do
if type(str[u]) == 'number' then
last = last .. string.char(str[u])
end -- if type
if type(str[u]) == 'string' and str[u] ~= '' then
last = last .. str[u]
end
end -- for u
return last
end
toass('Matching String',5)
io.input(ns.file)
ns.svStr = io.read("*a")
if ns.svStr:match(string.char(table.unpack({37,91,37,61,37,91,46,45,37,93,61,93}))) then
repeat
ns.svStr = ns.svStr:gsub(string.char(table.unpack({37,91,37,61,37,91,46,45,37,93,61,93})), function(c)
c = load('return ' .. c)()
return enc_str(c)
end)
until ns.svStr:match(string.char(table.unpack({37,91,37,61,37,91,46,45,37,93,61,93}))) == nil
end
if ns.svStr:match(string.char(table.unpack({37,91,37,91,46,45,37,93,93}))) then
repeat
ns.svStr = ns.svStr:gsub(string.char(table.unpack({37,91,37,91,46,45,37,93,93})), function(c)
c = load('return ' .. c)()
return enc_str(c)
end)
until ns.svStr:match(string.char(table.unpack({37,91,37,91,46,45,37,93,93}))) == nil
end
toass('Checking Settings',20)
function Rand(l)
v = ''
a = {{65,90},{97,122},{48,57}}
for i = 1, l do
o=math.random(1,3)
v = v .. string.char(math.random(a[o][1], a[o][2]))
end
return v
end
if ns.prp[3] == true then
ns.settings2s = ns.cnf .. gg.getFile():match("[^/]+$") .. "_set.date.cfg"
strongs = loadfile(ns.settings2s)
if strongs ~= nil then ns.settings2 = strongs() strongs = nil end
if ns.settings2 == nil then ns.settings2 = {os.date("%Y%m%d"), 'ℹ️ Script Expired !!'} end
ns.Kemm =ns.settings2
goto ex1
:: ex1 ::
ns.settings2 = nesiaP({"⌚ Input the Date", "📝 Text of Expired"}, ns.Kemm, {'number','text'})
goto ex2
:: ex2 ::
if ns.settings2 == nil then goto ex1 end
gg.saveVariable(ns.settings2, ns.settings2s)
ns.svStr = ([[;;if os.date("%Y%m%d") >= "]]) ..ns.settings2[1]..([[" then print("]]) .. ns.settings2[2] ..([[") return gg.alert("]]) .. ns.settings2[2] ..([[") end;;;;]])..ns.svStr 
end
if ns.prp[4] == true then
ns.settings3s = ns.cnf .. gg.getFile():match("[^/]+$") .. "_set.pass.cfg"
strongs = loadfile(ns.settings3s)
if strongs ~= nil then ns.settings3 = strongs() strongs = nil end
if ns.settings3 == nil then ns.settings3 = {''} end
ns.Kem = ns.settings3
goto ex1
:: ex1 ::
ns.settings3 = nesiaP({"🔐 Input the Password :"}, ns.Kem, {'text'})
goto ex2
:: ex2 ::
if ns.settings3 == nil then goto ex1 end
gg.saveVariable(ns.settings3, ns.settings3s)
ns.svStr = ([[local BydzP = function(a);return gg.prompt({a}, {''}, {'text'});end
local BydzPass = function(Pass);pStr = ''
goto first
:: wrong ::
BydzGpass = BydzP('🔐 "' .. pStr .. '" is a Wrong Password !')
goto cekp
:: first ::
BydzGpass = BydzP('🔐 Input Password !')
goto cekp
:: cekp ::
if BydzGpass == nil then return false end;if BydzGpass[1] == Pass then;return true;elseif BydzGpass[1] ~= Pass and BydzGpass[1] ~= '' then;pStr = BydzGpass[1];goto wrong
end;end
Bydz2017.pass = BydzPass(']]) .. ns.settings3[1] .. ([[')
if not Bydz2017.pass or Bydz2017.pass ~= true then return end
]])..ns.svStr 
end
myName = '🐣 Encryption by BydzNesia Version 6.4 🐣'
myToast = '🐣 Encryption by BydzNesia 🐣'
if ns.prp[5] == true then
ns.settings4s = ns.cnf .. gg.getFile():match("[^/]+$") .. "_set.name.cfg"
strongs = loadfile(ns.settings4s)
if strongs ~= nil then ns.settings4 = strongs() strongs = nil end
if ns.settings4 == nil then ns.settings4 = {'',''} end
ns.Keem = ns.settings4
goto ex1
:: ex1 ::
ns.settings4 = nesiaP({"📝 Write ur Name :","📝 Write toast ( ur name ) :"}, ns.Keem, {'text', 'text'})
goto ex2
:: ex2 ::
if ns.settings4 == nil then goto ex1 end
gg.saveVariable(ns.settings4, ns.settings4s)
myName = ns.settings4[1]
myToast = ns.settings4[2]
end
toass('Adding Security',10)
ns.svStr = 'local newTab = {_G["tostring"](_G["gg"]), _G["tostring"](_G["os"]), _G["tostring"](_G["io"]), _G["tostring"](_G["debug"]), _G["tostring"](_G["math"]), _G["tostring"](_G["table"])} ; for a in ipairs(newTab) do ; if string.match(newTab[a], "@") then ; return gg.alert("🐥 Choose ur Mama ?") ; end ; end ; if type(g) == "table" then return os.exit() end; ;' .. ns.svStr
ns.file = ns.out
local lasmKey = Rand(16)
local lasmAlert = ([["🐣 Don't dissamsemble this script !"]])
local lines = ";io.input(gg.getFile());if io.read('*a'):match('" .. lasmKey .. "') == nil then ; return gg.alert(" .. lasmAlert .. ") ; end ;" .. ns.svStr
lines = match(lines)
ns.svStr = lines
ns.svStr = ns.svStr:gsub("gg.getRangesList", function(c)
return 'Func["Il"][' ..F[1]("gg") .. "]["..F[1]("getRangesList").."]"
end)
toass('Matching GG API',10)
for a in ipairs(APIList) do
V = APIList[a]
if ns.svStr:match(V[2]) ~= nil then
repeat
ns.svStr = ns.svStr:gsub(V[2], function(c)
return "_G["..F[1](V[1]).."]["..F[1](V[3]).."]"
end)
until ns.svStr:match(V[2]) == nil
end
end

local asFar = "print%("
if ns.svStr:match("print%(") ~= nil then
repeat
ns.svStr = ns.svStr:gsub("print%(", function(c)
return "MekiLU("
end)
until ns.svStr:match("print%(") == nil
end
local asFar = "loadfile%("
if ns.svStr:match("loadfile%(") ~= nil then
repeat
ns.svStr = ns.svStr:gsub("loadfile%(", function(c)
return "MekiLO("
end)
until ns.svStr:match("loadfile%(") == nil
end
os.remove(ns.file)
Spammer={}
for i = 1, 20 do
Spammer[i] = ';for j = 0, 8000, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]}  Bydz2017["Il"] = {Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]}  for k = 0, 6000, 0 do  Bydz2017["BydzReplace"] = Bydz2017["BydzReplace"][k] * Bydz2017["Il"][k] << Bydz2017["BydzReplace"][k] + Bydz2017["Il"][k] - Bydz2017["Il"][k] ~ Bydz2017["BydzReplace"][k] >> Bydz2017["Il"][k] * Bydz2017["BydzReplace"][k]   Bydz2017["Il"] = Bydz2017["BydzReplace"][k] * Bydz2017["Il"][k] << Bydz2017["BydzReplace"][k] + Bydz2017["Il"][k] - Bydz2017["Il"][k] ~ Bydz2017["BydzReplace"][k] >> Bydz2017["Il"][k] * Bydz2017["BydzReplace"][k]   for h = 0, 70000, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]}  Bydz2017["Il"] = {Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]}  for l = 0, 63759693, 0 do  Bydz2017["BydzReplace"] = Bydz2017["BydzReplace"][l] * Bydz2017["Il"][l] << Bydz2017["BydzReplace"][l] + Bydz2017["Il"][l] - Bydz2017["Il"][l] ~ Bydz2017["BydzReplace"][l] >> Bydz2017["Il"][l] * Bydz2017["BydzReplace"][l]   Bydz2017["Il"] = Bydz2017["BydzReplace"][l] * Bydz2017["Il"][l] << Bydz2017["BydzReplace"][l] + Bydz2017["Il"][l] - Bydz2017["Il"][l] ~ Bydz2017["BydzReplace"][l] >> Bydz2017["Il"][l] * Bydz2017["BydzReplace"][l]   for o = 0, 45553648, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]}  Bydz2017["Il"] = {Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]}  for s = 0, 446274, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]}  Bydz2017["Il"] = {Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]}  Bydz2017["BydzReplace"]({Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]})  Bydz2017["Il"]({Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]})  Bydz2017["Il"]({Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l]})  Bydz2017["Il"]({Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]})  Bydz2017["Il"]({Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k]})  Bydz2017["Il"]({Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]})  Bydz2017["Il"]({Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]})  end;'
end
toass('Making Decoder',10)
local Decoder = Keamanan .. " ;; Z['Hex'] = {} Z['Int'] = {};for i = 255, 0, -1 do Z['Hex'][('%03X'):format((i))] = (255 - i) end;" .. Spammer[10] .. ";for i = 255, 0, -1 do Z['Int'][Func['char'](i)] = 255 - i end;local D = {} local Bydz = {};D['IllIlIIIIll'] = function(...);Bydz['str'] = tostring(...);Bydz['codes'] = {};Bydz['str']:gsub('...', function(...);Bydz['Referer'] = tostring(...);Bydz['Convert'] = (Z['Hex'][Bydz['Referer']] - Z['S'][1] + Z['S'][2] + Z['S'][3] - Z['S'][4] - Z['S'][5]) % 255;Bydz['codes'][#Bydz['codes']+1] = Bydz['Convert'];end);return Func['char'](Func['Pack'](Bydz['codes']));end;" .. Spammer[9] .. ";D['IIllIllllIII'] = function(...);return D['IllIlIIIIll'](Func['char'](Func['Pack'](...)));end;" .. Spammer[8] .. ";D['IIIlllIllIIl'] = function(...);Bydz['str'] = ...;for i in ipairs(Bydz['str']) do;Bydz['str'][i] = (Bydz['str'][i] - Z['S'][6] - Z['S'][7] + Z['S'][8] - Z['S'][9] + Z['S'][10]) % 255;end;return D['IIllIllllIII'](Bydz['str']);end;" .. Spammer[7] .. ";D['IlIIIlllIlIl'] = function(...);Bydz['str'] = ...;for i in ipairs(Bydz['str']) do;Bydz['str'][i] = Z['Int'][Bydz['str'][i]];end;return D['IIIlllIllIIl'](Bydz['str']);end;" .. Spammer[6] .. ";D['IIIlllIlIlIl'] = function(...);Bydz['str'] = ...;for i in ipairs(Bydz['str']) do;Bydz['str'][i] = Func['char'](Bydz['str'][i]);end;return D['IlIIIlllIlIl'](Bydz['str']);end;" .. Spammer[5] .. ";D['IIIIlllIlIllIIlI'] = function(...);Bydz['str'] = ...;for i in ipairs(Bydz['str']) do;Bydz['str'][i] = (Bydz['str'][i] + Z['S'][11] + Z['S'][12] + Z['S'][13] + Z['S'][14] - Z['S'][15]) % 255;end;return D['IIIlllIlIlIl'](Bydz['str']);end;" .. Spammer[1] .. ";D['IIIIIlllIlIIl'] = function(...) ;Bydz['str'] = ... ; for i in ipairs(Bydz['str']) do ;Bydz['str'][i] = Z['Int'][Bydz['str'][i]] ;end ;return D['IIIIlllIlIllIIlI'](Bydz['str']) ;end;" .. Spammer[2] .. ";D['IIllIIIlIIIlI'] = function(...) ; Bydz['str'] = ... ;for i in ipairs(Bydz['str']) do ;Bydz['str'][i] = Func['char'](Bydz['str'][i]) ;end ;return D['IIIIIlllIlIIl'](Bydz['str']) ;end;" .. Spammer[3] .. ";D['IlI'] = function(...) ; Bydz['str'] = ... ; for i in ipairs(Bydz['str']) do ; Bydz['str'][i] = (Bydz['str'][i] - Z['S'][16] + Z['S'][17] + Z['S'][18] - Z['S'][19] - Z['S'][20] + i) % 255 ; end ; return D['IIllIIIlIIIlI'](Bydz['str']) ;end;" .. Spammer[4] .. ";D['Il'] = function(...) ; Bydz['str'] = ... ;return D['IlI'](Bydz['str']['Il']) ; end;"
FFkey = '{"Il","Il","Il","Il","Il","Il","Il","Il","Il","Il"}'
for a = 1, 100 do
MM = {}
for i = 1, 21 do
MM[i] = '["Il"] = ' .. math.random(1,120)
end
FFkey = FFkey .. ',{' .. table.concat(MM, ',') .. '}'
end
local function enc_str(c)
c = {c:byte(1,-1)}
c = table.concat(c, ',')
return 'string.char(' .. c .. ')'
end
local function Motch(str)
inten = {}
stg = str
str = {str:byte(1,-1)}
for a in ipairs(str) do
if str[a] == 34 or str[a] == 39 then
bmg = {[1] = str[a]}
for e = a+1, #str do
if str[e] ~= str[a] then
bmg[#bmg+1] = str[e]
str[e] = ''
else
bmg[#bmg+1] = str[e]
str[e] = ''
break
end -- if
end -- for e
bmg = load('return ' ..string.char(table.unpack(bmg)))()
str[a] = enc_str(bmg)
bmg = {}
end -- if
end -- for a
last = ''
for u in ipairs(str) do
if type(str[u]) == 'number' then
last = last .. string.char(str[u])
end -- if type
if type(str[u]) == 'string' and str[u] ~= '' then
last = last .. str[u]
end
end -- for u
return last
end
toass('Comparing String',10)
Spammer[3] = Spammer[3] .. Spammer[4]
Spammer[3] = Spammer[3] .. Spammer[4] .. Spammer[5]
Spammer[3] = Spammer[3] .. Spammer[4]
Spammer[3] = Spammer[3] .. Spammer[4] ..Spammer[6]
Spammer[3] = Spammer[3] .. Spammer[4]
ns.svStr = ([[local A = '\n]]) .. myName .. ([[\n',{"BydzReplace","BydzReplace","BydzReplace","BydzReplace","BydzReplace","BydzReplace","BydzReplace","BydzReplace"}
return (function()
local _G,Bydz2017,Bydz2018,gg,os,io,math,table,debug=_G,{},{},gg,os,io,math,table,debug
local Func = {}
Func['Str'] = string
Func['char'] = Func['Str'].char
Func['Tab'] = table
Func['Pack'] = Func['Tab'].unpack
Bydz2017["Il"] = _G Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"] Bydz2017["Il"] = Bydz2017["Il"]
Bydz2018["Il"] = _G Bydz2018["Il"] = Bydz2018["Il"] Bydz2018["Il"] = Bydz2017["Il"] Bydz2018["Il"] = Bydz2018["Il"] Bydz2018["Il"] = Bydz2018["Il"] Bydz2018["Il"] = Bydz2018["Il"] Bydz2018["Il"] = Bydz2018["Il"] Bydz2018["Il"] = Bydz2018["Il"] Bydz2018["Il"] = _G Bydz2018["Il"] = Bydz2018["Il"] Bydz2018["Il"] = Bydz2018["Il"] Bydz2018["Il"] = Bydz2018["Il"] Bydz2018["Il"] = Bydz2018["Il"] Bydz2018["Il"] = Bydz2018["Il"] Bydz2018["Il"] = Bydz2017["Il"] Bydz2018["Il"] = Bydz2018["Il"] Bydz2018["Il"] = Bydz2018["Il"] Bydz2018["Il"] = Bydz2018["Il"]
for j = 0, 8000, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]}  Bydz2017["Il"] = {Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]}  for k = 0, 6000, 0 do  Bydz2017["BydzReplace"] = Bydz2017["BydzReplace"][k] * Bydz2017["Il"][k] << Bydz2017["BydzReplace"][k] + Bydz2017["Il"][k] - Bydz2017["Il"][k] ~ Bydz2017["BydzReplace"][k] >> Bydz2017["Il"][k] * Bydz2017["BydzReplace"][k]   Bydz2017["Il"] = Bydz2017["BydzReplace"][k] * Bydz2017["Il"][k] << Bydz2017["BydzReplace"][k] + Bydz2017["Il"][k] - Bydz2017["Il"][k] ~ Bydz2017["BydzReplace"][k] >> Bydz2017["Il"][k] * Bydz2017["BydzReplace"][k]   for h = 0, 70000, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]}  Bydz2017["Il"] = {Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]}  for l = 0, 63759693, 0 do  Bydz2017["BydzReplace"] = Bydz2017["BydzReplace"][l] * Bydz2017["Il"][l] << Bydz2017["BydzReplace"][l] + Bydz2017["Il"][l] - Bydz2017["Il"][l] ~ Bydz2017["BydzReplace"][l] >> Bydz2017["Il"][l] * Bydz2017["BydzReplace"][l]   Bydz2017["Il"] = Bydz2017["BydzReplace"][l] * Bydz2017["Il"][l] << Bydz2017["BydzReplace"][l] + Bydz2017["Il"][l] - Bydz2017["Il"][l] ~ Bydz2017["BydzReplace"][l] >> Bydz2017["Il"][l] * Bydz2017["BydzReplace"][l]   for o = 0, 45553648, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]}  Bydz2017["Il"] = {Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]}  for s = 0, 446274, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]}  Bydz2017["Il"] = {Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]}  Bydz2017["BydzReplace"]({Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]})  Bydz2017["Il"]({Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]})  Bydz2017["Il"]({Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l]})  Bydz2017["Il"]({Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]})  Bydz2017["Il"]({Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k]})  Bydz2017["Il"]({Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]})  Bydz2017["Il"]({Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]})  end
Func["Il"] = _G Func["Il"] = Func["Il"]  Func["Il"] = _G Func["Il"] = Func["Il"] Func["Il"] = Bydz2017["Il"] Func["Il"] = Bydz2018["Il"] Func["Il"] = Func["Il"] Func["Il"] = _G Func["Il"] = Func["Il"] Func["Il"] = Func["Il"] Func["Il"] = Func["Il"] Func["Il"] = Func["Il"] Func["Il"] = Func["Il"]
Func['BydzReplace'] ={["Il"] = "MbakMinul",['BydzReplace'] = "MbakMinul"}
Func['BydzReplace']["Il"] = {["Il"] = "MbakMinul",['BydzReplace'] = "MbakMinul"}
Func['BydzReplace']['BydzReplace'] = {["Il"] = "MbakMinul",['BydzReplace'] = "MbakMinul",["Il"] = "MbakMinul",['BydzReplace'] = "MbakMinul",["Il"] = "MbakMinul",['BydzReplace'] = "MbakMinul"}
]]) .. Motch('_G["gg"]["setVisible"](false) ;; _G["gg"]["toast"]("'..myToast..'")') .. ([[
for j = 0, 8000, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]}  Bydz2017["Il"] = {Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]}  for k = 0, 6000, 0 do  Bydz2017["BydzReplace"] = Bydz2017["BydzReplace"][k] * Bydz2017["Il"][k] << Bydz2017["BydzReplace"][k] + Bydz2017["Il"][k] - Bydz2017["Il"][k] ~ Bydz2017["BydzReplace"][k] >> Bydz2017["Il"][k] * Bydz2017["BydzReplace"][k]   Bydz2017["Il"] = Bydz2017["BydzReplace"][k] * Bydz2017["Il"][k] << Bydz2017["BydzReplace"][k] + Bydz2017["Il"][k] - Bydz2017["Il"][k] ~ Bydz2017["BydzReplace"][k] >> Bydz2017["Il"][k] * Bydz2017["BydzReplace"][k]   for h = 0, 70000, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]}  Bydz2017["Il"] = {Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]}  for l = 0, 63759693, 0 do  Bydz2017["BydzReplace"] = Bydz2017["BydzReplace"][l] * Bydz2017["Il"][l] << Bydz2017["BydzReplace"][l] + Bydz2017["Il"][l] - Bydz2017["Il"][l] ~ Bydz2017["BydzReplace"][l] >> Bydz2017["Il"][l] * Bydz2017["BydzReplace"][l]   Bydz2017["Il"] = Bydz2017["BydzReplace"][l] * Bydz2017["Il"][l] << Bydz2017["BydzReplace"][l] + Bydz2017["Il"][l] - Bydz2017["Il"][l] ~ Bydz2017["BydzReplace"][l] >> Bydz2017["Il"][l] * Bydz2017["BydzReplace"][l]   for o = 0, 45553648, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]}  Bydz2017["Il"] = {Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]}  for s = 0, 446274, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]}  Bydz2017["Il"] = {Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]}  Bydz2017["BydzReplace"]({Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]})  Bydz2017["Il"]({Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]})  Bydz2017["Il"]({Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l]})  Bydz2017["Il"]({Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]})  Bydz2017["Il"]({Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k]})  Bydz2017["Il"]({Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]})  Bydz2017["Il"]({Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]})  end
local Z = {}
goto goFASSSS
for j = 0, 8000, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]}  Bydz2017["Il"] = {Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]}  for k = 0, 6000, 0 do  Bydz2017["BydzReplace"] = Bydz2017["BydzReplace"][k] * Bydz2017["Il"][k] << Bydz2017["BydzReplace"][k] + Bydz2017["Il"][k] - Bydz2017["Il"][k] ~ Bydz2017["BydzReplace"][k] >> Bydz2017["Il"][k] * Bydz2017["BydzReplace"][k]   Bydz2017["Il"] = Bydz2017["BydzReplace"][k] * Bydz2017["Il"][k] << Bydz2017["BydzReplace"][k] + Bydz2017["Il"][k] - Bydz2017["Il"][k] ~ Bydz2017["BydzReplace"][k] >> Bydz2017["Il"][k] * Bydz2017["BydzReplace"][k]   for h = 0, 70000, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]}  Bydz2017["Il"] = {Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]}  for l = 0, 63759693, 0 do  Bydz2017["BydzReplace"] = Bydz2017["BydzReplace"][l] * Bydz2017["Il"][l] << Bydz2017["BydzReplace"][l] + Bydz2017["Il"][l] - Bydz2017["Il"][l] ~ Bydz2017["BydzReplace"][l] >> Bydz2017["Il"][l] * Bydz2017["BydzReplace"][l]   Bydz2017["Il"] = Bydz2017["BydzReplace"][l] * Bydz2017["Il"][l] << Bydz2017["BydzReplace"][l] + Bydz2017["Il"][l] - Bydz2017["Il"][l] ~ Bydz2017["BydzReplace"][l] >> Bydz2017["Il"][l] * Bydz2017["BydzReplace"][l]   for o = 0, 45553648, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]}  Bydz2017["Il"] = {Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]}  for s = 0, 446274, 0 do  Bydz2017["BydzReplace"] = {Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]}  Bydz2017["Il"] = {Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]}  Bydz2017["BydzReplace"]({Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]})  Bydz2017["Il"]({Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s],Bydz2017["Il"][s],Bydz2017["BydzReplace"][s]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]})  Bydz2017["Il"]({Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o],Bydz2017["Il"][o],Bydz2017["BydzReplace"][o]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l]})  Bydz2017["Il"]({Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l],Bydz2017["Il"][l],Bydz2017["BydzReplace"][l]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]})  Bydz2017["Il"]({Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h],Bydz2017["Il"][h],Bydz2017["BydzReplace"][h]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k]})  Bydz2017["Il"]({Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k],Bydz2017["Il"][k],Bydz2017["BydzReplace"][k]})  end  Bydz2017["BydzReplace"]({Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]})  Bydz2017["Il"]({Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j],Bydz2017["Il"][j],Bydz2017["BydzReplace"][j]})  end
Func['S'] = ]]) .. FFkey ..';'.. ';' .. Spammer[3].. " ::goFASSSS:: Z['S'] = " .. Key .. Spammer[3] .. ';' .. Decoder .. ';' .. Spammer[3] .. ';\n' .. ns.svStr ..'\n'..([[;end)()]])
toass('Testing Script',10)
io.output(ns.out)
io.write(ns.svStr)

ns.loaders,ns.error=load(ns.svStr)
if ns.loaders == nil then
print(ns.error)
return gg.alert('🐣 Error !!')
end
time_ = (os.time() - time_1)
textTime = ''
if time_ > 60 then
min = time_ / 60
sec = time_ - (60*min)
textTime = min.." Minute "..sec.." Seconds"
elseif time_ < 60 then
textTime = time_.." Seconds"
end
local dec_hex = function(...)
Str = ...
bydzBoy = {}
Str = Str:gsub('..', function(c)
c = tonumber(c, 16)
bydzBoy[#bydzBoy+1] = c
return ''
end)
return string.char(table.unpack(bydzBoy))
end
CopyRight = "\n🇮🇩 © BydzNesia 6.4 ~ 2021 🇮🇩 "
CopyRight = string.char(0,0,0) .. CopyRight .. string.char(0,0)
RvarS = {}
Var_Save__ = "0102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F2021222324262728292A2B2C2D2E2F303132333435363738393A3B3C3D3E3F404142434445464748494A4B4C4D4E4F505152535455565758595A5B5C5D5E5F606162636465666768696A6B6C6D6E6F707172737475767778797A7B7C7D7E7F808182838485868788898A8B8C8D8E8F909192939495969798999A9B9C9D9E9FA0A1A2A3A4A5A6A7A8A9AAABACADAEAFB0B1B2B3B4B5B6B7B8B9BABBBCBDBEBFC0C1C2C3C4C5C6C7C8C9CACBCCCDCECFD0D1D2D3D4D5D6D7D8D9DADBDCDDDEDFE0E1E2E3E4E5E6E7E8E9EAEBECEDEEEFF0F1F2F3F4F5F6F7F8F9FAFBFCFDFEFF"
Var_Save__:gsub('..', function(c)
RvarS[#RvarS+1] = string.char(tonumber(c, 16))
return RvarS[#RvarS]
end)
RandVar = function(num)
Flaa = string.char(0)
for u = 2, num do
Flaa = Flaa .. RvarS[math.random(1,#RvarS)]
end
return Flaa
end
function Dumper(codes)
local codes = load(codes)
local Dumped=string.dump(codes, true)
Original = dec_hex("0403000000496C")
Original2 = dec_hex("040C0000004279647A5265706C616365")
Replaced = CopyRight
Replaced2 = CopyRight
toass('Adding Security 2',5)
if ns.prp[6] == false then
FirstNUM = math.random(3000,4000)
LastNUM = 5000 - (FirstNUM + 8)
for u = 1, FirstNUM do
Replaced = Replaced .. string.char(0) .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] ..RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] ..RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] ..RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)]
Replaced2 = Replaced2 .. string.char(0) .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] ..RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] ..RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] ..RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)]
end
Replaced = Replaced .. CopyRight
Replaced2 = Replaced2 .. CopyRight
for u = 1, LastNUM do
Replaced = Replaced .. string.char(0) .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] ..RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] ..RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] ..RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)]
Replaced2 = Replaced2 .. string.char(0) .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] ..RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] ..RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] ..RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)]
end
else
Replaced = Replaced .. (string.char(0) .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] ..RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] ..RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] ..RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)]):rep(FirstNUM)
Replaced2 = Replaced2 .. (string.char(0) .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] ..RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] ..RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] ..RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)]):rep(FirstNUM)
Replaced = Replaced .. CopyRight
Replaced2 = Replaced2 .. CopyRight
Replaced = Replaced .. (string.char(0) .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] ..RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] ..RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] ..RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)]):rep(LastNUM)
Replaced2 = Replaced2 .. (string.char(0) .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] ..RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] ..RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] ..RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)] .. RvarS[math.random(1,#RvarS)]):rep(LastNUM)

end
Rpc = [[0461EA0000]]
Replaced = dec_hex(Rpc) .. Replaced
Rpg = [[0461EA0000]]
Replaced2 = dec_hex(Rpg) .. Replaced2
Dumped = Dumped:gsub(Original,Replaced)
Dumped = Dumped:gsub(Original2,Replaced2)
Rpq = [[040A0000004D62616B4D696E756C]]
Rpw = [[04000000]]
Dumped = Dumped:gsub(dec_hex(Rpq),dec_hex(Rpw))
Dumped = Dumped:gsub(string.char(table.unpack({0,128,0,31,0,128,0,31,0,128,0,31})),string.char(0,0x80,0,0x1F,0x0,0x80,0x0,0x1B,math.random(0x70,0xff),math.random(0x80,0xff),math.random(0xb0,0xff),0x1F))
Hfk = [[1B4C7561520001040404080019930D0A1A0A000000000000000000010A0F]]
Jdh=[[1B4C7561520001040404080019930D0A1A0A000000000000000000010A0E]]
Dumped = Dumped:gsub(dec_hex(Hfk),dec_hex(Jdh))
Jdbc = [[001F0080000200000004300000000AF0]]
Dbchz = [[000200000004300000000AF0]]
Dumped = Dumped:gsub(dec_hex(Jdbc),dec_hex(Dbchz))
Dumped = Dumped:gsub(string.char(0x0,0x0,0x0,0x4,0x0,0x0,0x0,0x1B,0x80,0x0,0x80,0x17,0x80,0x0,0x0,0x17,0x80,0x0,0x0,0x17,0x0,0x0,0x0,0x4,0x0,0x80,0x0),string.char(0x80,0x31,0x10,0x17,0x80,0x1,0x10,0x17,0x80,0x8,0x82,0x3,0x80,0x5,0x0,0x18,0x80,0x8,0x0,0x19,0x0,0x80,0x5,0x1A,0x8,0x80,0x2A))
Dumped = Dumped:gsub(string.char(0x01,0x00,0x00,0x00,0x1f,0x00,0x80,0x00), string.char(0x00,0x00,0x00,0x00))
return Dumped
end
toass('Dumping Script',10)
ns.svStr = Dumper(ns.svStr)
toass('Testing Script',5)
ns.loaders,ns.error=load(ns.svStr)
if ns.loaders == nil then
print(ns.error)
return gg.alert('🐣 Error !!')
end
io.output(ns.out)
io.write(ns.svStr .. lasmKey)
gg.alert('🌟 Script was Successfully Encrypted !\n⌚ Time : ' .. textTime)
print("📣 Script was Successfully Encrypted !")
print("")
print("📂 File writted to : " .. ns.filename)
print("⛄ Thanks for using BydzNesia 6.4 🌟")
break
end -- while