local g = {}
g.last = gg.getFile()
g.info = nil

g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
g.data = loadfile(g.config)
if g.data ~= nil then
g.info = g.data()
g.data = nil
end

if g.info == nil then
g.info = {g.last, g.last:gsub('/[^/]+$', ''), nil}
end
if g.info[3] == nil then g.info[3] = false end
if g.info[4] == nil then g.info[4] = false end
if g.info[5] == nil then g.info[5] = false end
--Read_Starting-------------------------------------------------------------------------- 
local mode_read_only = 'r'
local mode_read_line = '*l'
local mode_read_all = '*a'
local mode_write_only = 'w'
local mode_write_append = 'a'

local data_read = function(read_path, open_mode, read_mode)
local read_file = io.open(read_path, open_mode)
local content = read_file:read(read_mode)
read_file:close()
return content
end

local data_write =function(write_path, write_mode, data_to_write)
local write_file = io.open(write_path, write_mode)
write_file:write(data_to_write)
write_file:write("\n")
write_file:close()
end
--Read_Ending-------------------------------------------------------------------------

while true do
g.info = gg.prompt({
'Select script file:',
'Select writable path for output:',
'Decrypt TG V9',
'Decrypt TG LuaB',
'Decrypt string.char'
}, g.info, {
'file',
'path',
'checkbox',
'checkbox',
'checkbox'
})
if g.info == nil then break end
gg.saveVariable(g.info, g.config)
gg.VERSION_INT = tonumber((gg.VERSION:gsub('%.[0-9]+', function (m)
m = m:sub(2)
if #m == 1 then m = '0'..m end
return m
end)))
g.last = g.info[1]
g.test, g.err = loadfile(g.last)
g.loaded = g.last
if g.test == nil and not (g.info[3] or g.info[4] or g.info[5]) then
if g.err == nill then g.err = 'Unknown error' end
print(g.err)
gg.alert('Failed load script: '..g.last..'\n\n'..g.err)
else
g.name = g.last:match('[^/]+$')
g.pathes = {g.info[2]:gsub('/?$', '')..'/'..g.name, g.last, '/sdcard/'..g.name, gg.getFile():gsub('[^/]+$', '')..g.name, gg.EXT_FILES_DIR..'/'..g.name}
g.file = nil
g.out = ''
g.try = ''
for i, v in ipairs(g.pathes) do
g.out = v..".tmp.lua"
g.file = io.open(g.out, "w")
if g.file ~= nil then
g.last = v:gsub('%.lua$', '')
break
end
g.try = g.try..' '..v
end
os.remove(g.out)
---decv9----------------------------------------------------------------
if g.info[3] then
s = gg.prompt({
'Offset Hex', 'Function Name'
},nil, {
'text', 'text'
})
TGV9_tmp = g.pathes[1]:gsub('%.lua$', '') .. '.tmp'
TGV9_out = g.pathes[1]:gsub('%.lua$', '') .. '.DEC_BY_ASD.lua'
local function DECODE(c)
  c = c:gsub(" ", "")
  return (c:gsub("..", function(code)
    return string.char((tonumber(code, 16) +s[1]) % 256)
  end))
end

data_write(TGV9_out, mode_write_only, '')

TGV9_gg = 'gg%[%' .. s[2] .. '%(.-%)%]'
TGV9_os = 'os%[%' .. s[2] .. '%(.-%)%]'
local File = io.open(g.info[1], mode_read_only)
assert(File)
repeat
local content = File:read(mode_read_line)
if content ~= nil then
if content:match(TGV9_gg) == nil then
data_write(TGV9_tmp, mode_write_append, content)
end
TGV9_result = ''
if content:match(TGV9_gg) ~= nil then
data = content:gsub(TGV9_gg, function (c)
if c:match('%"(.-)%"') then
c = c:match('%"(.-)%"')
c = 'gg.' .. DECODE(c)
c = c:gsub("\n",[[\n]])
end 
return c end)
TGV9_result = data:gsub(TGV9_gg)
if TGV9_result ~= '' then
data_write(TGV9_tmp, mode_write_append, TGV9_result)
end
end
end
until content == nil
--[decv9]--[part1end]--

