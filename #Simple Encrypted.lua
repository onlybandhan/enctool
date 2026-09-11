local g = {} 
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
g.data = loadfile(g.config)
if g.data ~= nil then g.info = g.data() g.data = nil end
if g.info == nil then g.info = {g.last, g.last:gsub("/[^/]+$", "")} end

while true do
g.info = gg.prompt({
"📂 Select Script File",--1
"📂 Select output path",--2
},g.info,{
"file",--1
"path",}) -- 2

if g.info == nil then
return
end

gg.saveVariable(g.info, g.config)
g.last = g.info[1] if loadfile(g.last) == nil then
return gg.alert([[⚠️ Script not Found !]]) else
g.out = g.last:match("[^/]+$")
g.out = g.out:gsub(".lua", "_Ez_")
g.out = g.info[2] .. "/" .. g.out .. ".lua"
info = {g.out} end
local DATA = io.input(g.last):read('*a')

local keys = {} 
for i = 1,1000 do
A = math.random(50,350) 
table.insert(keys,A) end
local KEY = {(keys[30]+keys[56]*keys[47])-keys[90]+keys[72]}
local KY = {(keys[55]+keys[45]-keys[83])+keys[88]-keys[89]}

function _G(c)
res = ""
for _FORV_4_ in ipairs(c) do
res = res .. string.char(c[_FORV_4_])
end
return res
end

local TOTEXT = '\nlocal function _G(Text)\nText = Text:gsub([[ ]],"")\nreturn (Text:gsub("..",function (Text)\nreturn string.char((tonumber(Text,16) + 95) %256)\nend))\nend\n'

function Enc(str)
return str:gsub('.', function (c)
return string.format('%02X', (string.byte(c) - 95) %256)
end):gsub(" $", "", 1) 
end

local chars = "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz"
local Encode58 = function(s) local q, r, b
local et = {} local r = 0 local zn = 0 local nt = {}
local dt = {} local bt = {} 
local more = true for i = 1, #s do 
b = string.byte(s, i) if more and b == 0 then
zn = zn + 1 else more = false end nt[i] = b end
if #s == zn then return string.rep('1', zn) end
more = true
while more do local r = 0 more = false for i = 1, #nt do
b = nt[i] + (256 * r) q = b // 58 more = more or q > 0
r = b % 58 dt[i] = q end table.insert(et, 1, string.char(string.byte(chars, r+1)))
nt = {} for i = 1, #dt do nt[i] = dt[i] end dt = {} end
return string.rep('1', zn) .. table.concat(et) 
end
------
function encodegg(A0_66)
return 'gg[_G("' .. Enc(A0_66) .. '")]('
end
function encodeio(A0_67)
return 'io[_G("' .. Enc(A0_67) .. '")]('
end
function encodeos(A0_68)
return 'os[_G("' .. Enc(A0_68) .. '")]('
end
function encodestr(A0_69)
return 'string[_G("' .. Enc(A0_69) .. '")]('
end
------
repeat
DATA = DATA:gsub("'(.-)'", function(c)
c = load('return "'..c..'"')()
T = Encode58(c)
return 'A0_1("'..T..'")'
end)
until DATA:match("'(.-)'") == nil
repeat
DATA = DATA:gsub("'(.-)'", function(c)
c = load('return "'..c..'"')()
T = Encode58(c)
return 'A0_1("'..T..'")'
end)
until DATA:match("'(.-)'") == nil

DATA = ([[
local _ = "\n🛡️ Encrypted Lua GG By Angela 1.0 🛡️\n"
function FuckYou();for i = 1, 0 do i(i + ii + iii + iiii + (i + ii) + iii | i + ii + iii + iiii + iiii + ii + ii + i + iii + iii + iii + iii + i + iiii + iii + i + i + i + i | ii + i + i + ii + ii + iii) end;for i = 1, 0 do i((true | false) - true) end;for i, v in ipairs({}) do if ipairs(i .. v) == true then break end end;local keys = {]]..table.concat(keys,',')..[[};for x = 1, 3 do for c in ipairs({}) do ::x:: ::c:: local x = {} local c = {} local x = x[c]() local c = c[x]() if x ~= true then goto c if x ~= nil then goto x end;local x = nil;end;local c = nil;end;end;local KEY = {(keys[30]+keys[56]*keys[47])-keys[90]+keys[72]};local KY = {(keys[55]+keys[45]-keys[83])+keys[88]-keys[89]}; local chars = "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz";local base58 = {}; for i = 1, 58 do base58[string.byte(chars, i)] = i - 1 end;local function A0_1(s)if string.find(s, "[^"..chars.."]") then
return nil, "" end local zn = ""
zn = #(string.match(s, "^(1+)") or "") s = string.gsub(s, "^(1+)", "")
if s == "" then return string.rep('\x00', zn) end
local dn local d local b local m local carry
dn = { base58[string.byte(s, 1)] } for i = 2, #s do
d = base58[string.byte(s, i)] carry = 0 for j = 1, #dn do
b = dn[j] m = b * 58 + carry b = m & 0xff carry = m >> 8 dn[j] = b end;if carry > 0 then dn[#dn + 1] = carry end carry = d
for j = 1, #dn do b = dn[j] + carry carry = b >> 8
dn[j] = b & 0xff end if carry > 0 then dn[#dn + 1] = carry end
end local ben = {} local ln = #dn for i = 1, ln do 
ben[i] = string.char(dn[ln-i+1]) end return string.rep('\x00', zn) .. table.concat(ben) end ll = pcall III = load local II = '' l = A0_1(II) ll(III(l)) gg.clearList() local function str(c) c = #c return c end
]].. DATA ..[[
end;FuckYou()
]])
DATA = DATA:gsub("gg%.(%a+)%(", encodegg) --- gg
DATA = DATA:gsub("io%.(%a+)%(", encodeos) --- io
DATA = DATA:gsub("os%.(%a+)%(", encodeos) --- os
DATA = DATA:gsub("string%.(%a+)%(", encodestr) --- string
DATA = TOTEXT .. DATA
-------
DATA = string.dump(load(DATA), true)
io.open(g.out,'w'):write(DATA):close()
return
end


