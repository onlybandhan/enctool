gg.alert('اهلا بك عزيزي🤠🤟\n يرجى عدم نشر التشفير في قناتك \n دون ذكر المصدر❌\n 🤠تلجرام @XU_UQ🤠')
local g = {}
g.last = gg.getFile()
g.info = nil
for x = 0, 1, 0 do local _m = {} if _m.data ~= nil then _m.bidun = _m.data() _m.data = nil end _m = nil end
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
g.data = loadfile(g.config)
if g.data ~= nil then
 g.info = g.data()
 g.data = nil
end
for x = 0, 1, 0 do local _m = {} if _m.data ~= nil then _m.bidun = _m.data() _m.data = nil end _m = nil end
for i = 1, 0 do local mvp = {} if mvp.data ~= nil then mvp.sel = mvp.data() end mvp = nil mvp.mvp[Z] = nil mvp.mvp[X] = nil mvp.mvp[i] = nil end

if Data == nil then
 Data = {g.last, g.last:gsub('[^/]+$', '')}
end

local Data =gg.prompt({
"📂اختار السكربت📂",
"📂مسار الحفظ📂"
},Data,{
"file",
"path"
})
gg.saveVariable(Data, g.config)

local last = Data[1]
local out = Data[2] .. last:match('.*/(.*)')
local code = io.open(last,'r'):read("*a")
local dump = string.dump(load(code), true, true)
local buf = table.concat({dump:byte(1, -1)}, ',')


--اذا تريد اضافة اكواد ضيفهن بهذا الفراغ----




local code = "load(string.char(table.unpack({"..buf.."})))()"
local dump = string.dump(load(code),true)
io.open(out..".lua","w"):write(dump):close()

gg.alert("لقد نجح التشفير✔️\nالسكربت شغال 💯\n🤠 تليجرام T.me/XU_UQ🤠")