local File = io.open(TGV9_tmp, mode_read_only)
assert(File)
repeat
local content = File:read(mode_read_line)
if content ~= nil then
if content:match(TGV9_os) == nil then
data_write(TGV9_out, mode_write_append, content)
end
TGV9_result = ''
if content:match(TGV9_os) ~= nil then
data = content:gsub(TGV9_os, function (c)
if c:match('%"(.-)%"') then
c = c:match('%"(.-)%"')
c = 'os.' .. DECODE(c)
c = c:gsub("\n",[[\n]])
end 
return c end)
TGV9_result = data:gsub(TGV9_os)
if TGV9_result ~= '' then
TGV9_result = data:gsub("By Only SSTool", "Dec by @AS_DROIDS")
data_write(TGV9_out, mode_write_append, TGV9_result)
end
end
end
until content == nil
gg.alert('Decrypted Completed Saved in :\n' .. TGV9_out)
print('Decrypted Completed Saved in :\n' .. TGV9_out)
return os.remove(TGV9_tmp)
end
--v9 end--
-------------[[-BEGIN-]]---luab---------------------

if g.info[4] then
TG_luaB_filter = g.info[1]
if g.info[1]:match('%.luac$') ~= nil then 
TG_luaB_filter = g.info[1]:gsub('%.luac$', '')
end
if TG_luaB_filter:match('%[SSDECOMP%]') ~= nil then 
TG_luaB_filter = TG_luaB_filter:gsub('%[SSDECOMP%]', '')
end 

TG_luaB_tmp = TG_luaB_filter:gsub('%.lua$', '') .. '.tmp'
TG_luaB_out = TG_luaB_filter:gsub('%.lua$', '') .. '.DEC_BY_ASD.lua'
data_write(TG_luaB_out, mode_write_only, '')
local DECODE = function(c)
O = {}
for i = 1, #c do table.insert(O, tonumber(c[i], 16)) end
return string.char(table.unpack(O))
end

TG_luaB_sort = '\n%s%s'
data_sort = data_read(g.info[1], mode_read_only, mode_read_all)


repeat
data_sort = data_sort:gsub(TG_luaB_sort, '\n')
until data_sort:match(TG_luaB_sort) == nil

repeat
data_sort = data_sort:gsub('[,]\n', ',')
until data_sort:match('[,]\n') == nil

repeat 
data_sort = data_sort:gsub('gg%[string%.char.-%(%{\n', '_UPVALUE_({')
until data_sort:match('gg%[string%.char.-%(%{\n') == nil

repeat 
data_sort = data_sort:gsub('\n%}%)%)%)%]', '})')
until data_sort:match('\n%}%)%)%)%]') == nil

data_write(TG_luaB_tmp, mode_write_only, data_sort)

TG_luaB_str = '%_UPVALUE%_%(%{.-%}%)'
local File = io.open(TG_luaB_tmp, mode_read_only)
assert(File)
repeat
local content = File:read(mode_read_line)
if content ~= nil then

if content:match(TG_luaB_str) == nil then
data_write(TG_luaB_out, mode_write_append, content)
end

TG_luaB_result = ''
if content:match(TG_luaB_str) ~= nil then
data = content:gsub(TG_luaB_str, function (c)
if c:match('%{(.-)%}') then
c = c:match('%{(.-)%}')
c = load('return {' .. c .. '}')()
c = 'gg.' .. DECODE(c)
c = c:gsub('\n',[[\n]])
end
return c end)
TG_luaB_result = data:gsub(TG_luaB_str)
if TG_luaB_result ~= '' then
data_write(TG_luaB_out, mode_write_append, TG_luaB_result)
end
end
end
until content == nil
gg.alert('Decrypted Completed Saved in :\n' .. TG_luaB_out)
print('Decrypted Completed Saved in :\n' .. TG_luaB_out)
return os.remove(TG_luaB_tmp)
end
-------------end----decluab---------------------
if g.info[5] then
STR_Char_filter = g.info[1]
jncklo = gg.prompt({
'Function Name'
},nil, {
'text'
})
if g.info[1]:match('%.luac$') ~= nil then 
STR_Char_filter = g.info[1]:gsub('%.luac$', '')
end
if STR_Char_filter:match('%[SSDECOMP%]') ~= nil then 
STR_Char_filter = STR_Char_filter:gsub('%[SSDECOMP%]', '')
end 
STR_Char_tmp = STR_Char_filter:gsub('%.lua$', '') .. '.tmp'
STR_Char_out = STR_Char_filter:match("[^/]+$"):gsub("%.lua$", ".DEC_BY_ASD.lua")
STR_Char_out = g.info[2] .. "/" .. STR_Char_out
data_write(STR_Char_out, mode_write_only, '')
local DECODE = function(c)
return string.char() .. string.char(table.unpack(c))
end
STR_Char_sort = '\n%s%s'
data_sort = data_read(g.info[1], mode_read_only, mode_read_all)

