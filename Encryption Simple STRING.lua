-- Thanks to Tis
-- CREDITS - @AS_DROIDS
-- Join - ASDroidsofficial
-- Share with credits please


local g = {}
g.last = gg.getFile()
g.info = nil
g.config = gg.getFile():gsub('%lua$', '')..'cfg'
g.data = loadfile(g.config)
if g.data ~= nil then
	g.info = g.data()
	g.data = nil
end
if Data == nil then
	Data = {g.last, g.last:gsub('[^/]+$', '')}
end
local Data = gg.prompt({
"📁Select Script to compile", -- selection of the Script
"📦Select Position to drop it"-- selection of the path to save
} ,Data, {
"File",-- file recognise the selection
"path"-- path = saving location
})
if Data == nil then return end
gg.saveVariable(Data, g.config)--saves the variable ( for beginners to save the selections )

local last = Data[1]
local out = Data[2] .. last:match('.*/(.*)')
local code = io.open(last,'r'):read("*a")
local dump = string.dump(load(code), true, true)
local buf = table.concat({dump:byte(1, -1)}, ',')

--you can exchange it with yourname and u can also add some public blockers it's just a simple enc.
local code = "-----////---/sɪᴍᴘʟᴇ ᴇɴᴄʀʏᴘᴛ sᴛʀɪɴɢ ʙʏ ᴀsᴅʀᴏɪᴅs/---////-----\n\nload(string.char(table.unpack({"..buf.."})))()"
--used for code and for credits


local dump = string.dump(load(code),true, true)
io.open(out..".enc", "wb"):write(dump):close()
print("📂 File Encrypt String Successful \n  path:" .. out ..'.enc')


-- Thanks to Tis
-- CREDITS - @AS_DROIDS
-- Join - ASDroidsofficial
-- Share with credits please