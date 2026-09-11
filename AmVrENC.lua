
local g = {}
g.last = gg.getFile()
g.sel = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. ".cfg"
g.data = loadfile(g.config)
if g.data ~= nil then
g.sel = g.data()
g.data = nil
end
if g.sel == nil then
g.sel = {g.last, g.last:gsub("[^/]+$", "")}
end
Alert = gg.alert(os.date([[
∆mVr hacks Encryption

------------------------------------------------------------
🌟©️AmVr Encryption [Non Dec]  ©️🌟
------------------------------------------------------------

1. Block SStool ➕
2. Anti log  & hook ➕
3. Enc string.char & Sha➕
4. Работает во всех GG✔️
By AmVr🌟
]]), "START ↗️", "↙️ EXIT")

if Alert == nil then end
if Alert == 1 then end
if Alert == 2 then print("🛡️ AmVr Encryption [Non Dec]🛡️") os.exit() end
while true do
g.sel = gg.prompt({
'📁 Выберите файл для зашифровки :'
,'📂 Выберите путь для сохранения файла :'}
,g.sel
,{'file'
,'path'})
if g.sel == nil then
print("➖➖➖➖➖➖➖➖➖\n✖ Script Was Canceled ✖\n➖➖➖➖➖➖➖➖➖")
os.exit()
end
gg.saveVariable(g.sel, g.config)
gg.pathName = g.sel[1]:match(".*/")
gg.fileName = g.sel[1]:match(".*/(.*)")
gg.byteFile = #io.input((g.sel[1])):read("*a")
print("❵━─❲🔥AmVr Encryption [Non Dec]🔥❳─━❴ \n \n\n Loading. \n \n Loading.. \n \n Loading... \n \n Saving... \n\n 🔥Saved success 🔥\n 🛸Successful encrypt 🛸 \n 🛸Successful encrypt script🛸 \n\n\n 🛸 encryption by AmVr🛸 \n\n ☝️Telegram: @amvrhacks_lua☝️ \n\n\n  🌟VK: @dcan002🌟\n \n \n \n \n THANKS FOR USE")
g.name = g.sel[1]:match("[^/]+$"):gsub("%.lua$", "")
g.out = g.sel[2] .. "/" .. g.name .. ".AmVrEnc.lua"
g.last = g.sel[1]
local DATA = io.input(g.sel[1]):read('*a')






local TTable, Table, TTTable = {}, {}, {};AB = math.random(1000,20000);ABB = math.random(1000,20000);ABBB = math.random(1000,20000);AC = math.random(3000,40000);ACC = math.random(3000,40000);ACCC = math.random(3000,40000);AD = math.random(5000,60000);ADD = math.random(5000,60000);ADDD = math.random(5000,60000);AE = math.random(7000,80000);AEE = math.random(7000,80000);AEEE = math.random(7000,80000);AF = math.random(9000,100000);AFF = math.random(9000,100000);AFFF = math.random(9000,100000);AG = math.random(300,600);AGG = math.random(300,600);AGGG = math.random(300,600);local key = {(ACC+ABB*AEE)-ADD,AEE,ADD*1,ACC+AFF,ADD};local KY1 = (key[5]+key[3]+key[4]*key[2])-key[4];local KY2 = (key[1]+key[4]*2)-key[2];local inv256;local keyy = {(AB+AC*AD)-AE,AC,AD*2,AE+AD,AF};local Key1 = (keyy[1]+keyy[2]+keyy[4]*keyy[3])-keyy[4] ;local Key2 = (keyy[5]+keyy[4]*4)-keyy[1];local Key3 = (keyy[3]+keyy[1]*2)-keyy[2];local Key4 = (keyy[2]+keyy[4]*2)-keyy[3];local Key5 = (keyy[1]+keyy[3]*4)-keyy[3];local Key6 = (keyy[2]+keyy[4]*1)-keyy[5];local keYy = {(ACCC+ABBB*AEEE)-ADDD,ACCC,ADDD*4,AEEE+ADDD,AFFF};local KYY1 = (keYy[3]+keYy[1]+keYy[2]*keYy[3])-keYy[5]i19922 = math.random(99000,99600);i77 = math.random(58,80)
local _I1 = math.random(1122,36131)
function Sha(str)str = str:gsub("\\n", "\n"):gsub("\\t","\t")if not inv256 then inv256 = {} for M = 0, 127 do local inv = -1 repeat inv = inv + 2 until inv * (2*M + 1) % 256 == 1 inv256[M] = inv end;end local K, F = KY1 - AG, AG - KY2 return (str:gsub('.', function(m)local L = K % i19922 local H = (K - L) / i19922 local M = H % i77 local m = m:byte()local c = (m * inv256[M] - (H - M) / i77) % 256 K = L * F + H + c + m  return ('%02x'):format(c)end)):gsub(" $", "", 1) end
k = math.random(1,20)
function EncSTR(str)
str = str:gsub("\\n", "\n"):gsub("\\t","\t")
c = {str:byte(1, -1)}
LESS = "\\"..k..""
sd ={}
for i = 1, #c do
c[i] = (c[i] - Key1 - Key2 - Key3 % Key4 % Key5 - Key6 * Key1) % _I1
--res = LESS:rep(c[i])
--table.insert(sd, '"'..res..'"')
end
return "{AmVrEnc={"..table.concat(c, ",").."}}"
end
KYE={}
KYEEE={}
for i = 1,15 do
Gener=math.random(333,333)
table.insert(KYE, Gener)
end
Mke= 1 * math.random(11,71)
Mke2= 2 * math.random(7,71)
Mker= 3 * math.random(5,71)
Mker2= 4 * math.random(2,61)
Mk1 = (Mke+Mke2)
Mk2 = (Mke2-Mke)
Key_v1 = (Mker2*Mker)
Key_v2 = (Mke+Mker2)
Key_Veru = Key_v1 + Key_v2
for i in ipairs(KYE) do
c = ((KYE[i] - Key_Veru  + (Mk1 + i)  * Mk2) % 256)
table.insert(KYEEE, c)
end