repeat
data_sort = data_sort:gsub(STR_Char_sort, '\n')
until data_sort:match(STR_Char_sort) == nil
repeat
data_sort = data_sort:gsub('[,]\n', ',')
until data_sort:match('[,]\n') == nil
repeat 
data_sort = data_sort:gsub('%'.. jncklo[1] ..'%(%{%\n', 'A_ASDROIDS({')
until data_sort:match('%'.. jncklo[1] ..'%(%{%\n') == nil
repeat 
data_sort = data_sort:gsub('%'.. jncklo[1] ..'%(%{', 'A_ASDROIDS({')
until data_sort:match('%'.. jncklo[1] ..'%(%{') == nil
repeat 
data_sort = data_sort:gsub('%(%{%\n', '({')
until data_sort:match('%(%{%\n') == nil
repeat 
data_sort = data_sort:gsub('%string%.char%(', 'A_ASDROIDS')
until data_sort:match('%string%.char%(') == nil
repeat 
data_sort = data_sort:gsub('%table%.unpack', '')
until data_sort:match('%table%.unpack') == nil
repeat 
data_sort = data_sort:gsub('%(%(', '(')
until data_sort:match('%(%(') == nil
repeat 
data_sort = data_sort:gsub('string.char', 'A_ASDROIDS')
until data_sort:match('string.char') == nil
repeat 
data_sort = data_sort:gsub('%A_ASDROIDS%(%{%\n', 'A_ASDROIDS({')
until data_sort:match('%A_ASDROIDS%(%{\n') == nil
repeat 
data_sort = data_sort:gsub('%\n%}%)', '})')
until data_sort:match('%\n%}%)') == nil
data_write(STR_Char_tmp, mode_write_only, data_sort)
STR_Char_str = '%A_ASDROIDS%(%{.-%}%)'
local File = io.open(STR_Char_tmp, mode_read_only)
assert(File)
repeat
local content = File:read(mode_read_line)
if content ~= nil then
if content:match(STR_Char_str) == nil then
data_write(STR_Char_out, mode_write_append, content)
end
STR_Char_result = ''
if content:match(STR_Char_str) ~= nil then
data = content:gsub(STR_Char_str, function (c)
if c:match('%{(.-)%}') then
c = c:match('%{(.-)%}')
c = load('return {' .. c .. '}')()
c = '"' .. DECODE(c) ..'"'
c = c:gsub('\n',[[\n]])
end
return c end)
STR_Char_result = data:gsub(STR_Char_str)
if STR_Char_result ~= '' then
data_write(STR_Char_out, mode_write_append, STR_Char_result)
end
end
end
until content == nil
gg.alert('Decrypted Completed Saved in :\n' .. STR_Char_out)
print('Decrypted Completed Saved in :\n' .. STR_Char_out)
return os.remove(STR_Char_tmp)
end

if g.file == nil then
gg.alert('Failed write to file. Checked:'..g.try)
else
g.file:close()
os.remove(g.out)
g.sel = gg.choice({
'Hook LOG',
'Hook LOAD',
})
if g.sel == nil then break end
if g.sel == 1 or g.sel == 2 then
if true then
local ggg = {}
for k, v in pairs(gg) do
ggg[k] = v
end
local sel = select
local typ = type
local str = tostring
local echo = print
local io_open = io.open
local tr = {}
local slen = string.len
local msg = ''
local rnd = g.last

if g.sel == 2 then
local load_cnt = 0
local fname = rnd..'.load.tar'

local min_size = tonumber(g.info[4])

local sfmt = string.format
local sbyte = string.byte
local ssub = string.sub

