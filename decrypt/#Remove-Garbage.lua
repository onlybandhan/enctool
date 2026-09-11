local g = {}
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. ".cfg"
g.data = loadfile(g.config)
if g.data ~= nil then
g.info = g.data()
g.data = nil
end
if g.info == nil then
g.info = {g.last, g.last:gsub('/[^/]+$', ''), nil}
end
while true do
g.info = gg.prompt({
'Select file:', 
'Select output:'
}, g.info, {
'file',
'path'
})
if g.info == nil then break end
gg.saveVariable(g.info, g.config)
g.last = g.info[1]
g.test, g.stm = loadfile(g.last)
g.loaded = g.last
if g.test == nil then
if g.stm == nill then g.stm = 'Unknown error' end
print(g.stm)
gg.alert('Sorry, the operation cannot be completed : '..g.last..'\n\n'..g.stm)
else
g.name = g.last:match('[^/]+$')
g.pathes = {g.info[2]:gsub('/?$', '')..'/'..g.name, g.last, '/sdcard/'..g.name, gg.getFile():gsub('[^/]+$', '')..g.name, gg.EXT_FILES_DIR..'/'..g.name}
g.file = nil
g.out = ''
g.try = ''
for i, v in ipairs(g.pathes) do
g.out = v..".fix.lua"
g.file = io.open(g.out, "w")
 if g.file ~= nil then
 g.last = v:gsub('%.lua$', '')
 break
end
g.try = g.try..' '..v
end
os.remove(g.out)

g.out = g.last..".𝑭𝒊𝒙.lua"
g.tmp = g.last..".tmp"
local notify = (function ()
local pos = 1
local last = 0
local clock = os.clock
local toast = gg.toast
local sub = string.sub
return function()
local cl = clock()
if cl - last < 2 then return end
last = cl
toast("⏳ Please wait..")
if pos < 4 then pos = pos + 1 else pos = 1 end
end
end)()
notify()
g.chunk = string.dump(g.test, true, true);
g.len = string.len(g.chunk)
g.chunk = load(g.chunk)
for i = 1, 10 do
local changed = false
notify()
g.res = gg.internal2(g.chunk, g.out)
if not g.res then
os.remove(g.tmp)
gg.alert('An error occurred while disassembling the script:\n\n'..g.res) 
os.exit()
end
notify()
local file = io.open(g.tmp, "w")
local lasm = io.open(g.out, 'r')
local last = ''
while true do
local buf = lasm:read(65536)
if not buf then
file:write(last)
break
end
buf = last..buf
local out, cnt = string.gsub(buf, "[^\n]*; garbage\n", ";%0")
if cnt > 0 then changed = true end
out, cnt = string.gsub(out, "[^\n]*JMP :goto_[^\n]*; %+0 ↓\n", ";%0")
if cnt > 0 then changed = true end
buf = nil

last = string.match(out, "[^\n]*$")
file:write(string.sub(out, 1, -1 - string.len(last)))
notify()
end
lasm:close()
file:close()
if not changed then
break
end
notify()
g.chunk = loadfile(g.tmp)
end
notify()
os.remove(g.tmp)
os.remove(g.tmp..".lua")
os.remove(g.out..".tmp.lua")
g.file = io.open(g.out, "w")
g.chunk = string.dump(g.chunk, true, true)
g.len2 = string.len(g.chunk)
g.file:write(g.chunk)
g.file:close()
g.numer = g.len - g.len2
gg.alert('▬▬▬▬▬▬▬▬▬▬▬▬▬\nRemoved : '..g.numer..'\n▬▬▬▬▬▬▬▬▬▬▬▬▬\n📥 sᴀvᴇ тo :\n▬▬▬▬▬▬▬▬▬▬▬▬▬\n' .. g.out .. '\n▬▬▬▬▬▬▬▬▬▬▬▬▬')
os.exit()
end
end