function EncSTRR(str)
str = str:gsub("\\n", "\n"):gsub("\\t","\t")
c = {str:byte(1, -1)}
LESS = "\\"..k..""
sd = {}
for i = 1, #c do
c[i] = (c[i] - KYY1 - KYE[12] - KYE[3] * (KYE[5] + i) - (KYE[7] + i) - (KYE[6] + i) * (KYE[14] + i) - (KYE[4] + i)- KYE[9] - (KYE[11] + i) * (KYE[10] + i) - KYE[8] - KYE[13] * (KYE[1] + i) - KYE[2] * (KYE[15] + i)) % 256
--res = LESS:rep(c[i])
--table.insert(sd, '"'..res..'"')
end
return "{AmVrEnc={"..table.concat(c, ",").."}}"
end
TOTEXT ='for mi=1,0 do;local z={}if mi.mi~=nil then mi.mi=mi.mi()end;end;local ABB = "'..ABB..'";for mkm = 1,0 do;AmVrEncryption = "AmVrEncryption";end;local i = "53718";local ACC = I_("'..ACC..'");local i = "71659";local ADD = "'..ADD..'";local AEE = "'..AEE..'";local i = "61539";local AFF = I_("'..AFF..'");local i = "16165";local AGG = "'..AGG..'";local i = "31584";local AB = I_("'..AB..'");local AC = "'..AC..'";local AD = I_("'..AD..'");local AE = "'..AE..'";local AF = "'..AF..'";local mi = "191";local AG = '..AG..';local keyy = {(AB+AC*AD)-AE,AC,AD*2,AE+AD,AF};local Key1 = (keyy[1]+keyy[2]+keyy[4]*keyy[3])-keyy[4];while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;for mkm = 1,0 do;AmVrEncryption = "AmVrEncryption";end;local Key2 = (keyy[5]+keyy[4]*4)-keyy[1];local Key3 = (keyy[3]+keyy[1]*2)-keyy[2];local Key4 = (keyy[2]+keyy[4]*2)-keyy[3];local Key5 = (keyy[1]+keyy[3]*4)-keyy[3];local Key6 = (keyy[2]+keyy[4]*1)-keyy[5];while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;local Moma1 = (keyy[1]+keyy[2]+keyy[4]*keyy[3])-keyy[4];local L_=I_("'..math.random(9,999)..'");local L_ = I_("'.._I1..'");local Moma2 = (keyy[5]+keyy[4]*4)-keyy[1];local Moma3 = (keyy[3]+keyy[1]*2)-keyy[2];local Moma4 = (keyy[2]+keyy[4]*2)-keyy[3];local Moma5 = (keyy[1]+keyy[3]*4)-keyy[3];local Moma6 = (keyy[2]+keyy[4]*1)-keyy[5];local key = {(ACC+ABB*AEE)-ADD,AEE,ADD*1,ACC+AFF,ADD};local KY1 = (key[5]+key[3]+key[4]*key[2])-key[4];local KY2 = (key[1]+key[4]*2)-key[2];while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;local _SS = function(c)  res = "" for m in ipairs(c) do;while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;for mkm = 1,0 do;AmVrEncryption = "AmVrEncryption";end;for mkm = 1,0 do;AmVrEncryption = "AmVrEncryption";end;res = res..string.char((c[m] + Moma2 + (Moma1 + m) + Moma2 * (Moma3 + m)) % 256)  end  if true then return res end if true then return end if true then return end end;local _SS , _S = function(c) for mkm = 1,0 do;AmVrEncryption = "AmVrEncryption";end c = c.AmVrEnc res = "" for m in ipairs(c) do;while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;for mkm = 1,0 do;AmVrEncryption = "AmVrEncryption";end;res = res..string.char((c[m] + Key1 + Key2 + Key3 % Key4 % Key5 + Key6 * Key1 ) % L_)  end  if true then return res end if true then return end if true then return end end , function(str)for mkm = 1,0 do;AmVrEncryption = "AmVrEncryption";end str=str.AmVrEnc local K, F = KY1 - AG, AG - KY2 while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end for mkm = 1,0 do;AmVrEncryption = "AmVrEncryption";end return (str:gsub("%x%x", function(c)  local L = K % _iii local H = (K - L) / _iii local M = H % _ii  while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end c = tonumber(c, 16) while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end local m = (c + (H - M) / _ii) * (2*M + 1) % 256 K = L * F + H + c + m  if true then return string.char(m)end if true then return end if true then return end end))end\n '

