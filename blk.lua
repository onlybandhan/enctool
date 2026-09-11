if gg.isPackageInstalled('com.gxlkj.tl') then os.exit() end

if gg.isPackageInstalled('sstool.only.com.sstool') then os.exit() end

while(nil)do;local i={}if(i.i)then;i.i=(i.i(i))end;end

while(nil)do;for i=i,i do;local i={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i do;local ii={}if(ii.i)then;ii.i=ii.i()end;for iii=i,ii.i,i do;local iii={}if(iii.i)then;iii.i=iii.i(i)end;for iiii=i,ii,iii.i do;local iiii={}if(iiii.i)then;iiii.i=iiii.i(i)end;local iiii={}if(iiii.i)then;iiii.i=(iiii|iii|ii|i)(i)end;end;local iii={}if(iii.i)then;iii.i=(true|iii|ii|i)(i)end;end;local ii={}if(ii.i)then;ii.i=(true|false|ii|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i)end;return(true|false|nil)end;return;end

local function loader(str) local i = "";repeat i = i.. string.char(math.random(97,122)) until #i > 10;package.path = "?";local ii = (gg.EXT_STORAGE).."/"..i;io.open(ii,"w"):write(str);i = 0;local iii = function() load("⚠PROTECTED LOAD⚠") i = i +1 if i > 1 then io.open(ii,"w"):write(str) os.remove(ii) debug.sethook(iii,"") end end;debug.sethook(iii,"cr");local iiii = pcall(require,ii) return end
for x =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local x = {} x[''] = x local t = (x)(x, x) t[1] = 1 end
local __  =  debug.getinfo(gg.searchNumber).source ~= "=[Java]" or  not not debug.getupvalue(gg.searchNumber,1,2) 
local _ = __  == false or (function() gg.alert("🔥DETECTED HOOK🔥","","","")
for x = 0, 1, 0 do local _m = {} if _m.data ~= nil then _m.bidun = _m.data() _m.data = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end _m = nil end
os.exit()
end)()

local memFrom, memTo, lib, num, lim, results, src, ok = 0, -1, nil, 0, 32, {}, nil, false
function name(n)
if lib ~= n then lib = n
local ranges = gg.getRangesList(lib)
if #ranges == 0 then
else memFrom = ranges[1].start memTo = ranges[#ranges]["end"]end end
end
function hex2tbl(hex)
local ret = {} hex:gsub("%S%S",
function (ch) ret[#ret + 1] = ch return ""end)return ret
end
function original(orig)
local tbl = hex2tbl(orig)
local len = #tbl
if len == 0 then return end
local used = len
if len > lim then used = lim end
local s = '' for i = 1, used do
if i ~= 1 then s = s..";" end
local v = tbl[i]
if v == "??" or v == "**" then v = "0~~0" end s = s..v.."r"end s = s.."::"..used
gg.searchNumber(s, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, memFrom, memTo)
if len > used then for i = used + 1, len do
local v = tbl[i]
if v == "??" or v == "**" then v = 256 else v = ("0x"..v) + 0
if v > 127 then v = v - 256 end end tbl[i] = v end end
local found = gg.getResultCount(); results = {}
local count = 0
local checked = 0
while true do
if checked >= found then break end
local all = gg.getResults(8)
local total = #all
local start = checked
if checked + used > total then break end for i, v in ipairs(all) do v.address = v.address + myoffset end
gg.loadResults(all)while start < total do  
local gORIGINd = true
local offset = all[1 + start].address - 1
if used < len then   
local get = {} for i = lim + 1, len do get[i - lim] = {address = offset + i, flags = gg.TYPE_BYTE, value = 0}end
get = gg.getValues(get) for i = lim + 1, len do
local ch = tbl[i]
if ch ~= 256 and get[i - lim].value ~= ch then gORIGINd = false break end end end
if gORIGINd then count = count + 1 results[count] = offset checked = checked + used else
local del = {} for i = 1, used do del[i] = all[i + start]end
gg.removeResults(del)end start = start + used end end
end
function replaced(repl)
num = num + 1
local tbl = hex2tbl(repl)
if src ~= nil then
local source = hex2tbl(src) for i, v in ipairs(tbl) do
if v ~= "??" and v ~= "**" and v == source[i] then tbl[i] = "**" end end src = nil end
local cnt = #tbl
local set = {}
local s = 0 for _, addr in ipairs(results) do for i, v in ipairs(tbl) do
if v ~= "??" and v ~= "**" then s = s + 1 set[s] = {["address"] = addr + i,["value"] = v.."r",["flags"] = gg.TYPE_BYTE,}end end end
if s ~= 0 then
gg.setValues(set) end
ok = true
end

while(nil)do;for i=i,i do;local i={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i do;local ii={}if(ii.i)then;ii.i=ii.i()end;for iii=i,ii.i,i do;local iii={}if(iii.i)then;iii.i=iii.i(i)end;for iiii=i,ii,iii.i do;local iiii={}if(iiii.i)then;iiii.i=iiii.i(i)end;local iiii={}if(iiii.i)then;iiii.i=(iiii|iii|ii|i)(i)end;end;local iii={}if(iii.i)then;iii.i=(true|iii|ii|i)(i)end;end;local ii={}if(ii.i)then;ii.i=(true|false|ii|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i)end;return(true|false|nil)end;return;end

if gg.isPackageInstalled('com.gxlkj.tl') then os.exit() end

if gg.isPackageInstalled('sstool.only.com.sstool') then os.exit() end

function SandiMarliano()
XteaM = gg.multiChoice({
'\n       UNBANED DEVICE\n',
'\n                   EXIT          ',
}, nil, os.date('༫ SCRIPT FF UNBANED 1.43.0  BY : XTEAM  \n༫ Ɗąţê : %h %d %Y | ༫ Ƭīʍê : %H : %M : %S |'))
if XteaM == nil then else
if XteaM[1] == true then SANDIMARLIANO() end
if XteaM[2] == true then EXIT() end 
end
XTEAM=-1
end

while(nil)do;for i=i,i do;local i={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i do;local ii={}if(ii.i)then;ii.i=ii.i()end;for iii=i,ii.i,i do;local iii={}if(iii.i)then;iii.i=iii.i(i)end;for iiii=i,ii,iii.i do;local iiii={}if(iiii.i)then;iiii.i=iiii.i(i)end;local iiii={}if(iiii.i)then;iiii.i=(iiii|iii|ii|i)(i)end;end;local iii={}if(iii.i)then;iii.i=(true|iii|ii|i)(i)end;end;local ii={}if(ii.i)then;ii.i=(true|false|ii|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i)end;return(true|false|nil)end;return;end

function EXIT()
print(CREDITS1)
print(CREDITS2)
print(CREDITS3)
LEAVE()
end

while(nil)do;for i=i,i do;local i={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i do;local ii={}if(ii.i)then;ii.i=ii.i()end;for iii=i,ii.i,i do;local iii={}if(iii.i)then;iii.i=iii.i(i)end;for iiii=i,ii,iii.i do;local iiii={}if(iiii.i)then;iiii.i=iiii.i(i)end;local iiii={}if(iiii.i)then;iiii.i=(iiii|iii|ii|i)(i)end;end;local iii={}if(iii.i)then;iii.i=(true|iii|ii|i)(i)end;end;local ii={}if(ii.i)then;ii.i=(true|false|ii|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i)end;return(true|false|nil)end;return;end

function SANDIMARLIANO()
XTEAM1(ONEPIECE1)
ONEPIECES(false)
XTEAM2(ONEPIECE2)
ONEPIECES(false)
myoffset = UNBAN1
ONEPIECES(false)
original(ONEPIECE3)
ONEPIECES(false)
XTEAM5(ONEPIECE4)
ONEPIECES(false)
XTEAM1(ONEPIECE1)
ONEPIECES(false)
XTEAM2(ONEPIECE2)
ONEPIECES(false)
myoffset = UNBAN2
ONEPIECES(false)
original(ONEPIECE3)
ONEPIECES(false)
XTEAM5(ONEPIECE4)
ONEPIECES(false)
XTEAM1(ONEPIECE1)
ONEPIECES(false)
XTEAM2(ONEPIECE2)
ONEPIECES(false)
myoffset = UNBAN3
ONEPIECES(false)
original(ONEPIECE3)
ONEPIECES(false)
XTEAM5(ONEPIECE4)
ONEPIECES(false)
XTEAM1(ONEPIECE1)
ONEPIECES(false)
XTEAM2(ONEPIECE2)
ONEPIECES(false)
myoffset = UNBAN4
ONEPIECES(false)
original(ONEPIECE3)
ONEPIECES(false)
XTEAM5(ONEPIECE4)
ONEPIECES(false)
XTEAM1(ONEPIECE1)
ONEPIECES(false)
XTEAM2(ONEPIECE2)
ONEPIECES(false)
myoffset = UNBAN5
ONEPIECES(false)
original(ONEPIECE3)
ONEPIECES(false)
XTEAM5(ONEPIECE4)
ONEPIECES(false)
ONEPIECE()
ONEPIECES(false)
JOIN(CREDITS4)
EXIT()
end

while(nil)do;for i=i,i do;local i={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i do;local ii={}if(ii.i)then;ii.i=ii.i()end;for iii=i,ii.i,i do;local iii={}if(iii.i)then;iii.i=iii.i(i)end;for iiii=i,ii,iii.i do;local iiii={}if(iiii.i)then;iiii.i=iiii.i(i)end;local iiii={}if(iiii.i)then;iiii.i=(iiii|iii|ii|i)(i)end;end;local iii={}if(iii.i)then;iii.i=(true|iii|ii|i)(i)end;end;local ii={}if(ii.i)then;ii.i=(true|false|ii|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i)end;return(true|false|nil)end;return;end

XTEAM1 = gg.setRanges
XTEAM2 = name
XTEAM5 = replaced

while(nil)do;for i=i,i do;local i={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i do;local ii={}if(ii.i)then;ii.i=ii.i()end;for iii=i,ii.i,i do;local iii={}if(iii.i)then;iii.i=iii.i(i)end;for iiii=i,ii,iii.i do;local iiii={}if(iiii.i)then;iiii.i=iiii.i(i)end;local iiii={}if(iiii.i)then;iiii.i=(iiii|iii|ii|i)(i)end;end;local iii={}if(iii.i)then;iii.i=(true|iii|ii|i)(i)end;end;local ii={}if(ii.i)then;ii.i=(true|false|ii|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i)end;return(true|false|nil)end;return;end

JOIN = gg.alert
LEAVE = os.exit
ONEPIECES = gg.setVisible
ONEPIECE = gg.clearResults
ONEPIECE1 = gg.REGION_CODE_APP | gg.REGION_C_DATA
ONEPIECE2 = "libil2cpp.so"
ONEPIECE3 = "7F 45 4C 46 01 01 01 00"
ONEPIECE4 = "00 00 A0 E3 1E FF 2F E1"

while(nil)do;for i=i,i do;local i={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i do;local ii={}if(ii.i)then;ii.i=ii.i()end;for iii=i,ii.i,i do;local iii={}if(iii.i)then;iii.i=iii.i(i)end;for iiii=i,ii,iii.i do;local iiii={}if(iiii.i)then;iiii.i=iiii.i(i)end;local iiii={}if(iiii.i)then;iiii.i=(iiii|iii|ii|i)(i)end;end;local iii={}if(iii.i)then;iii.i=(true|iii|ii|i)(i)end;end;local ii={}if(ii.i)then;ii.i=(true|false|ii|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i)end;return(true|false|nil)end;return;end

UNBAN1 = 0x17A7B84
UNBAN2 = 0x17A5CD4
UNBAN3 = 0x17A7C94
UNBAN4 = 0x17A5EF4
UNBAN5 = 0x17A5DE4

while(nil)do;for i=i,i do;local i={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i do;local ii={}if(ii.i)then;ii.i=ii.i()end;for iii=i,ii.i,i do;local iii={}if(iii.i)then;iii.i=iii.i(i)end;for iiii=i,ii,iii.i do;local iiii={}if(iiii.i)then;iiii.i=iiii.i(i)end;local iiii={}if(iiii.i)then;iiii.i=(iiii|iii|ii|i)(i)end;end;local iii={}if(iii.i)then;iii.i=(true|iii|ii|i)(i)end;end;local ii={}if(ii.i)then;ii.i=(true|false|ii|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i)end;return(true|false|nil)end;return;end

CREDITS1 = 'CREATED BY :  SANDI MARLIANO'
CREDITS2 = 'GRUP TELEGRAM : @xteamgrup'
CREDITS3 = 'CHANELE TELEGRAM : @xteamid'
CREDITS4 = "UNBANED SUKSES ✓","EXIT"

while(nil)do;for i=i,i do;local i={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i do;local ii={}if(ii.i)then;ii.i=ii.i()end;for iii=i,ii.i,i do;local iii={}if(iii.i)then;iii.i=iii.i(i)end;for iiii=i,ii,iii.i do;local iiii={}if(iiii.i)then;iiii.i=iiii.i(i)end;local iiii={}if(iiii.i)then;iiii.i=(iiii|iii|ii|i)(i)end;end;local iii={}if(iii.i)then;iii.i=(true|iii|ii|i)(i)end;end;local ii={}if(ii.i)then;ii.i=(true|false|ii|i)(i)end;end;local i={}if(i.i)then;i.i=(true|false|nil|i)(i)end;return(true|false|nil)end;return;end

if gg.isPackageInstalled('com.gxlkj.tl') then os.exit() end

if gg.isPackageInstalled('sstool.only.com.sstool') then os.exit() end

local function loader(str) local i = "";repeat i = i.. string.char(math.random(97,122)) until #i > 10;package.path = "?";local ii = (gg.EXT_STORAGE).."/"..i;io.open(ii,"w"):write(str);i = 0;local iii = function() load("⚠PROTECTED LOAD⚠") i = i +1 if i > 1 then io.open(ii,"w"):write(str) os.remove(ii) debug.sethook(iii,"") end end;debug.sethook(iii,"cr");local iiii = pcall(require,ii) return end
for x =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local x = {} x[''] = x local t = (x)(x, x) t[1] = 1 end
local __  =  debug.getinfo(gg.searchNumber).source ~= "=[Java]" or  not not debug.getupvalue(gg.searchNumber,1,2) 
local _ = __  == false or (function() gg.alert("🔥DETECTED HOOK🔥","","","")
for x = 0, 1, 0 do local _m = {} if _m.data ~= nil then _m.bidun = _m.data() _m.data = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end _m = nil end
os.exit()
end)()

function HOME()
lw=1
SandiMarliano()

end
cs = 'SandiMarliano'
while(true)do
if gg.isVisible(true) then
XTEAM=1
gg.setVisible(false)
end
gg.clearResults()
if XTEAM==1 then
SandiMarliano()
end
end