local g = {}
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
DATA = loadfile(g.config)
if DATA ~= nil then g.info = DATA() DATA = nil end
if g.info == nil then g.info = {g.last, g.last:gsub("/[^/]+$", "")} end


while true do
g.info = gg.prompt({
"Select File",
"Select Path",
},g.info,{
"file",
"path",
})


if g.info == nil then break end
gg.saveVariable(g.info,g.config)
DATA = io.input(g.info[1]):read("*a")
if not load(DATA) then os.exit() end


g.last = g.info[1]
g.out = g.last:match("[^/]+$")
g.out = g.out:gsub(".lua", ".enc")
g.out = g.info[2]..'/'..g.out..'.lua'

big = 'B = "MeXxMx"\n'
big = big:rep(60000)
DATA=[[
collectgarbage("collect")
local _ = "test"
local function __()
local function Beggg()
local B
 ]]..big..[[
end

]]..DATA..[[

end
local ___ = __()
]]
DATA = string.dump(load(DATA),true)
CUK = "MeXxMx"
BIG = string.char(0)
BIG = BIG:rep(10000)
DATA = DATA:gsub(string.char(4,7,0,0,0)..CUK,string.char(4,17,39,0,0)..BIG)
io.open(g.out,"w"):write(DATA):close()
break
end

