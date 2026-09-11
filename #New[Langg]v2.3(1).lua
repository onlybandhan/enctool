local g = {}
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. ".cfg"
DATA = loadfile(g.config)
if DATA ~= nil then g.info = DATA() DATA = nil end
if g.info == nil then 
g.info = {
g.last,
g.last:gsub("/[^/]+$", "")
}
end

local Decode = ([[
local _UPVAULE2_ = function(str) 

function FL1()

local K, F = _UPVAULE5_, _UPVAULE6_ + _UPVAULE7_

  return (str:gsub("%x%x", function(c) 
  
  local L = K % 274877906944
  
    local H = (K - L) / 274877906944
    
      local M = H % 128
      
        c = tonumber(c, 16) 
        
        local m = (c + (H - M) / 128) * (2*M + 1) % 256
        
          K = L * F + H + c + m 
          
          return string.char(m)end))
          
          end
          
          return FL1()
          
          end
          
          
local _UPVAULE1_ = function(code)
function DATA()
for i = 1,0 do;Langg = 'DARK';end;for i = 1,0 do;if(nil)then;Langg = 'DARK';end;end;for i = 1, 0 do i((true | false) - true) end

local code = code._FORV

local Salemxjawq = code

runx = ''

for _,k in ipairs(Salemxjawq) do

runx = runx..string.char(k + _UPVAULE3_ - _UPVAULE4_ %_UPV9_)

end

return runx

end
for i = 1,0 do;Langg = 'DARK';end;for i = 1,0 do;if(nil)then;Langg = 'DARK';end;end;for i = 1, 0 do i((true | false) - true) end

return DATA()

end


]])

gg.alert([[


🛡️ Encrypt Tools By Langg 🛡️
▢▣▢▣▢▣▢▣▢▣▢▣▢▣▢▣▢▣▢▣▢▣▢▣▢
➪ Fiture Encrypt :
🔐 Fake Key + Hide Key.                       
🛠 Block Unluac | Load | Log.                             
🔒 Block TC-SSTool.
🛡️ Hide Value.
📝 Note : Block Log Not Safe.
▢▣▢▣▢▣▢▣▢▣▢▣▢▣▢▣▢▣▢▣▢▣▢▣▢
💲Price?
130k / 13$
◌◍◌◍◌◍◌◍◌◍◌◍◌◍◌◍◌◍◌◍◌◍◌◍◌◍◌◍◌◍◌
🎊 The Tools Is Open Source U can Change All To Your Name.
▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱▰▱
💸 For buy DM ~ @LanggDong 
🏧 Payment :
🏦 Bank.
🛡️ Dana.
▬▭▬▭▬▭▬▭▬▭▬▭▬▭▬▭▬▭▬
]])

while true do
g.info = gg.prompt({
"📁 Select File Encrypt :",
"📁 Select Output :"
}, g.info, {
"File",
"Path"
})
if g.info == nil then
print("❌ Cancelled by User...")
return
end
gg.saveVariable(g.info, g.config)
g.last = g.info[1]
if io.open(g.last, "r") == nil then
return gg.alert("⚠️ Script not Found! ")
end
if loadfile(g.last) == nil then
return gg.alert("⚠️ Fix Your Script Error!")
else
gg.toast("⏳ Wait...")
g.out = g.last:match("[^/]+$"):gsub(".lua", ".{Lang2.3}")
g.out = g.info[2] .. "/" .. g.out .. ".lua"
g.path = io.open(g.out, "wb")
if g.path == nil then
return gg.alert("⚠️ Path Not Found!")
end
end

DATA = io.open(g.last, "r"):read("*a")


local Key53 = 6171;local Key14 = 2647;local inv256
function SHA(str)if not inv256 then inv256 = {} for M = 0, 127 do local inv = -1 repeat inv = inv + 2 until inv * (2*M + 1) % 256 == 1 inv256[M] = inv end;end local K, F = Key53, 538 + Key14 return (str:gsub('.', function(m)local L = K % 274877906944;local H = (K - L) / 274877906944;local M = H % 128;local m = m:byte()local c = (m * inv256[M] - (H - M) / 128) % 256 K = L * F + H + c + m return ('%02x'):format(c)end))end
function Encode(str)
str = SHA(str)
sd = {}
stb = {str:byte(1,-1)}
for i = 1, #stb do
stb[i] = stb[i] - 328 + 515 %254
end
return "{"..tostring(table.concat(stb, ",")).."}"
end