function tempstr(sz,isF)
  sz=sz or math.random(8,58)
  local se=" goto s "
  local sa = " i = ~i i = _ENV[35] i = _ENV[i] i = ~i  i = ~i i = _ENV[35] i = _ENV[i] i = ~i i = ~i i = _ENV[35] i = _ENV[i] i = ~i i = ~i i = _ENV[35] i = _ENV[i] i = ~i  i = ~i i = _ENV[35] i = _ENV[i] i = ~i i = ~i i = _ENV[35] i = _ENV[i] i = ~i i = ~i i = _ENV[35] i = _ENV[i] i = ~i  i = ~i i = _ENV[35] i = _ENV[i] i = ~i i = ~i i = _ENV[35] i = _ENV[i] i = ~i i = ~i i = _ENV[35] i = _ENV[i] i = ~i  i = ~i i = _ENV[35] i = _ENV[i] i = ~i i = ~i i = _ENV[35] i = _ENV[i] i = ~i i = ~i i = _ENV[35] i = _ENV[i] i = ~i  i = ~i i = _ENV[35] i = _ENV[i] i = ~i i = ~i i = _ENV[35] i = ~i "
  local strs=""
  for s=1,sz do
    strs=strs..se
    saa=""..sa
  end
  strs=" if(nil)then for i = 1,0 do M = 'AmVrWar[AmVrEnc]'if ({}).M~=nil then ({}).M=({}).M() end"..saa.."for i=({}).i ,({}).i ,({}).i do goto s goto s::s::end for i= {}, ({}).i , {} do goto s goto s::s::end for i= {}, {} , iiii do goto s goto s::s::end while(nil)do;for i=i,i do;local i={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i do;local ii={}if(ii.i)then;ii.i=ii.i()end;for iii=i,ii.i,i do;local iii={}if(iii.i)then;iii.i=iii.i(i)end;for iiii=i,ii,iii.i do;local iiii={}if(iiii.i)then;iiii.i=iiii.i(i)end;local iiii={}if(iiii.i)then;iiii.i=(iiii|iii|ii|i)(i)end;end;local iii={}if(iii.i)then;iii.i=(true|iii|ii|i)(i)end;end;local ii={}if(ii.i)then;ii.i=(true|false|ii|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i)end;return(true|false|nil)end;return;end end if(nil)then "..strs.." ::s:: end for x = 1,0 do if x.x ~= nil then x.x = x.x() end end _={} _.__() _.___() _.____() _._____() end "