local tar_end = "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
local f = nil
local tar_put = function (content)
if f == nil then
f = io_open(fname, 'wb')
f:setvbuf('full', 8192)
end
if load_cnt ~= 0 then
f:seek('end', -1024)
end
local size = slen(content)
local checksum = 4684
local ch = function (str)
for i = 1, slen(str) do
checksum = checksum + sbyte(str, i)
end
return str
end
f:write("load_")
:write(ch(sfmt('%07d', load_cnt)))
:write(".lua\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x000000666\x000000000\x000002004\x00")
:write(ch(sfmt('%011o', size)))
:write("\x0000000000000\x00")
:write(sfmt('%06o', checksum))
:write("\x00 0\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00ustar00\x00root\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00sdcard_r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00")
:write(content)
local pad = size % 512
if pad > 0 then
f:write(ssub(tar_end, 1, 512 - pad))
end
f:write(tar_end)
f:flush()
--echo('Hooked load '..load_cnt..' with size of '..size..' bytes')
load_cnt = load_cnt + 1
end
for i, v in pairs({load=1, loadfile=0, dofile=0}) do
local orig = _G[i]
local hook = 1
local type = v
hook = function (...)
local arg = {...}
local content = arg[1]
if content ~= nil and type == 0 then
content = nil
local f = io_open(arg[1], "rb")
if f ~= nil then
content = f:read("*a")
f:close()
end
end
if content ~= nil then
local ret = nil
local total = 0
local file = fname..load_cnt..'.lua'
if type == 1 and typ(content) == 'function' then
local cache = ''
local func = function (...)
local ret = content(...)
if ret ~= nil then
if ret ~= '' then
cache = cache + ret
total = total + slen(ret)
end
else
if total ~= 0 and slen(content) >= min_size then
tar_put(cache)
end
end
return ret
end
ret = orig(func, sel(2, ...))
else
if content ~= '' and slen(content) >= min_size then
tar_put(content)
end
ret = orig(...)
end
return ret
end
return orig(...)
end
tr[hook] = orig
_G[i] = hook
end

msg = msg..'\n\nAll LOAD will be saved in tar : '..fname .. '\nIF DEC TOPGEO V9: IN SSTOOL\nMAIN-0: 195-xxx\nMAIN-1: UNTICK\nIF DEC TOPGEO lua B: IN SSTOOL\nMAIN-0: UNTICK\nMAIN-1: UNTICK'
end
if g.sel == 1 then
local file = rnd..'.log.lua'
local f = io_open(file, 'wb')
f:write("-- Hook started\n")
f:close()
local names = {
allocatePage = {'^PROT_', '0x%X'},
copyMemory = {'0x%X', '0x%X'},
dumpMemory = {'0x%X', '0x%X'},
gotoAddress = {'0x%X'},
setRanges = {'^REGION_'},
searchNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
refineNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
startFuzzy = {'^TYPE_', '0x%X', '0x%X'},
searchFuzzy = {nil, '^SIGN_FUZZY_', '^TYPE_', '0x%X', '0x%X'},
searchAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
refineAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
getResults = {nil, nil, '0x%X', '0x%X', nil, nil, '^TYPE_', nil, '^POINTER_'},
editAll = {nil, '^TYPE_'},
loadList = {nil, '^LOAD_'},
saveList = {nil, '^SAVE_'},
}
names.refineAddress = names.searchAddress
names.refineNumber = names.searchNumber
local rets = {
alert = 1,
prompt = 1,
choice = 1,
multiChoice = 1,
}
local smatch = string.match
local ssub = string.sub
local sformat = string.format
local toFlags = function (check, value)
local ret = ''
for k, v in pairs(ggg) do
if smatch(k, check) ~= nil and (value & v) == v then
if ret ~= '' then ret = ret..' | ' end
ret = ret..'gg.'..k
value = value & ~v
end
end
if ret == '' or value ~= 0 then
if ret ~= '' then ret = ret..' | ' end
ret = ret..value
end
return ret
end
for i, v in pairs(ggg) do
if typ(v) == 'function' and i ~= 'getFile' and i ~= 'getLine' and i ~= 'isVisible' then
local orig = v
local name = i
local hook = 1
hook = function (...)
local arg = {...}
local f = io_open(file, 'ab')
f:write('gg.'..name..'(')
for j, a in ipairs(arg) do
if j ~= 1 then f:write(', ') end
if typ(a) == 'string' then f:write('"') end
local b = a
if typ(a) == 'number' and names[name] ~= nil and names[name][j] ~= nil then
local check = names[name][j]
if ssub(check, 1, 1) ~= '^' then
if a == 0 or a == -1 then
b = a
else
b = sformat(check, a)
end
else
b = toFlags(check, a)
end
end
b = str(b)
f:write(b)
if typ(a) == 'string' then f:write('"') end
end
f:write(")")
if rets[name] ~= nil then
local ret = orig(...)
f:write(" --[ ")
f:write(str(ret))
f:write(" ]]\n")
f:close()
return ret
elseif name=="searchNumber" then
return nil
end
f:write("\n")
f:close()
local f = io_open(file, 'rb')
local data = f:read("*a")
 f:seek('set',1)
 f:flush()