Narzx = 0
xnxx ={}
lol = {}
repeat
DATA = DATA:gsub('"(.-)"', function(c)
c = load('return "'..c..'"')()
T = Encode(c)
Nizu = table.insert(xnxx, T)
Narzx = Narzx + 1
return "_UPVAULE2_(_UPVAULE1_({_FORV = TakeTable["..Narzx.."]}, -264875649))"
end)
until DATA:match('"(.-)"') == nil
repeat
DATA = DATA:gsub("'(.-)'", function(c)
c = load("return '"..c.."'")()
T = Encode(c)
Nizu = table.insert(xnxx, T)
Narzx = Narzx + 1
return "_UPVAULE2_(_UPVAULE1_({_FORV = TakeTable["..Narzx.."]}, -264875649))"
end)
until DATA:match("'(.-)'") == nil

Tokeys = ([[
while(_FORV)do;_UPV_ = {_FORV % _FORV};for i in ipairs(_UPV_) do _UPV_ = {{_FORV % _FORV}, {_FORV % _FORV}} _UPV_._UPV_ = _ENV[{(_FORV % _FORV)}] end;end
local _FORV = function(Table)
local Table = Table.Table
for i in ipairs(Table) do
local Table = Table
end
return Table
end

local JK = J..K
local AJ = E..G..H
local _UPV9_ = "254"
local _UPVAULE6_ = "538"
local Gardump = _FORV{Table = {G..D, C..E,E..A..A..J..K}}
local GarKey1 = {}
for i = 1,Gardump[3] do
GarKey1[i] = i*G
end

local GarKey1 = GarKey1[80]

local Gar = GarKey1 + JK

local Gar = {Gardump[1] + Gar}

local _UPVAULE3_ = Gar[1] - 1

local Gasdump = _FORV{Table = {J..C, B..B, K..A..C}}
GasKey1 = {}
for i = 1,Gasdump[1] do
GasKey1[i] = i*A
end

local GasKey1 = GasKey1[49] 

local Gas = GasKey1 + AJ

local Gas = {Gas + Gasdump[2]}
local _UPVAULE4_ = Gas[1] - 1

y = "2719"
x = "1111"
local Lonte = function ()
y=y+1
return x+y
end
Vagina = {}
for i = 1,1500 do
Vagina[i] = i*D
end
 
local Terus = _FORV{Table = {D..G..H..C}}

local _UPVAULE5_ = Lonte() + Terus[1]
local _UPVAULE7_ =  Vagina[1321] + J
]])

function LEGS(str)
sd = {}
stb = {str:byte(1,-1)}
LESS = "\\0"
for i = 1, #stb do
stb[i] = stb[i] - 100 / 50 %256
res = LESS:rep(stb[i])
table.insert(sd, '"'..res..'"')
end
return "{"..table.concat(sd, ",").."}"
end
function StrEncode(str)
return "string.char(table.unpack({"..tostring(table.concat({str:byte(1,-1)}, ",")).."}))"
end
local chars = "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyzuuuuu/+123456789JKL&_FORVbtwbtw"
local EncodeB = function(s)
	local q, r, b
	local et = {}
	local r = 0
	local zn = 0 	
	local nt = {}
	local dt = {} 
	local bt = {}
	local more = true 
	for i = 1, #s do 
		b = string.byte(s, i)
		if more and b == 0 then
			zn = zn + 1
		else
			more = false
		end
		nt[i] = b
	end
	if #s == zn then
		return string.rep('1', zn)
	end
	more = true
	while more do
		local r = 0
		more = false
		for i = 1, #nt do
			b = nt[i] + (256 * r)
			q = b // 58
			more = more or q > 0
			r = b % 58
			dt[i] = q
		end
		table.insert(et, 1, string.char(string.byte(chars, r+1)))
		nt = {}
		for i = 1, #dt do nt[i] = dt[i] end
		dt = {}
	end--while
	return string.rep('1', zn) .. table.concat(et)
