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
Snstart = gg.alert(os.date([[
 Eɴᴄʀʏᴘᴛ Bʏ Sɴ [ 5.0 ] 
______________________

📌 Fᴇᴀᴛᴜʀᴇs :
Nᴇᴡ Bʟᴏᴄᴋ SSᴛᴏᴏʟ 📎
Nᴇᴡ Aɴᴛɪ Lᴏɢ\Hᴏᴏᴋ 📎
Eɴᴄ Sᴛʀɪɴɢ.Cʜᴀʀ + Sʜᴀ 📎
Wᴏʀᴋ Aʟʟ ɢɢ✔️
Bʏ Sɴ ༆
Mʏ Iᴅ : @mlulinX ✪ 
Mʏ Cʜᴀɴɴᴇʟ : @SN2YT 🎮
]]), "START ↗️", "↙️ EXIT")

if Snstart == nil then end
if Snstart == 1 then end
if Snstart == 2 then print("✩ᴇʟɢɢ ʙʏ sɴ 5.0✩") os.exit() end
while true do
g.sel = gg.prompt({
'📁 Select file to compile :'
,'📂 Select writable path for output :'}
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
print("\n☞︎︎︎sᴜᴄᴄᴇssғᴜʟʟʏ ᴇɴᴄʀʏᴘᴛᴇᴅ :\n☞︎︎︎ᴇʟɢɢ ʙʏ sɴ 5.0\n☞︎︎︎sʜᴀ~sᴛʀ ᴇɴᴄʀʏᴘᴛɪᴏɴ")
g.name = g.sel[1]:match("[^/]+$"):gsub("%.lua$", "")
g.out = g.sel[2] .. "/" .. g.name .. ".Sñ(enc)"
g.last = g.sel[1]
local DATA = io.input(g.sel[1]):read('*a')
gg.setVisible(false)
local SNTable3, SNTable2, SNTable1 = {}, {}, {};shhn = math.random(1000,20000);szzn = math.random(1000,20000);sjjn = math.random(1000,20000);sbbn = math.random(3000,40000);seen = math.random(3000,40000);siin = math.random(3000,40000);sggn = math.random(5000,60000);sffn = math.random(5000,60000);svvn = math.random(5000,60000);suun = math.random(7000,80000);sqqn = math.random(7000,80000);suun = math.random(7000,80000);soon = math.random(9000,100000);swwn = math.random(9000,100000);srrn = math.random(9000,100000);snzzzz = math.random(300,600);snyyyy = math.random(300,600);snxxxx = math.random(300,600);local snsha = {(seen+szzn*sqqn)-sffn,sqqn,sffn*1,seen+swwn,sffn};local KY1 = (snsha[5]+snsha[3]+snsha[4]*snsha[2])-snsha[4];local KY2 = (snsha[1]+snsha[4]*2)-snsha[2];local inv256;local snelggX = {(shhn+sbbn*sggn)-suun,sbbn,sggn*2,suun+sggn,soon};local Key1 = (snelggX[1]+snelggX[2]+snelggX[4]*snelggX[3])-snelggX[4] ;local Key2 = (snelggX[5]+snelggX[4]*4)-snelggX[1];local Key3 = (snelggX[3]+snelggX[1]*2)-snelggX[2];local Key4 = (snelggX[2]+snelggX[4]*2)-snelggX[3];local Key5 = (snelggX[1]+snelggX[3]*4)-snelggX[3];local Key6 = (snelggX[2]+snelggX[4]*1)-snelggX[5];local snfunc = {(siin+sjjn*suun)-svvn,siin,svvn*4,suun+svvn,srrn};local SNlua1 = (snfunc[3]+snfunc[1]+snfunc[2]*snfunc[3])-snfunc[5]i19922 = math.random(99000,99600);i77 = math.random(58,80)
local _I1 = math.random(1122,36131)
function Sha(str)str = str:gsub("\\n", "\n"):gsub("\\t","\t")if not inv256 then inv256 = {} for M = 0, 127 do local inv = -1 repeat inv = inv + 2 until inv * (2*M + 1) % 256 == 1 inv256[M] = inv end;end local K, F = KY1 - snzzzz, snzzzz - KY2 return (str:gsub('.', function(m)local L = K % i19922 local H = (K - L) / i19922 local M = H % i77 local m = m:byte()local c = (m * inv256[M] - (H - M) / i77) % 256 K = L * F + H + c + m  return ('%02x'):format(c)end)):gsub(" $", "", 1) end
k = math.random(1,20)
function EncSTR(str)
str = str:gsub("\\n", "\n"):gsub("\\t","\t")
c = {str:byte(1, -1)}
LESS ="\\7"
sd ={}
for i = 1, #c do
c[i] = (c[i] - Key1 - Key2 - Key3 % Key4 % Key5 - Key6 * Key1) % _I1
res = LESS:rep(c[i])
table.insert(sd, '"'..res..'"')
end
return "{SN={"..table.concat(c, ",").."}}"
end
snmainkey={}
snmainkeyEE={}
for i = 1,15 do
Gener=math.random(333,333)
table.insert(snmainkey, Gener)
end
Mk1=math.random(19,371)
Mk2=math.random(31,471)	
for i in ipairs(snmainkey) do
c = ((snmainkey[i] - i  + (Mk1 + i)  * Mk2) % 256)
table.insert(snmainkeyEE, c)
end
gg.setVisible(false)
function SNSTR(str)
str = str:gsub("\\n", "\n"):gsub("\\t","\t")
c = {str:byte(1, -1)}
LESS = "\\001"
sd = {}
for i = 1, #c do
c[i] = (c[i] - SNlua1 - snmainkey[12] - snmainkey[3] * (snmainkey[5] + i) - (snmainkey[7] + i) - (snmainkey[6] + i) * (snmainkey[14] + i) - (snmainkey[4] + i)- snmainkey[9] - (snmainkey[11] + i) * (snmainkey[10] + i) - snmainkey[8] - snmainkey[13] * (snmainkey[1] + i) - snmainkey[2] * (snmainkey[15] + i)) % 256
res = LESS:rep(c[i])
table.insert(sd, '"'..res..'"')
end
return "{SN={"..table.concat(c, ",").."}}"
end
DATA = DATA:gsub(string.char(table.unpack({34,92,34})), string.char(table.unpack({34}))):gsub(string.char(table.unpack({92,34,34})), string.char(table.unpack({34})))
gg.setVisible(false)
TOTEXT ='for mi=1,0 do;local z={}if mi.mi~=nil then mi.mi=mi.mi()end;end;local szzn = "'..szzn..'";for SNgb2 = 1,0 do;SXN = "SXN";end;local i = "53718";local seen = I_("'..seen..'");local i = "71659";local sffn = "'..sffn..'";local sqqn = "'..sqqn..'";local i = "61539";local swwn = I_("'..swwn..'");local i = "20201";local snyyyy = "'..snyyyy..'";local i = "31584";local shhn = I_("'..shhn..'");local sbbn = "'..sbbn..'";local sggn = I_("'..sggn..'");local suun = "'..suun..'";local soon = "'..soon..'";local mi = "191";local snzzzz = '..snzzzz..';local snelggX = {(shhn+sbbn*sggn)-suun,sbbn,sggn*2,suun+sggn,soon};local Key1 = (snelggX[1]+snelggX[2]+snelggX[4]*snelggX[3])-snelggX[4];while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;for SNgb2 = 1,0 do;SXN = "SXN";end;local Key2 = (snelggX[5]+snelggX[4]*4)-snelggX[1];local Key3 = (snelggX[3]+snelggX[1]*2)-snelggX[2];local Key4 = (snelggX[2]+snelggX[4]*2)-snelggX[3];local Key5 = (snelggX[1]+snelggX[3]*4)-snelggX[3];local Key6 = (snelggX[2]+snelggX[4]*1)-snelggX[5];while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;local Moma1 = (snelggX[1]+snelggX[2]+snelggX[4]*snelggX[3])-snelggX[4];local L_=I_("'..math.random(9,999)..'");local L_ = I_("'.._I1..'");local Moma2 = (snelggX[5]+snelggX[4]*4)-snelggX[1];local Moma3 = (snelggX[3]+snelggX[1]*2)-snelggX[2];local Moma4 = (snelggX[2]+snelggX[4]*2)-snelggX[3];local Moma5 = (snelggX[1]+snelggX[3]*4)-snelggX[3];local Moma6 = (snelggX[2]+snelggX[4]*1)-snelggX[5];local snsha = {(seen+szzn*sqqn)-sffn,sqqn,sffn*1,seen+swwn,sffn};local KY1 = (snsha[5]+snsha[3]+snsha[4]*snsha[2])-snsha[4];local KY2 = (snsha[1]+snsha[4]*2)-snsha[2];while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;local SN_XS = function(c)  res = "" for m in ipairs(c) do;while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;for SNgb2 = 1,0 do;SXN = "SXN";end;for SNgb2 = 1,0 do;SXN = "SXN";end;res = res..string.char((c[m] + Moma2 + (Moma1 + m) + Moma2 * (Moma3 + m)) % 256)  end  if true then return res end if true then return end if true then return end end;local SN_XS , SN_X = function(c) for SNgb2 = 1,0 do;SXN = "SXN";end c = c.SN res = "" for m in ipairs(c) do;while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;for SNgb2 = 1,0 do;SXN = "SXN";end;res = res..string.char((c[m] + Key1 + Key2 + Key3 % Key4 % Key5 + Key6 * Key1 ) % L_)  end  if true then return res end if true then return end if true then return end end , function(str)for SNgb2 = 1,0 do;SXN = "SXN";end str=str.SN local K, F = KY1 - snzzzz, snzzzz - KY2 while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end for SNgb2 = 1,0 do;SXN = "SXN";end return (str:gsub("%x%x", function(c)  local L = K % _iii local H = (K - L) / _iii local M = H % _ii  while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end c = tonumber(c, 16) while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end local m = (c + (H - M) / _ii) * (2*M + 1) % 256 K = L * F + H + c + m  if true then return string.char(m)end if true then return end if true then return end end))end\n '
gg.setVisible(false)
function tempstr(sz,isF)
  sz=sz or math.random(8,58)
  local se=" goto s "
  local sa = " i = ~i i = _ENV[35] i = _ENV[i] i = ~i  i = ~i i = _ENV[35] i = _ENV[i] i = ~i i = ~i i = _ENV[35] i = _ENV[i] i = ~i i = ~i i = _ENV[35] i = _ENV[i] i = ~i  i = ~i i = _ENV[35] i = _ENV[i] i = ~i i = ~i i = _ENV[35] i = _ENV[i] i = ~i i = ~i i = _ENV[35] i = _ENV[i] i = ~i  i = ~i i = _ENV[35] i = _ENV[i] i = ~i i = ~i i = _ENV[35] i = _ENV[i] i = ~i i = ~i i = _ENV[35] i = _ENV[i] i = ~i  i = ~i i = _ENV[35] i = _ENV[i] i = ~i i = ~i i = _ENV[35] i = _ENV[i] i = ~i i = ~i i = _ENV[35] i = _ENV[i] i = ~i  i = ~i i = _ENV[35] i = _ENV[i] i = ~i i = ~i i = _ENV[35] i = ~i "
  local strs=""
  for s=1,sz do
    strs=strs..se
    saa=""..sa
  end
  strs=" if(nil)then for i = 1,0 do M = 'sxxn[SN]'if ({}).M~=nil then ({}).M=({}).M() end"..saa.."for i=({}).i ,({}).i ,({}).i do goto s goto s::s::end for i= {}, ({}).i , {} do goto s goto s::s::end for i= {}, {} , iiii do goto s goto s::s::end while(nil)do;for i=i,i do;local i={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i do;local ii={}if(ii.i)then;ii.i=ii.i()end;for iii=i,ii.i,i do;local iii={}if(iii.i)then;iii.i=iii.i(i)end;for iiii=i,ii,iii.i do;local iiii={}if(iiii.i)then;iiii.i=iiii.i(i)end;local iiii={}if(iiii.i)then;iiii.i=(iiii|iii|ii|i)(i)end;end;local iii={}if(iii.i)then;iii.i=(true|iii|ii|i)(i)end;end;local ii={}if(ii.i)then;ii.i=(true|false|ii|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i)end;return(true|false|nil)end;return;end end if(nil)then "..strs.." ::s:: end for x = 1,0 do if x.x ~= nil then x.x = x.x() end end _={} _.__() _.___() _.____() _._____() end "
return strs
end
SnKey00 = 18
SnKey0 = 17
SnKey000 = 6
local DATA = DATA:gsub([["\"]],[["]]):gsub([[\""]],[["]])
local DATA = DATA:gsub([["']],[[']]):gsub([['"]],[[']])
local DATA = DATA:gsub([['\']],[[']]):gsub([[\'']],[[']])
local DATA = DATA:gsub([['"]],[[']]):gsub([["']],[[']])
gg.setVisible(false)
TOTEXT = TOTEXT:gsub('"(.-)"', function(c)
c = load('return "'..c..'"')()
T = SNSTR(c)
table.insert(SNTable1, T)
SnKey000 = SnKey000 + 1
return "SaN(_l["..SnKey000.."])"
end)
TOTEXT = TOTEXT:gsub("'(.-)'", function(c)
c = load("return '"..c.."'")()
T = SNSTR(c)
table.insert(SNTable1, T)
SnKey000 = SnKey000 + 1
return "SaN(_l["..SnKey000.."])"
end)
DATA = DATA:gsub('"(.-)"', function(c)
c = load('return "'..c..'"')()
T = EncSTR(c)
table.insert(SNTable2, T)
SnKey00 = SnKey00 + 1
return "SN_XS(g._["..SnKey00.."])"
end)
DATA = DATA:gsub("'(.-)'", function(c)
c = load("return '"..c.."'")()
T = EncSTR(c)
table.insert(SNTable2, T)
SnKey00 = SnKey00 + 1
return "SN_XS(g._["..SnKey00.."])"
end)
DATA = DATA:gsub("SNgb20.gg.clearResults","SNgb2g.clearResults")
DATA = DATA:gsub("gg.clearResults","for SNgb2 = 1,0 do;SNX = 'SNX';end\ngg.clearResults\n")
DATA = DATA:gsub("SNgb2g.clearResults","for SNgb2 = 1,0 do;SNX = 'SNX';end\nSNgb20.gg.clearResults\n")
for k, v in pairs(gg) do
sn_A = "gg." .. k
DATA = DATA:gsub(sn_A, function()
T = "{SN = '"..Sha(k).."'}"
table.insert(SNTable3, T)
SnKey0 = SnKey0 + 1
return "gg[SN_X(g._MXN["..SnKey0.."])]"
end)
end
DATA = DATA:gsub("[[(.-)]]", function(c)
c = load("return [["..c.."]]")()
T = EncSTR(c)
table.insert(SNTable2, T)
SnKey00 = SnKey00 + 1
return "SN_XS(g._["..SnKey00.."])"
end)
DATA = DATA:gsub("[=[(.-)]=]", function(c)
c = load("return '"..c.."'")()
T = EncSTR(c)
table.insert(SNTable2, T)
SnKey00 = SnKey00 + 1
return "SN_XS(g._["..SnKey00.."])"
end)
for k, v in pairs(io) do
sn_A = "io." .. k
DATA = DATA:gsub(sn_A, function()
T = "{SN = '"..Sha(k).."'}"
table.insert(SNTable3, T)
SnKey0 = SnKey0 + 1
return "io[SN_X(g._MXN["..SnKey0.."])]"
end)
end
for k, v in pairs(os) do
sn_A = "os." .. k
DATA = DATA:gsub(sn_A, function()
T = "{SN = '"..Sha(k).."'}"
table.insert(SNTable3, T)
SnKey0 = SnKey0 + 1
return "os[SN_X(g._MXN["..SnKey0.."])]"
end)
end
for k, v in pairs(math) do
sn_A = "math." .. k
DATA = DATA:gsub(sn_A, function()
T = "{SN = '"..Sha(k).."'}"
table.insert(SNTable3, T)
SnKey0 = SnKey0 + 1
return "math[SN_X(g._MXN["..SnKey0.."])]"
end)
end
for k, v in pairs(debug) do
sn_A = "debug." .. k
DATA = DATA:gsub(sn_A, function()
T = "{SN = '"..Sha(k).."'}"
table.insert(SNTable3, T)
SnKey0 = SnKey0 + 1
return "debug[SN_X(g._MXN["..SnKey0.."])]"
end)
end
gg.toast("Script is encrypting📥\nPlease Wait ⏳")
for k, v in pairs(string) do
sn_A = "string." .. k
DATA = DATA:gsub(sn_A, function()
T = "{SN = '"..Sha(k).."'}"
table.insert(SNTable3, T)
SnKey0 = SnKey0 + 1
return "string[SN_X(g._MXN["..SnKey0.."])]"
end)
end
for k, v in pairs(table) do
sn_A = "table." .. k
DATA = DATA:gsub(sn_A, function()
T = "{SN = '"..Sha(k).."'}"
table.insert(SNTable3, T)
SnKey0 = SnKey0 + 1
return "table[SN_X(g._MXN["..SnKey0.."])]"
end)
end
DATA = TOTEXT .. DATA
io.output(g.out,"w")
io.write([[
while(nil)do;local d={}if(d.d)then;d.d=(d.d(d))end;end
local _ = ' \n\n            ᚍ───────✧❅✦❅✧───────ᚍ\n   			           ᴇʟɢɢ ʙʏ sɴ ᴠ5\n               sᴄʀɪᴘᴛ ᴇɴᴄᴏᴅᴇʀ ☞︎︎︎ @mlulinX\n                 sʜᴀ•sᴛʀ ɴᴇᴡ ᴇɴᴄʀʏᴘᴛɪᴏɴ\n            ✧═══════•❁❀❁•═══════✧\n\n\n(🇵 🇴 🇼 🇪 🇷 🇪 🇩  🇧 🇾  🇸 🇳 )'
local function __()
for SNgb2 = 1,0 do;S_N = 'S_N';end
local _ = collectgarbage("collect")
]]..tempstr(444)..[[
local function __()
I_=function(c)return c end
gg.setVisible(false)
gg.toast("Eʟɢɢ ʙʏ sɴ ᴠ5.0 🛡️")
for _iii = 1,0 do if _iii ~= nil then local _iii = {} _iii._iii = _iii._iii() end end
local g, g, g = {}, {}, {}while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;for _ii = 1,0 do if _ii ~= nil then local _ii = {} _ii._ii = _ii._ii() end end;local i = I_("]]..math.random(100,88000)..[[");for SNgb2 = 1,0 do;SXN = 'SXN';end; g._ = g._ g._ = I_({nil,nil,false,false,true,nil,nil,nil,false,false,true,nil,nil,nil,false,false,true,nil,]]..table.concat(SNTable2, ",")..[[,true,false,false,nil,nil,nil,true,nil,true,nil})g._ = g._;local sjjn = ]]..sjjn..[[;local siin = ]]..siin..[[;local _ii=]]..i77..[[;for SNgb2 = 1,0 do;SXN = 'SXN';end
local snxxxx = ]]..snxxxx..[[;local _l = I_({nil,nil,false,false,true,nil,]]..table.concat(SNTable1, ",")..[[,]]..Mk1..[[,]]..Mk2..[[,nil,nil,false,false,true,nil,nil,false,nil,true,false,true,nil}) function I_(c)res=""KeyYY={}for i in ipairs(c) do;res = (c[i] + i  - (_l[37] + i)  * _l[38]) % 256
table.insert(KeyYY, res)end;return KeyYY;end;local snmainkey= I_({]]..table.concat(snmainkeyEE,",")..[[});I_=function(c)return c end ;while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;local x = {} x[-{~nil, -nil % nil}] = x local t = ({~x, -x % x})(({~x, -x % x})[-{~nil , -nil % nil}]) t[-{~nil, -nil % nil}] = ({~nil , -nil % nil}) end;g._MXN = g._MXN g._MXN = I_({nil,nil,false,false,true,nil,nil,nil,false,false,true,nil,nil,nil,false,false,true,]]..table.concat(SNTable3, ",")..[[,false,nil,true,nil,true,nil,false,true,false,nil,false,true,nil,false,true,nil})g._MXN = g._MXN;SNlog4 = "address";SNlog5 = "flags";SNlog6 = "values";SNlog7 = "Sɴ V5+";local svvn = I_("]]..svvn..[[");local suun = I_("]]..suun..[[");local i = "]]..math.random(300,9300)..[[";SNlog8 = "𝕞𝕝𝕦𝕝𝕚𝕟𝕏";local _iii= ]]..i19922..[[;for SNgb2 = 1,0 do;SXN = 'SXN';end;for SNgb2 = 1,0 do;SXN = 'SXN';end
SNlog9 = "𝐒𝐍";local gg = gg;local os = os;local io = io;local debug = debug;local math = math;local table = table;for i = 1,5 do;loadfile = loadfile;load = load;loadfile(gg.getFile()) load(string.dump(load("os.exit()"),false,false)) io.open(gg.getFile() .. "c" .. tostring(string.dump(loadfile(gg.getFile()),false,false)),"w") end;SNantilog = {};for i = 1, 45000 do ;table.insert(SNantilog, {address = 127 + i, flags = 12, values = 127});end;clock = os.clock();time = os.time();for i = 1, 6 do gg.addListItems(SNantilog) end;if os.clock() - clock > 2 then;gg.removeListItems(SNantilog);os.exit();end;if os.time() - time > 2 then;gg.removeListItems(SNantilog);os.exit();end ;gg.removeListItems(SNantilog);;SNantilog = {};for i = 1, 66666 do ;table.insert(SNantilog, {address = 127 + i, flags = 12, values = 127});end;clock = os.clock();time = os.time();for i = 1, 6 do gg.addListItems(SNantilog) end;if os.clock() - clock > 2 then;gg.removeListItems(SNantilog);os.exit();end;if os.time() - time > 2 then;gg.removeListItems(SNantilog);os.exit();end ;gg.removeListItems(SNantilog);local i = "]]..math.random(30,5000)..[["local srrn = I_("]]..srrn..[[");local i = I_("]]..math.random(150,3500)..[[")

local snfunc = {(siin+sjjn*suun)-svvn,siin,svvn*4,suun+svvn,srrn}
for SNgb2 = 1,0 do;SXN = 'SXN';end
local SNlua1 = (snfunc[3]+snfunc[1]+snfunc[2]*snfunc[3])-snfunc[5]
SaN = SaN
SaN = function(c) 
c=c.SN
res = '' 
for SNgb2 = 1,0 do;SXN = 'SXN';end
for m in ipairs(c) do
res = res..string.char((c[m] + SNlua1 + snmainkey[12] + snmainkey[3] * (snmainkey[5] + m) + (snmainkey[7] + m) + (snmainkey[6] + m) * (snmainkey[14] + m) + (snmainkey[4] + m)+ snmainkey[9] + (snmainkey[11] + m) * (snmainkey[10] + m) + snmainkey[8] + snmainkey[13] * (snmainkey[1] + m) + snmainkey[2] * (snmainkey[15] + m)) % 256)  
for SNgb2 = 1,0 do;SXN = 'SXN';end
end 
for SNgb2 = 1,0 do;SXN = 'SXN';end
return res
end

]]..DATA..[[ 

end
local function _()
local __ = __()
for SNgb2 = 1,0 do;SXN = 'SXN';end
end
local _ = _()
end

local function _()
local __ = __()
for SNgb2 = 1,0 do;SXN = 'SXN';end
end
local _ = _()
]])
io.close()

ELGGSN = "\\000"
DATA = DATA:gsub("SETTABUP",[[
for u = 1,3 do
local i = {"]]..ELGGSN:rep(2500)..[["}
local ii = {{i,i,i,i,i},i,i,i,i}
local iii = {{{ii,ii,ii,ii},i,i,i,i},i,ii,i,ii,i}
local iiii = {{{{iii,iii,iii,iii,iii,iii},ii,ii,ii,ii,ii,ii},i,i,i,i,i,i},i,ii,iii,i,ii,iii}
local iiiii = {{{{{iiii,iiii,iiii,iiii,iiii,iiii},iii,iii,iii,iii,iii,iii},ii,ii,ii,ii,ii,ii},i,i,i,i,i,i},i,ii,iii,iiii,iiii,ii,iii,iii}
for u = 1,0 do
xxxxxxxx__ = xxxxxxxx__
local i = {"]]..ELGGSN:rep(2500)..[[",xxxxxxxx__,"\000\000\000\000\000\000\000\000",nil} 
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
]])


SNgb1="MOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nOP[48] 0x207b20\nOP[48] 0x53\nOP[48] 0x4e203d20\nOP[48] 0x207b20\nMOVE v0 v0\nOP[48] 0xbf879ff020 \nOP[48] 0xe29aa1\nOP[48] 0x2020\nMOVE v0 v0\nOP[48] 0xf09f87b8\nMOVE v0 v0\nOP[48] 0xf09f87b3\nMOVE v0 v0\nOP[48] 0x2020\nOP[48] 0xe29aa1\nMOVE v0 v0\nOP[48] 0x20207d2020\nBNOT v133 v64\nMOVE v244 v0\nMOVE v108 v497\nOP[63] 0xc700bf\nMOVE v0 v0\nMOVE v0 v0\nSHL v30 CONST[255] v126\nBNOT v133 v64\nMOVE v244 v0\nMOVE v108 v497\nOP[63] 0xc700bf\nMOVE v0 v0\nMOVE v0 v0\nSHL v30 CONST[255] v126\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nBNOT v133 v64\nMOVE v244 v0\nMOVE v108 v497\nOP[63] 0xc700bf\nMOVE v0 v0\nMOVE v0 v0\nSHL v30 CONST[255] v126\nOP[48] 0x207b20\nOP[48] 0x53\nOP[48] 0x4e203d20\nOP[48] 0x207b20\nMOVE v0 v0\nOP[48] 0xbf879ff020 \nOP[48] 0xe29aa1\nOP[48] 0x2020\nMOVE v0 v0\nOP[48] 0xf09f87b8\nMOVE v0 v0\nOP[48] 0xf09f87b3\nMOVE v0 v0\nOP[48] 0x2020\nOP[48] 0xe29aa1\nMOVE v0 v0\nOP[48] 0x20207d2020\nBNOT v133 v64\nMOVE v244 v0\nMOVE v108 v497\nOP[63] 0xc700bf\nMOVE v0 v0\nMOVE v0 v0\nSHL v30 CONST[255] v126\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nOP[48] 0x207b20\nOP[48] 0x53\nOP[48] 0x4e203d20\nOP[48] 0x207b20\nMOVE v0 v0\nOP[48] 0xbf879ff020 \nOP[48] 0xe29aa1\nOP[48] 0x2020\nMOVE v0 v0\nOP[48] 0xf09f87b8\nMOVE v0 v0\nOP[48] 0xf09f87b3\nMOVE v0 v0\nOP[48] 0x2020\nOP[48] 0xe29aa1\nMOVE v0 v0\nOP[48] 0x20207d2020\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nOP[48] 0x207b20\nOP[48] 0x53\nOP[48] 0x4e203d20\nOP[48] 0x207b20\nMOVE v0 v0\nOP[48] 0xbf879ff020 \nOP[48] 0xe29aa1\nOP[48] 0x2020\nMOVE v0 v0\nOP[48] 0xf09f87b8\nMOVE v0 v0\nOP[48] 0xf09f87b3\nMOVE v0 v0\nOP[48] 0x2020\nOP[48] 0xe29aa1\nMOVE v0 v0\nOP[48] 0x20207d2020\nBNOT v133 v64\nMOVE v244 v0\nMOVE v108 v497\nOP[63] 0xc700bf\nMOVE v0 v0\nMOVE v0 v0\nSHL v30 CONST[255] v126\nBNOT v133 v64\nMOVE v244 v0\nMOVE v108 v497\nOP[63] 0xc700bf\nMOVE v0 v0\nMOVE v0 v0\nSHL v30 CONST[255] v126\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nBNOT v133 v64\nMOVE v244 v0\nMOVE v108 v497\nOP[63] 0xc700bf\nMOVE v0 v0\nMOVE v0 v0\nSHL v30 CONST[255] v126\nOP[48] 0x207b20\nOP[48] 0x53\nOP[48] 0x4e203d20\nOP[48] 0x207b20\nMOVE v0 v0\nOP[48] 0xbf879ff020 \nOP[48] 0xe29aa1\nOP[48] 0x2020\nMOVE v0 v0\nOP[48] 0xf09f87b8\nMOVE v0 v0\nOP[48] 0xf09f87b3\nMOVE v0 v0\nOP[48] 0x2020\nOP[48] 0xe29aa1\nMOVE v0 v0\nOP[48] 0x20207d2020\nBNOT v133 v64\nMOVE v244 v0\nMOVE v108 v497\nOP[63] 0xc700bf\nMOVE v0 v0\nMOVE v0 v0\nSHL v30 CONST[255] v126\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nOP[48] 0x207b20\nOP[48] 0x53\nOP[48] 0x4e203d20\nOP[48] 0x207b20\nMOVE v0 v0\nOP[48] 0xbf879ff020 \nOP[48] 0xe29aa1\nOP[48] 0x2020\nMOVE v0 v0\nOP[48] 0xf09f87b8\nMOVE v0 v0\nOP[48] 0xf09f87b3\nMOVE v0 v0\nOP[48] 0x2020\nOP[48] 0xe29aa1\nMOVE v0 v0\nOP[48] 0x20207d2020\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2"
SNgb1=SNgb1.."\n"
SNgb1=SNgb1:rep(300)

SNgb2="OP[48] 0x22\nOP[49] 0x27\nMOVE v181 v271\nOP[48] 0xa19ae2\nMOVE v0 v0\nOP[48] 0xb3879ff0\nMOVE v82 v281\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nSHL v30 CONST[255] v126\nBNOT v133 v64\nMOVE v244 v0\nMOVE v108 v497\nOP[63] 0xc700bf\nMOVE v0 v0\nMOVE v0 v0\nSHL v30 CONST[255] v126\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nOP[48] 0xa19ae2\nMOVE v0 v0\nOP[48] 0xb3879ff0\nMOVE v82 v281\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nBNOT v133 v64\nMOVE v244 v0\nMOVE v108 v497\nOP[63] 0xc700bf\nMOVE v0 v0\nMOVE v0 v0\nSHL v30 CONST[255] v126\nSHL v30 CONST[255] v126\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nOP[48] 0xa19ae2\nMOVE v0 v0\nOP[48] 0xb3879ff0\nMOVE v82 v281\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nOP[48] 0xa6879ff0\nOP[48] 0xa19ae2\nMOVE v0 v0\nMOVE v161 v271\nOP[48] 0xa19ae2\nMOVE v0 v0\nOP[48] 0xa19ae2\nMOVE v0 v0\nMOVE v28 v39\nOP[48] 0xa19ae2\nMOVE v0 v0\nOP[48] 0xb3879ff0\nOP[48] 0xa19ae2\nMOVE v0 v0\nOP[48] 0xa19ae2\nMOVE v0 v0\nMOVE v0 v0\nOP[48] 0xb8879ff0\nMOVE v0 v0\nOP[48] 0xb3879ff0\nMOVE v0 v0\nOP[48] 0xa19ae2\nMOVE v0 v0\nOP[48] 0xb3879ff0\nMOVE v82 v281\nMOVE v0 v0\nOP[48] 0xb8879ff0\nMOVE v0 v0\nOP[48] 0xb3879ff0\nMOVE v0 v0\nOP[48] 0xa19ae2\nMOVE v0 v0\nOP[48] 0xa6879ff0\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nOP[48] 0xa6879ff0\nOP[48] 0xa19ae2\nMOVE v0 v0\nMOVE v161 v271\nOP[48] 0xa19ae2\nMOVE v0 v0\nOP[48] 0xa19ae2\nMOVE v0 v0\nMOVE v28 v39\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nOP[48] 0xa19ae2\nMOVE v0 v0\nOP[48] 0xb3879ff0\nMOVE v82 v281\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nSHL v30 CONST[255] v126\nBNOT v133 v64\nMOVE v244 v0\nMOVE v108 v497\nOP[63] 0xc700bf\nMOVE v0 v0\nMOVE v0 v0\nSHL v30 CONST[255] v126\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nOP[48] 0xa19ae2\nMOVE v0 v0\nOP[48] 0xb3879ff0\nMOVE v82 v281\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nMOVE v0 v0\nLOADBOOL v0 0\nTEST v0 0\nNEWTABLE v0 2 0\nLOADNIL v1..v1\nLOADNIL v2..v2\nLEN v2 v0\nEQ 1 v1 v2\nUNM v1 v0\nLEN v2 v0\nGETTABLE v2 v0 v2\nBNOT v133 v64\nMOVE v244 v0\nMOVE v108 v497\nOP[48] 0xa6879ff0\nOP[48] 0xa19ae2\nMOVE v0 v0\nMOVE v161 v271\nOP[48] 0xa19ae2\nMOVE v0 v0\nOP[48] 0xa19ae2\nMOVE v0 v0\nMOVE v28 v39\nOP[48] 0xa19ae2\nMOVE v0 v0\nOP[48] 0xa6879ff0\nMOVE v0 v0"
SNgb2=SNgb2.."\n"

io.input(g.out, "r")
local MX = io.read("*a")
MX = string.dump(load(MX), true, true)
MX = gg.internal2(load(MX), g.out)
io.input(g.out, "r")
MX = io.read("*a")
MX = MX:gsub('linedefined [^\n]*', 'linedefined 739988738')
MX = MX:gsub('lastlinedefined [^\n]*', 'lastlinedefined 573852674')
MX = MX:gsub('maxstacksize [^\n]*', 'maxstacksize 100')
MX = MX:gsub('SETTABUP u[^\n]* "S_N" "S_N"', SNgb1)
MX = MX:gsub('SETTABUP u[^\n]* "SXN" "SXN"', SNgb2)
os.remove(g.out..".tmp")
file = io.open(g.out,"w")
SNNX = string.dump(load(MX),true)
SNNX = SNNX:gsub(string.char(table.unpack({0, 0, 0, 0, 0, 2, 8, 99})), 
string.char(table.unpack({219, 0, 0, 0, 237, 250, 1, 250})))
file = io.open(g.out, "w")
file:write(SNNX .."\n	      	   ✫𝑃𝑟𝑜𝑡𝑒𝑐𝑡𝑒𝑑 𝐵𝑦 𝑆𝑁✫")
file:close()


--------:v Lasm Error By SN :v---------
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
    gg.internal2(chunk, g.out .. ".tmp") --  Lasm
    source = io.open(g.out .. ".tmp"):read("*a")
    getSources(source)
    file = io.open(g.out):read("*a")
    file = antiLasm(file)
    io.open(g.out..".lua", "w"):write(file)
    os.remove(g.out)
    os.remove(g.out .. ".tmp")
    gg.toast("Done Encrypt ✔")
gg.toast("💻 sᴇʀᴠᴇʀ: Sᴄʀɪᴘᴛ Sᴜᴄᴄᴇssғᴜʟʟʏ Eɴᴄʀʏᴘᴛᴇᴅ",true)
gg.alert("📂 sᴄʀɪᴘᴛ sᴜᴄᴄᴇssғᴜʟʟʏ ᴇɴᴄʀʏᴘᴛᴇᴅ\n🗂 sᴀᴠᴇᴅ ɪɴ: "..g.sel[1]..".Sñ(enc).lua","")
gg["setVisible"](true)
return os.exit()
end