return strs
end
Number = 18
Numberr = 17
ksmkk = 6
local DATA = DATA:gsub([["\"]],[["]]):gsub([[\""]],[["]])
local DATA = DATA:gsub([["']],[[']]):gsub([['"]],[[']])
local DATA = DATA:gsub([['\']],[[']]):gsub([[\'']],[[']])
local DATA = DATA:gsub([['"]],[[']]):gsub([["']],[[']])
TOTEXT = TOTEXT:gsub('"(.-)"', function(c)
c = load('return "'..c..'"')()
T = EncSTRR(c)
table.insert(TTTable, T)
ksmkk = ksmkk + 1
return "_o(_l["..ksmkk.."])"
end)
TOTEXT = TOTEXT:gsub("'(.-)'", function(c)
c = load("return '"..c.."'")()
T = EncSTRR(c)
table.insert(TTTable, T)
ksmkk = ksmkk + 1
return "_o(_l["..ksmkk.."])"
end)
DATA = DATA:gsub('"(.-)"', function(c)
c = load('return "'..c..'"')()
T = EncSTR(c)
table.insert(Table, T)
Number = Number + 1
return "_SS(_Me1["..Number.."])"
end)
DATA = DATA:gsub("'(.-)'", function(c)
c = load("return '"..c.."'")()
T = EncSTR(c)
table.insert(Table, T)
Number = Number + 1
return "_SS(_Me1["..Number.."])"
end)
DATA = DATA:gsub("gg.clearResults","for mkm = 1,0 do;AmVrEncryption = 'AmVrEncryption';end\ngg.clearResults\n")
for k, v in pairs(gg) do
ambl = "gg." .. k
DATA = DATA:gsub(ambl, function()
T = "{AmVrEnc = '"..Sha(k).."'}"
table.insert(TTable, T)
Numberr = Numberr + 1
return "gg[_S(_Me2["..Numberr.."])]"
end)
end
DATA = DATA:gsub("[[(.-)]]", function(c)
c = load("return [["..c.."]]")()
T = EncSTR(c)
table.insert(Table, T)
Number = Number + 1
return "_SS(_Me1["..Number.."])"
end)
DATA = DATA:gsub("[=[(.-)]=]", function(c)
c = load("return '"..c.."'")()
T = EncSTR(c)
table.insert(Table, T)
Number = Number + 1
return "_SS(_Me1["..Number.."])"
end)
for k, v in pairs(io) do
ambl = "io." .. k
DATA = DATA:gsub(ambl, function()
T = "{AmVrEnc = '"..Sha(k).."'}"
table.insert(TTable, T)
Numberr = Numberr + 1
return "io[_S(_Me2["..Numberr.."])]"
end)
end
for k, v in pairs(os) do
ambl = "os." .. k
DATA = DATA:gsub(ambl, function()
T = "{AmVrEnc = '"..Sha(k).."'}"
table.insert(TTable, T)
Numberr = Numberr + 1
return "os[_S(_Me2["..Numberr.."])]"
end)
end
for k, v in pairs(math) do
ambl = "math." .. k
DATA = DATA:gsub(ambl, function()
T = "{AmVrEnc = '"..Sha(k).."'}"
table.insert(TTable, T)
Numberr = Numberr + 1
return "math[_S(_Me2["..Numberr.."])]"
end)
end
for k, v in pairs(debug) do
ambl = "debug." .. k
DATA = DATA:gsub(ambl, function()
T = "{AmVrEnc = '"..Sha(k).."'}"
table.insert(TTable, T)
Numberr = Numberr + 1
return "debug[_S(_Me2["..Numberr.."])]"
end)
end
for k, v in pairs(string) do
ambl = "string." .. k
DATA = DATA:gsub(ambl, function()
T = "{AmVrEnc = '"..Sha(k).."'}"
table.insert(TTable, T)
Numberr = Numberr + 1
return "string[_S(_Me2["..Numberr.."])]"
end)
end
for k, v in pairs(table) do
ambl = "table." .. k
DATA = DATA:gsub(ambl, function()
T = "{AmVrEnc = '"..Sha(k).."'}"
table.insert(TTable, T)
Numberr = Numberr + 1
return "table[_S(_Me2["..Numberr.."])]"
end)
end
DATA = TOTEXT .. DATA
io.output(g.out,"w")
io.write([[
collectgarbage("collect")
local _ = ' \n\n\t\t\t\t\t🛡AmVr Encryption [Non Dec]🛡  \n\n  by AmVr Hacks'
local function __()
for mkm = 1,0 do;AmVrEncrypt = 'AmVrEncrypt';end
local _ = collectgarbage("collect")
]]..tempstr(555)..[[
local function __()
local gg = gg;local os = os;local io = io;local debug = debug;local math = math;local table = table;local _Me1 =_Me1;local _Me2=_Me2;local I_ = I_
local I_=function(c) c="" end;local I_=function(c)return c end;local M_=function(c,m)end;local M_=function(c,m) return c * m end;for _iii = 1,0 do if _iii ~= nil then local _iii = {} _iii._iii = _iii._iii() end end;local g, g, g = {}, {}, {}while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;for _ii = 1,0 do if _ii ~= nil then local _ii = {} _ii._ii = _ii._ii() end end;local i = I_("]]..math.random(100,88000)..[[");local Mke = ]]..Mke..[[;for mkm = 1,0 do;AmVrEncryption = 'AmVrEncryption';end; _Me1 = _Me1 _Me1 = I_({nil,nil,false,false,true,nil,nil,nil,false,false,true,nil,nil,nil,false,false,true,nil,]]..table.concat(Table, ",")..[[,true,false,false,nil,nil,nil,true,nil,true,nil})_Me1 = _Me1;local ABBB = ]]..ABBB..[[;local ACCC = ]]..ACCC..[[;local _ii=]]..i77..[[;for mkm = 1,0 do;AmVrEncryption = 'AmVrEncryption';end;local Mker2 = ]]..Mker2..[[;local Key_v1 = M_(Mker2, ]]..Mker..[[);local Key_v2 = (Mke+Mker2);local Key_Veru = Key_v1 + Key_v2;local AGGG = ]]..AGGG..[[;local _l = I_({nil,nil,false,false,true,nil,]]..table.concat(TTTable, ",")..[[,]]..Mk1..[[,]]..Mk2..[[,{AmVrEnc={]]..math.random(1,271)..[[}},{AmVrEnc={]]..math.random(1,265)..[[,]]..math.random(1,211)..[[,]]..math.random(1,211)..[[,]]..math.random(1,211)..[[}},{AmVrEnc={]]..math.random(1,221)..[[}},nil,false,false,{AmVrEnc={]]..math.random(1,211)..[[,]]..math.random(1,211)..[[,]]..math.random(1,211)..[[}},nil,nil,false,nil,{AmVrEnc={]]..math.random(1,211)..[[,]]..math.random(1,231)..[[,]]..math.random(1,211)..[[,]]..math.random(1,211)..[[,]]..math.random(1,211)..[[}},false,true,nil}) function I_(c)res=""KeyYY={}for i in ipairs(c) do;res = (c[i] + Key_Veru - (_l[37] + i)  * _l[38]) % 256
table.insert(KeyYY, res)end;return KeyYY;end;local KYE= I_({]]..table.concat(KYEEE,",")..[[});I_=function(c)return c end ;while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;_Me2 = _Me2 _Me2 = I_({nil,nil,false,false,true,nil,nil,nil,false,false,true,nil,nil,nil,false,false,true,]]..table.concat(TTable, ",")..[[,false,nil,true,nil,true,nil,false,true,false,nil,false,true,nil,false,true,nil})_Me2 = _Me2;MOD4 = "address";MOD5 = "flags";MOD6 = "values";MOD7 = "ERROR\nRESTART SCRIPT";local ADDD = I_("]]..ADDD..[[");local AEEE = I_("]]..AEEE..[[");local i = "]]..math.random(100,9300)..[[";MOD8 = "⚠️ERROR⚠️\nTime Lost🦅";local _iii= ]]..i19922..[[;for mkm = 1,0 do;AmVrEncryption = 'AmVrEncryption';end;for mkm = 1,0 do;AmVrEncryption = 'AmVrEncryption';end;MOD9 = "RESTART SCRIPT NO LOG🦅";local gg = gg;local os = os;local io = io;local debug = debug;local math = math;local table = table;for i = 1,5 do;loadfile = loadfile;load = load;loadfile(gg.getFile()) load(string.dump(load("os.exit()"),false,false)) io.open(gg.getFile() .. "c" .. tostring(string.dump(loadfile(gg.getFile()),false,false)),"w") end;a = {};for i = 1, string.char(53,48,48,48,48) do;table.insert(a, {[MOD4] = 0 + i,[MOD5] = 4,[MOD6] = 0});end;t1 = os.time();for i = 1, 6 do;gg.removeResults(a);end;gg.clearList();t2, a = os.time(), MOD7;if t2 < t1 then;gg.alert(MOD8, "");do return end;return;end;if t2 > t1 then;a = MOD9;end;if os.difftime(t2, t1) > 2 then;return F(a, "");end;local i = "]]..math.random(61,918)..[["local AFFF = I_("]]..AFFF..[[");local i = I_("]]..math.random(100,8900)..[[")local keYy = {(ACCC+ABBB*AEEE)-ADDD,ACCC,ADDD*4,AEEE+ADDD,AFFF}
for mkm = 1,0 do;AmVrEncryption = 'AmVrEncryption';end
local KYY1 = (keYy[3]+keYy[1]+keYy[2]*keYy[3])-keYy[5]
_o = _o
_o = function(c) 
c=c.AmVrEnc
res = '' 
for mkm = 1,0 do;AmVrEncryption = 'AmVrEncryption';end
for m in ipairs(c) do
res = res..string.char((c[m] + KYY1 + KYE[12] + KYE[3] * (KYE[5] + m) + (KYE[7] + m) + (KYE[6] + m) * (KYE[14] + m) + (KYE[4] + m)+ KYE[9] + (KYE[11] + m) * (KYE[10] + m) + KYE[8] + KYE[13] * (KYE[1] + m) + KYE[2] * (KYE[15] + m)) % 256)  
for mkm = 1,0 do;AmVrEncryption = 'AmVrEncryption';end
end 
for mkm = 1,0 do;AmVrEncryption = 'AmVrEncryption';end
return res
end

]]..DATA..[[ 

end
local function _()
local __ = __()
for mkm = 1,0 do;AmVrEncryption = 'AmVrEncryption';end
end
local _ = _()
end

local function _()
local __ = __()
for mkm = 1,0 do;AmVrEncryption = 'AmVrEncryption';end
end
local _ = _()
]])
io.close()
mkmFlags="OP[48] 0x22\nOP[49] 0x27\nOP[48] 0xae879ff0\nOP[48] 0xb6879ff0\nOP[48] 0xae879ff0\nOP[48] 0xb6879ff0\nMOVE v28 v39\nOP[48] 0xa8879ff0\nOP[48] 0xb3879ff0\nMOVE v82 v281\nOP[48] 0xae879ff0\nOP[48] 0xb6879ff0\nOP[69] 0xbb879ff0\nOP[48] 0x35879ff0\nOP[48] 0x2e\nOP[48] 0x30879ff0\nOP[48] 0xa6879ff0\nOP[48] 0xae879ff0\nOP[48] 0xb6879ff0\nMOVE v0 v0\nOP[48] 0xa6879ff0\nMOVE v0 v0\nOP[48] 0xae879ff0\nOP[48] 0xb6879ff0\nOP[48] 0xa6879ff0\nMOVE v0 v0\nOP[48] 0xa6879ff0\nOP[48] 0xa6879ff0\nMOVE v26 v27\nOP[48] 0xb8879ff0\nMOVE v0 v0\nOP[48] 0xb8879ff0\nMOVE v0 v0\nOP[48] 0xb8879ff0\nMOVE v0 v0\nOP[48] 0xb8879ff0\nOP[48] 0xae879ff0\nOP[48] 0xb6879ff0\nOP[48] 0xb8879ff0\nOP[48] 0xae879ff0\nOP[48] 0xb6879ff0\nMOVE v28 v39\nOP[48] 0xa8879ff0\nOP[48] 0xb3879ff0\nOP[69] 0xbb879ff0\nOP[48] 0x35879ff0\nOP[48] 0x2e\nOP[48] 0x30879ff0\nOP[48] 0xae879ff0\nOP[48] 0xae879ff0\nOP[48] 0xb6879ff0\nOP[48] 0xb6879ff0\nMOVE v28 v39\nOP[48] 0xa8879ff0\nOP[48] 0xb3879ff0\nOP[69] 0xbb879ff0\nOP[48] 0xae879ff0\nOP[48] 0xb6879ff0\nOP[48] 0x35879ff0\nOP[48] 0x2e\nOP[48] 0x30879ff0\nOP[48] 0xae879ff0\nOP[48] 0xae879ff0\nOP[48] 0xb6879ff0\nOP[48] 0xb6879ff0\nMOVE v28 v39\nOP[48] 0xa8879ff0\nOP[48] 0xb3879ff0\nOP[69] 0xbb879ff0\nOP[48] 0x35879ff0\nOP[48] 0x2e\nOP[48] 0x30879ff0"
mkmFlags=mkmFlags.."\n"
mkmFlags=mkmFlags:rep(91)


































mkm="OP[48] 0x22\nOP[49] 0x27\nMOVE v181 v271\nOP[48] 0xa8879ff0\nOP[48] 0xb3879ff0\nMOVE v82 v281\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nSHL v30 CONST[255] v126\nBNOT v133 v64\nMOVE v244 v0\nMOVE v108 v497\nOP[63] 0xc700bf\nMOVE v0 v0\nMOVE v0 v0\nSHL v30 CONST[255] v126\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nOP[48] 0xa8879ff0\nOP[48] 0xb3879ff0\nMOVE v82 v281\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nBNOT v133 v64\nMOVE v244 v0\nMOVE v108 v497\nOP[63] 0xc700bf\nMOVE v0 v0\nMOVE v0 v0\nSHL v30 CONST[255] v126\nSHL v30 CONST[255] v126\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nOP[48] 0xa8879ff0\nOP[48] 0xb3879ff0\nMOVE v82 v281\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nOP[48] 0xa6879ff0\nOP[48] 0xb7879ff0\nMOVE v161 v271\nOP[48] 0xae879ff0\nOP[48] 0xb6879ff0\nMOVE v28 v39\nOP[48] 0xa8879ff0\nOP[48] 0xb3879ff0\nOP[48] 0xae879ff0\nOP[48] 0xb6879ff0\nMOVE v0 v0\nOP[48] 0xb2879ff0\nMOVE v0 v0\nOP[48] 0xa6879ff0\nMOVE v0 v0\nOP[48] 0xab879ff0\nOP[48] 0xa8879ff0\nOP[48] 0xb3879ff0\nMOVE v82 v281\nMOVE v0 v0\nOP[48] 0xae879ff0\nMOVE v0 v0\nOP[48] 0xa6879ff0\nMOVE v0 v0\nOP[48] 0xaf879ff0\nOP[48] 0xa6879ff0\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nOP[48] 0xa6879ff0\nOP[48] 0xb7879ff0\nMOVE v161 v271\nOP[48] 0xae879ff0\nOP[48] 0xb6879ff0\nMOVE v28 v39\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nOP[48] 0xa8879ff0\nOP[48] 0xb3879ff0\nMOVE v82 v281\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nSHL v30 CONST[255] v126\nBNOT v133 v64\nMOVE v244 v0\nMOVE v108 v497\nOP[63] 0xc700bf\nMOVE v0 v0\nMOVE v0 v0\nSHL v30 CONST[255] v126\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nOP[48] 0xa8879ff0\nOP[48] 0xb3879ff0\nMOVE v82 v281\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nBNOT v133 v64\nMOVE v244 v0\nMOVE v108 v497\nOP[48] 0xa6879ff0\nOP[48] 0xb7879ff0\nMOVE v161 v271\nOP[48] 0xae879ff0\nOP[48] 0xb6879ff0\nMOVE v28 v39\nOP[48] 0xaf879ff0\nOP[48] 0xa6879ff0\nMOVE v0 v0"

mkm=mkm.."\n"

io.input(g.out, "r")
local DATS = io.read("*a")
DATS = string.dump(load(DATS), true, true)
DATS = gg.internal2(load(DATS), g.out)
io.input(g.out, "r")
DATS = io.read("*a")
DATS = DATS:gsub('SETTABUP u[^\n]* "AmVrEncrypt" "AmVrEncrypt"', mkmFlags)
DATS = DATS:gsub('SETTABUP u[^\n]* "AmVrEncryption" "AmVrEncryption"', mkm)
os.remove(g.out..".tmp")
io.open(g.out,"w"):write(string.dump(load(DATS), true)):close()
--os.exit()
--------:v Lasm Error By ItSC :v---------
func = {}
function dzsh(Text)
    Text = Text:gsub(" ", "")
    return (Text:gsub(
        "..",
        function(jie)
            return string.char((tonumber(jie, 16)) % 256)
        end
    ))
end

function escapeOpcode(str,repl)
	if (repl==true) then 
	magic_character = {37}
	else
	magic_character = {40,41,46,37,43,45,42,63,91,93,94,36}
	end
	invi = {}
	txt = ""
	string.gsub(str,".",function(w) w= string.byte(w) invi[#invi+1]=w end)
	for i, v in ipairs(invi) do 
		if string.len(v)== 1 then invi[i] = "【0"..v.."】" 
		else invi[i] = "【"..v.."】"end
	end
	for i = 1,#invi do
		for m, k in ipairs(magic_character)do
			if(invi[i])~=	"【"..k.."】" then
				else invi[i] = "【37】"..invi[i]..""
			end
		end
		txt = txt .. invi[i]
	end
	txt = string.gsub(txt,"【(.-)】",function(w) return string.char(w) end)
	return txt
end

function numToHex(txt,skip)
    local ss = {}
    txt = string.format("%x", txt)
    len = string.len(txt)
    if string.len(txt) % 2 == 0 then
        txt:gsub("..?",function(n) ss[#ss + 1] = n end)
    else
        ss[1] = string.sub(txt, 1, 1)
        txt = string.sub(txt, 2)
        txt:gsub( "..?",function(n)ss[#ss + 1] = n end)
    end
    for i = 1, #ss do
        if string.len(ss[i]) == 1 then
            ss[i] = "0" .. ss[i]
        end
    end
    str = ""
    for i = #ss, 1, -1 do
        str = str .. ss[i]
    end
    if string.len(str) == 1 then
        str = str .. "0000000"
    elseif string.len(str) == 2 then
        str = str .. "000000"
    elseif string.len(str) == 3 then
        str = str .. "00000"
    elseif string.len(str) == 4 then
        str = str .. "0000"
    elseif string.len(str) == 5 then
        str = str .. "000"
    elseif string.len(str) == 6 then
        str = str .. "00"
    elseif string.len(str) == 7 then
        str = str .. "0"
    end
    return str
end

function formatTwo(str)
	if string.len(str)~=2 then str = "0"..str end
	return str
end

function getSources(source)
    io.open("/sdcard/readSources", "w"):write(source)
    file = io.open("/sdcard/readSources")
    s = 0
    n = 0
    local determinant = ""
    repeat
        s = s + 1
        text = file:read("*l")
        if text == nil then
            break
        end
        if text ~= nil then
            local lineDefine = string.match(text, "%.linedefined [-]?(%d+)")
            local lastLineDefine = string.match(text, "%.lastlinedefined [-]?(%d+)")
            local numparams = string.match(text, "%.numparams [-]?(%d+)")
            local isVararg = string.match(text, "%.is_vararg [-]?(%d+)")
            local maxStack = string.match(text, "%.maxstacksize [-]?(%d+)")
            if lineDefine ~= nil then
                n = n + 1
                func[n] = {[1] = numToHex(lineDefine)}
            end
            if lastLineDefine ~= nil then
                func[n] = {[1] = func[n][1], [2] = numToHex(lastLineDefine)}
            end
            if numparams ~= nil then
                numparams = string.format("%x", numparams)
                func[n] = {[1] = func[n][1], [2] = func[n][2], [3] = formatTwo(numparams)}
            end
            if isVararg ~= nil then
				isVararg = string.format("%x", isVararg)
                func[n] = {
                    [1] = func[n][1],
                    [2] = func[n][2],
                    [3] = func[n][3],
                    [4] = formatTwo(isVararg)
                }
            end
            if maxStack ~= nil then
				maxStack = string.format("%x", maxStack)
                func[n] = {
                    ["LineStarted"] = func[n][1],
                    ["LineEnded"] = func[n][2],
                    ["Parameter"] = func[n][3],
                    ["isVararg"] = func[n][4],
                    ["maxStack"] = formatTwo(maxStack)
                }
            end
        end
    until text == nil
    os.remove("/sdcard/readSources")
    return func
end

function antiLasm(source)
    Instruction = {}
    for i = 1, #func do
        indicator = dzsh(func[i]["LineStarted"] ..func[i]["LineEnded"] .. func[i]["Parameter"] .. func[i]["isVararg"] .. func[i]["maxStack"])
        indicator = escapeOpcode(indicator)
		
        replacement = dzsh(numToHex(math.random(2447483649, 3294967296)) .. numToHex(math.random(2447483649, 3294967296))) .. dzsh("FA01FA")
        replacement = escapeOpcode(replacement, true)
        ins = string.match(source, indicator .. "[^\20-\7e][^\20-\7e][^\20-\7e][^\20-\7e]") -- 提取后一个空白Byte (Number of Instructions)
		if(Instruction[2]==nil)then 
			if ins ~= nil then
				ins = string.sub(ins, string.len(ins) - 3, string.len(ins))
			end
			Instruction[#Instruction + 1] = table.concat({ins:byte(1, -1)}, ",")
		end
        source = string.gsub(source, indicator, replacement)
    end
    return source
end
    chunk = string.dump(loadfile(g.out), true, true)
    chunk = load(chunk)
    gg.internal2(chunk, g.out .. ".tmp") -- 导出 Lasm
    source = io.open(g.out .. ".tmp"):read("*a")
    getSources(source)
    file = io.open(g.out):read("*a")
    file = antiLasm(file)
    io.open(g.out..".lua", "w"):write(file)
    os.remove(g.out)
    os.remove(g.out .. ".tmp")
    gg.toast("Successful✔")
gg.toast("💻 Скрипт прекрасно зашифрован",true)
gg.alert("📂 Скрипт успешно зашифрован\n🗂 Сохранен в: "..g.sel[1]..".AmVr.lua","")
gg["setVisible"](true)
return os.exit()
end