end
local base64chars = {
    [0]='A',  [1]='B',  [2]='C',  [3]='D',  [4]='E',  [5]='F',  [6]='G',  [7]='H', 
    [8]='I',  [9]='J', [10]='K', [11]='L', [12]='M', [13]='N', [14]='O', [15]='P', 
   [16]='Q', [17]='R', [18]='S', [19]='T', [20]='U', [21]='V', [22]='W', [23]='X', 
   [24]='Y', [25]='Z', [26]='a', [27]='b', [28]='c', [29]='d', [30]='e', [31]='f', 
   [32]='g', [33]='h', [34]='i', [35]='j', [36]='k', [37]='l', [38]='m', [39]='n', 
   [40]='o', [41]='p', [42]='q', [43]='r', [44]='s', [45]='t', [46]='u', [47]='v', 
   [48]='w', [49]='x', [50]='y', [51]='z', [52]='0', [53]='1', [54]='2', [55]='3', 
   [56]='4', [57]='5', [58]='6', [59]='7', [60]='8', [61]='9', [62]='-', [63]='_'
}

function Encode64(data)
   local bytes = {}
   local result = ""
   for i = 0, data:len()-1, 3 do
      for byte = 1, 3 do bytes[byte] = string.byte(data:sub(i+byte)) or 0 end
      result = 
         string.format( '%s%s%s%s%s', 
            result, 
            base64chars[ math.floor(bytes[1]/4) ] or "=",
            base64chars[(bytes[1] % 4) * 16 + math.floor(bytes[2] / 16)] or "=",
            ( {
                 [true]  = base64chars[(bytes[2] % 16) * 4 + math.floor(bytes[3] / 64)] or "=", 
                 [false] = "="
              }
            ) [(data:len() - i) > 1],
            ( {
                 [true]  = base64chars[(bytes[3] % 64)] or "=", 
                 [false] = "="
              }
            ) [(data:len(data) - i) > 2]
        )
   end
   return result
end

local Tokeys = Tokeys:gsub('%"(.-)%"', function(c)
local c = 'Hajwiiaa("' .. EncodeB(c) .. '")'
return c
end)