str_clearR = 'gg%.clearResults%(%)\ngg%.clearResults%(%)'
str_setV = 'gg%.setVisible%(false%)\ngg%.setVisible%(false%)'
str_getR = '%)gg%.getResults%('
str_fixLine = '%)gg%.'

for i = 1, 1 do
if data:match(str_clearR) then
repeat
data = data:gsub(str_clearR, 'gg.clearResults()')
until data:match(str_clearR) == nil
end
if data:match(str_setV) then
repeat
data = data:gsub(str_setV, 'gg.setVisible(false)')
until data:match(str_setV) == nil
end
if data:match(str_fixLine) then
repeat
data = data:gsub(str_fixLine, ')\ngg.getResults(')
until data:match(str_fixLine) == nil
end
end

local f = io_open(file, 'wb')
f:write(data)
f:close()
return orig(...)
end
tr[hook] = orig
gg[i] = hook
end
end

msg = msg..'\n\nAll GG calls will be logged into file: '..file
end
ggg.prompt({'Just press ok:'}, {g.loaded}, {'file'})
echo('Hook started.'..msg..'\n')
ggg.alert('Hook started. Run script, input passwords and so on.'..msg)
msg = nil
if true then
local orig = string.dump
local hook = 1
hook = function (...)
local arg = {...}
if tr[arg[1]] ~= nil then
arg[1] = tr[arg[1]]
end
return orig(arg[1], sel(2, ...))
end
tr[hook] = orig
string.dump = hook
end
if true then
local orig = tostring

local rm = table.remove
local store = {}
local build_table = 1
build_table = function (src, dst)
local cnt = #store
store[src] = dst
for k, v in pairs(src) do
if tr[v] ~= nil then
dst[k] = tr[v]
else
if typ(v) == 'table' then
if store[v] ~= nil then
dst[k] = store[v]
else
local bt = {}
store[v] = bt
dst[k] = bt
build_table(v, bt)
end
else
dst[k] = v
end
end
end
if cnt == 0 then
while #store > 0 do
rm(store)
end
end
return dst
end

local hook = 1
hook = function (...)
local old = tostring
local arg = {...}
if tr[arg[1]] ~= nil then
arg[1] = tr[arg[1]]
else
if typ(arg[1]) == 'table' then
arg[1] = build_table(arg[1], {})
end
end
local ret = orig(arg[1], sel(2, ...))
tostring = old
return ret
end
tr[hook] = orig
tostring = hook
end
if true then
for k, v in pairs({'getupvalue', 'upvalueid'}) do
local orig = debug[v]
local hook = 1
hook = function (...)
local arg = {...}
if tr[arg[1]] ~= nil then
arg[1] = tr[arg[1]]
end
return orig(arg[1], sel(2, ...))
end
tr[hook] = orig
debug[v] = hook
end
end
if true then
local orig = debug.getinfo
local hook = 1
hook = function (...)
local arg = {...}
local arg1 = arg[1]
if arg1 ~= nil and tr[arg1] ~= nil then
arg1 = tr[arg1]
end
return orig(arg1, sel(2, ...))
end
tr[hook] = orig
debug.getinfo = hook
end
if false then
local orig = os.remove
local hook = 1
hook = function (...)
local arg = {...}
echo('os.remove:', arg)
return true
end
tr[hook] = orig
os.remove = hook
end
if false then
local orig = assert
local hook = 1
hook = function (...)
local arg = {...}
echo('assert:', arg)
return orig(...)
end
tr[hook] = orig
assert = hook
end
if false then
local orig = io.open
local hook = 1
hook = function (...)
local arg = {...}
echo('io.open:', arg)
return orig(...)
end
tr[hook] = orig
io.open = hook
end
end
local test = g.test
g = nil
return test()
end
end
end
end