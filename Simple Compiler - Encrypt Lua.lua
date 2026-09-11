local g = {}
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
g.data = loadfile(g.config)
if g.data ~= nil then g.info = g.data() g.data = nil end
if g.info == nil then g.info = {g.last, g.last:gsub("/[^/]+$", "")} end
while true do
g.info = gg.prompt({
"📂File",
"📂path"
},g.info,{
"file",
"path"
})
if g.info == nil then
return
end
gg.saveVariable(g.info, g.config)
g.last = g.info[1]
if loadfile(g.last) == nil then
return gg.alert([[⚠️Script not Found! ⚠️]])
else
g.out = g.last:match("[^/]+$")
g.out = g.out:gsub(".lua", ".HU.tutor")
g.out = g.info[2] .. "/" .. g.out .. ".lua"
print("\n☑️Encrypt Done")
print("\n━━━━━━━━━━━━━━━━━━━━━━\n" .. g.out .. "\n━━━━━━━━━━━━━━━━━━━━━━")
info = {g.out}
end
local DATA = io.input(g.last):read('*a')
local dump = string.dump(load(DATA),true, true)
local HUclass = table.concat({dump:byte(1, -1)}, ',')


HUBlock1 = [[

]]

HUBlock2 = [[

]]

HUBlock3 = [[

]]

HUmain = "load(string.char(table.unpack({" .. HUclass .. "})))()"

HUbp = "gg.HUtoast = gg.HUtoast load = load loadfile = loadfile os.exit = os.exit gg.getPackageInstalled = gg.getPackageInstalled"
HUtoast = "gg.HUtoast(\"Enc Tutor by HU\")"
 
HUdump = HUBlock1 .. '\n' .. HUtoast .. '\n' .. HUbp .. '\n' .. HUBlock1 .. '\n' .. HUBlock2 .. '\n' .. HUBlock2 .. '\n' .. HUBlock3 .. '\n' .. HUmain

local dump = string.gsub(string.dump(load('  local TITTLE = [[🇮🇳 Encryption Tutorial by Hacks Unlimited 🇮🇳]]\nfunction HURep()\n'..HUdump..[[
end HURep()]]),true),"LuaR","LuaH",1)
io.open(g.out, "w"):write(dump):close()
gg.alert("━━━━━━━━━━━━━━━━━━━━━━\n📥 Encrypted 100% \n Savet To:\n━━━━━━━━━━━━━━━━━━━━━━\n" .. g.out .. "\n━━━━━━━━━━━━━━━━━━━━━━")
return 
end