Tokeys = ([[
while(_FORV)do;_UPV_ = {_FORV % _FORV};for i in ipairs(_UPV_) do _UPV_ = {{_FORV % _FORV}, {_FORV % _FORV}} _UPV_._UPV_ = _ENV[{(_FORV % _FORV)}] end;end
local A1 = "123456789";local B2 = "ABCDEFGHJKLMNPQRSTUVWXYZ";local C3 = "abcdefghijkmnopqrstuvwxyzuuuuu";local D4 = "/+123456789"
local base58 = {}; 
local chars = ""..A1..B2..C3..D4..""
for i = 1, 58 do base58[string.byte(chars, i)] = i - 1  end
collectgarbage("collect")
local function GB(s)
function Encodeb85(data)
	if string.find(s, "[^"..chars.."]") then
		return nil, "invalid string.char"
	end
	local zn
	zn = #(string.match(s, "^(1+)") or "")
	s = string.gsub(s, "^(1+)", "")
	if s == "" then 
		return string.rep('\x00', zn)
	end
	local dn 
	local d 
	local b 
	local m 
	local carry
	dn = { base58[string.byte(s, 1)] }
	for i = 2, #s do
		d = base58[string.byte(s, i)]
		carry = 0
		for j = 1, #dn do
			b = dn[j]
			m = b * 58 + carry
			b = m & 0xFF
			carry = m >> 8
			dn[j] = b
		end
		if carry > 0 then dn[#dn + 1] = carry end
		carry = d
		for j = 1, #dn do
			b = dn[j] + carry
			carry = b >> 8
			dn[j] = b & 0xFF
		end 
		if carry > 0 then dn[#dn + 1] = carry end
	end
	local ben = {} 
	local ln = #dn
	for i = 1, ln do 
		ben[i] = string.char(dn[ln-i+1])
	end
	return string.rep('\x00', zn) .. table.concat(ben)
end
return Encodeb85()
end
local Hajwiiaa = GB


]]..Tokeys)
Tokeys = Tokeys:gsub('%"(.-)%"', function(c)
local c = 'Asdfghjkl("' .. Encode64(c) .. '")'
return c
end)
Tokeys = ([[
local base64bytes = {
   ['A']= 0, ['B'] =1, ['C'] =2, ['D'] =3, ['E'] =4, ['F'] =5, ['G'] =6, ['H'] =7, 
   ['I']=8,  ['J'] =9, ['K']=10, ['L']=11, ['M']=12, ['N']=13, ['O']=14, ['P']=15, 
   ['Q']=16, ['R']=17, ['S']=18, ['T']=19, ['U']=20, ['V']=21, ['W']=22, ['X']=23, 
   ['Y']=24, ['Z']=25, ['a']=26, ['b']=27, ['c']=28, ['d']=29, ['e']=30, ['f']=31, 
   ['g']=32, ['h']=33, ['i']=34, ['j']=35, ['k']=36, ['l']=37, ['m']=38, ['n']=39, 
   ['o']=40, ['p']=41, ['q']=42, ['r']=43, ['s']=44, ['t']=45, ['u']=46, ['v']=47, 
   ['w']=48, ['x']=49, ['y']=50, ['z']=51, ['0']=52, ['1']=53, ['2']=54, ['3']=55, 
   ['4']=56, ['5']=57, ['6']=58, ['7']=59, ['8']=60, ['9']=61, ['-']=62, ['_']=63, 
   ['=']=nil
}

function MB(data)
function Gas()
   local chars = {}
   local result = ""
   for i = 0, data:len()-1, 4 do
      for c = 1, 4 do chars[c] = base64bytes[ (string.sub(data,(i+c),(i+c)) or "=") ] end
      result = 
         string.format( '%s%s%s%s',
            result, string.char(chars[1]*4 + math.floor(chars[2]/16)),
            ( {
               [true]  = string.char(((chars[2] or 0) % 16)*16 + math.floor((chars[3] or 0)/4)), 
               [false] = ""
              }
           ) [chars[3] ~= nil],
           ( {
              [true]  = string.char(((chars[3] or 0)%4) * 64 + (chars[4] or 0)), 
              [false] = ""}
           ) [chars[4] ~= nil]
        )
   end
   return result
end
return Gas()
end
local Asdfghjkl = MB

]]..Tokeys)
local Tokeys = Tokeys:gsub('%"(.-)%"', function(c)
local c = 'Fasjasha (' .. LEGS(c) .. ')'
return c
end)
Tokeys = Tokeys:gsub("%'(.-)%'", function(c)
local c = 'Fasjasha (' .. LEGS(c) .. ')'
end)
Tokeys = ([[
function GetKey(c)
function GetTable()
c = #c
return c
end
return GetTable()
end
local A2 = "1";local A3 = "0";local A4 = "0"
local Key_FORV = ""..A2..A3..A4..""
local Hequalaty = Key_FORV
local B3 = "5";local B4 = "0"
local KeyJKL = ""..B3..B4..""
local Saquanicap = KeyJKL
local DecoL1_12ey = function(code)
function Decode()
while(_FORV)do;_UPV_ = {_FORV % _FORV};for i in ipairs(_UPV_) do _UPV_ = {{_FORV % _FORV}, {_FORV % _FORV}} _UPV_._UPV_ = _ENV[{(_FORV % _FORV)}] end;end

local Sofxnxx = code
runx = ''
for _,k in ipairs(Sofxnxx) do
runx = runx..string.char(GetKey(k) + Hequalaty / Saquanicap %256)
end
return runx
end
return Decode()
end
local Fasjasha = DecoL1_12ey


]]..Tokeys)
Dats = table.concat(xnxx, ",")
 
DATA = ([=[
local Text = (string.dump(loadfile(gg.getFile()), false, false)):rep(1)
local Rep = 1
for k,v in pairs(gg) do
if type(v) == "function" and k ~= "isPackageInstalled" then
def = function(...)
gg.isPackageInstalled(Text:rep(Rep))
load(Text:rep(Rep))
return v(table.unpack({...}))
end

_G["gg"][k] = def

end
end
MOD4 = "address"
MOD5 = "flags"
MOD6 = "values"
for i = 1, 50 do
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
for i = 1, 6 do
  gg.removeResults(a)
end
if not loadfile(gg.getFile()) then gg.alert("Stop Using Compiler") return end
function Take_FORV(_FORV)
function Take()
_FORV = _FORV.TakeTable
for i in ipairs(_FORV) do
_FORV = _FORV
end
return _FORV
end
return Take()
end
collectgarbage("collect")
local Take = Take_FORV{TakeTable = {Take_FORV{TakeTable = {]=]..Dats..[=[}}}}

]=]..Tokeys..[=[

local TakeTable = Take[1]

]=]..Decode..[=[


]=]..DATA)

ForChunk = [[
collectgarbage("collect")
for i = 1,0 do;Langg = 'DARK';end;for i = 1,0 do;if(nil)then;Langg = 'DARK';end;end;for i = 1, 0 do i((true | false) - true) end
for i = 1,0 do;Langg = 'Lonte';end;for i = 1,0 do;if(nil)then;Langg = 'Lonte';end;end;for i = 1, 0 do i((true | false) - true) end
for i = 1,0 do;Langg = 'Vagina';end;for i = 1,0 do;if(nil)then;Langg = 'Vagina';end;end;for i = 1, 0 do i((true | false) - true) end
for i = 1,0 do;Langg = 'Kontol';end;for i = 1,0 do;if(nil)then;Langg = 'Kontol';end;end;for i = 1, 0 do i((true | false) - true) end
collectgarbage("step")
]]
DATA = DATA:gsub('\ngg.searchNumber', "\n"..[[function Langg()
function Vagina()
L1_12 = [===[#1#2#3#4#5​]===] 
]]..ForChunk..[[
end
return Vagina()
end
local _ = {["3"] = gg.searchNumber}
x = "3"
local HideFunc = _[x]
]])
DATA = DATA:gsub('\ngg.clearResults', '\n'..[[function Langg()
function Vagina()
L1_12 = [===[#1#2#3#4#5​]===] 
]]..ForChunk..[[
end
return Vagina()
end
local __ = {getResult = gg.clearResults}
Kontol = __.getResult
]])
DATA = DATA:gsub('\ngg.editAll', '\n'..[[function Langg()
function Vagina()
L1_12 = [===[#1#2#3#4#5​]===] 
]]..ForChunk..[[
end
return Vagina()
end
local ___ = {searchNumber = gg.editAll}
HideFunc = ___.searchNumber
]])

io.open(g.out..".source", "wb"):write(DATA)
 DATA = string.dump(load([[local _ = '\n\nCredits = Langg Dong Langg Dong Lang Lonte\n\n\000\n\n\000[\000"This Version 2.3"]\n["Want Buy ?DM @LanggDong"]\n\000["Not Stable For All Scripts"\000]\000\n["You Need Help ?Dont PM Me"]\n\n\000'

Garbage = {collect = collectgarbage}

Garbage.collect("collect")
_ = {}
_._ = _._
local Tolol = {}
local FakeWord = "C"
local FakeTolol = Tolol
local RealTolol = FakeTolol
 FakeTolol[FakeWord] = ("asdfgh")
 RealTolol[FakeWord] = FakeTolol[FakeWord]:len()
local A =  Tolol["C"]
FakeTolol[FakeWord] = ("abxjwuaj")
 RealTolol[FakeWord] = FakeTolol[FakeWord]:len()
local B = Tolol["C"]
FakeTolol[FakeWord] = ("")
 RealTolol[FakeWord] = FakeTolol[FakeWord]:len()
local C = Tolol["C"]
FakeTolol[FakeWord] = ("lz")
 RealTolol[FakeWord] = FakeTolol[FakeWord]:len()
local D = Tolol["C"]
FakeTolol[FakeWord] = ("c")
 RealTolol[FakeWord] = FakeTolol[FakeWord]:len()
local E = Tolol["C"]
_._ = _.__
_.__ = _.___
FakeTolol[FakeWord] = (".--.-.-")
 RealTolol[FakeWord] = FakeTolol[FakeWord]:len()
local F = Tolol["C"]
FakeTolol[FakeWord] = ("@@@")
 RealTolol[FakeWord] = FakeTolol[FakeWord]:len()
local G = Tolol["C"]
FakeTolol[FakeWord] = ("####")
 RealTolol[FakeWord] = FakeTolol[FakeWord]:len()
local H = Tolol["C"]
FakeTolol[FakeWord] = ("     ")
 RealTolol[FakeWord] = FakeTolol[FakeWord]:len()
local J = Tolol["C"]
FakeTolol[FakeWord] = ("-+-+-+-")
 RealTolol[FakeWord] = FakeTolol[FakeWord]:len()
local K = Tolol["C"]
FakeTolol[FakeWord] = ("   @k@12a")
 RealTolol[FakeWord] = FakeTolol[FakeWord]:len()
local L = Tolol["C"]

local _ = {};local Script = {}
 _.Script = function()
 function Memex()
 _.Script = 0

]]..DATA..[[


end
return Memex()
end
_.Script() ]]),true,true)
DATA = DATA.."\000\000\nThat Is Last Version Of Version 2.3\n\000\000"
Dats = gg.internal2(load(DATA), g.out)
DATA = gg.internal2(loadfile(g.out), g.out)
io.input(g.out)
Dats = io.read("*a")
OPCO = "OP[63] 0x7ffd80ff\nMOVE v0 v0\nLOADBOOL v0 0\nLOADNIL v1..v2\nNEWTABLE v5 9 0\nLOADNIL v1..v1\nTEST v0 0\nLEN v0 v0\nGETTABLE v7 v9 v7\nEQ 1 v1 v2\nUNM v1 v0\nTEST v6 0\nOP[71] 0x0a\nOP[71] 0x0a\nOP[64] 0xb1879ff0\nOP[1] 0x20\nOP[58] 0xa6879ff0\nOP[2] 0x20\nOP[78] 0xb3879ff0\nOP[3] 0x20\nOP[81] 0xac879ff0\nOP[4] 0x20\nOP[45] 0xac879ff0\nOP[71] 0x0a\nOP[71] 0x0a\nMOVE v0 v0\nMOVE v0 v0\nMOVE v0 v0\nMOVE v0 v0"

OPCO2 = ([[OP[63] 0x7ffd80ff

LOADBOOL v0 0

TEST v0 0

NEWTABLE v0 2 0

LOADNIL v1..v1

LOADNIL v2..v2

SETLIST v0..v2 1

GETTABLE v1 v0 v1

LEN v2 v0

EQ 1 v1 v2

UNM v1 v0

LEN v2 v0

GETTABLE v2 v0 v2

LOADBOOL v0 0

TEST v0 0

NEWTABLE v0 2 0

LOADNIL v1..v1

LOADNIL v2..v2

SETLIST v0..v2 1

GETTABLE v1 v0 v1

LEN v2 v0

EQ 1 v1 v2

UNM v1 v0

LEN v2 v0

GETTABLE v2 v0 v2]]) 

OPCO3 = ([[OP[63] 0x7ffd80ff

MOVE v4 v3

BOR v5 true false

SUB v5 v5 true

CALL v4..v5

LOADNIL v4..v4

TEST v4 0

MOVE v4 v3

BOR v5 true false

SUB v5 v5 true

CALL v4..v5

MUL v50 v49 v35

SETTABLE v45 v49 v50

		MOVE v44 v24

		NEWTABLE v45 0 1

		NEWTABLE v46 3 0

		MOVE v47 v35

		MOVE v48 v32]])
		OPCO4 = ([[OP[63] 0x7ffd80ff
		NEWTABLE v6 0 1
NEWTABLE v7 11 0
NEWTABLE v8 22 0
SETLIST v8..v36 1
NEWTABLE v9 16 0
SETLIST v10..v26 1
NEWTABLE v11 31 0
NEWTABLE v32 0 0
NEWTABLE v33 0 0
UNM v32 v34
GETTABLE v34 v32 v33
CALL v34..v34 v34..v34
GETTABLE v35 v33 v34
CALL v35..v35 v35..v35
EQ 0 v34 true]])
Dats = Dats:gsub("RETURN  ; unused", 'OP[2] 0xb1879ff0\nOP[1] 0x20\nOP[58] 0xa6879ff0\nOP[2] 0x20\nOP[78] 0xb3879ff0\nOP[3] 0x20\nOP[81] 0xac879ff0\nOP[4] 0x20\nOP[45] 0xac879ff0')
Dats = Dats:gsub('SETTABUP u0 "Langg" "DARK"', OPCO)
Dats = Dats:gsub('SETTABUP u0 "Langg" "Lonte"', OPCO2)
Dats = Dats:gsub('SETTABUP u0 "Langg" "Vagina"', OPCO3)
Dats = Dats:gsub('SETTABUP u0 "Langg" "Kontol"', OPCO4)
--Dats = Dats:gsub('linedefined [^\n]*', 'linedefined '..math.random(100))
Math1 = math.random(1, 10)
Math2 = math.random(10,15)
Math3 = math.random(15,20)
Math4 = math.random(20,25)
Math5 = math.random(25,30)
Math6 = math.random(30,35)
Dats = Dats:gsub(".upval v0 nil ; u0", '.upval v0 "Kontolv'..Math1..'" ; u0'):gsub(".upval u0 nil ; u0", '.upval u0 "AbcK'..Math2..'ㅤkonrol" ; u0'):gsub(".upval v1 nil ; u1", '.upval v1 "ㅤMoe'..Math3..'wmeow" ; u1'):gsub(".upval u1 nil ; u0", '.upval u1 "Kas'..Math4..'bc" ; u0'):gsub('.upval v6 nil ; u3', '.upval v6 "'..Math5..'" ; u3')
Dats = Dats:gsub('.upval v13 nil ; u1', '.upval v13 "Kacc'..math.random(123)..'" ; u1')
Dats = Dats:gsub('.upval v14 nil ; u2', '.upval v14 "Cam '..string.char(0xFF)..'Mom" ; u2')
Dats =	Dats:gsub('.upval u2 nil ; u3', '.upval u2 "Kqewjx'..string.char(1,2,3)..'" ; u3')
Dats = Dats:gsub('.upval v7 nil ; u1', '.upval v7 "'..math.random(21)..'Evo" ; u1')
Dats = Dats:gsub('.upval v11 nil ; u2', '.upval v11 "NizxKontilVersion'..Math6..'" ; u2')
Dats = Dats:gsub("nil ; ", '"AsuKontol" ; ')
Dats = gg.internal2(load(Dats), g.out)
io.input(g.out)
Dats = io.read("*a")
Dats = string.dump(load(Dats))
Dats=Dats:gsub(string.char(0x00, 0x01, 0x04, 0x04, 0x04, 0x08, 0x00, 0x19, 0x93, 0x0d, 0x0a, 0x1a, 0x0a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,0x00, 0x00, 0x00, 0x01, 0x04), string.char(0x00, 0x01, 0x04, 0x04, 0x04, 0x08, 0x00, 0x19, 0x93, 0x0d, 0x0a, 0x1a, 0x0a, 0xAD, 0x87, 0x9F, 0xF0, 0xB0, 0x87, 0x9F, 0xF0, 0x00, 0x01, 0x28))
Dats =Dats:gsub(string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x02), string.char(0xFA, 0xFA, 0xFA, 0x00, 0x00, 0xFF, 0xFA, 0x0E, 0x02))

Dats = Dats.."\000\000\nThat Is Version 2.3\n\000\000"
return io.open(g.out, "wb"):write(Dats)
end