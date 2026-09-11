--Dec By KRA_KΞN🛡️
--Telegram - @kra_ken_pro 

if gg.alert("🛡️ Encrypt Tool Hex 8.1 🛡️\n➖➖➖➖➖➖➖➖\n✏ Block Dec [ Load ]\n➖➖➖➖➖➖➖➖\n✏ Block Dec [ Log ]\n➖➖➖➖➖➖➖➖\n✏ Block Dec [ SSTool ]\n", "🔒 Encrypt", "❎ Exit") == 1 then
end
if gg.alert("🛡️ Encrypt Tool Hex 8.1 🛡️\n➖➖➖➖➖➖➖➖\n✏ Block Dec [ Load ]\n➖➖➖➖➖➖➖➖\n✏ Block Dec [ Log ]\n➖➖➖➖➖➖➖➖\n✏ Block Dec [ SSTool ]\n", "🔒 Encrypt", "❎ Exit") == 2 then
  print("➖➖➖➖➖➖\n🛡️ Encrypt Tool Help Lua GG 🛡️\n➖➖➖➖➖➖")
  os.exit()
end
gg.setRanges(0)
function pp()
  local L0_4
  L0_4 = {}
  L0_4.last = gg.getFile()
  L0_4.info = nil
  L0_4.config = gg.EXT_CACHE_DIR .. "/" .. L0_4.last:match("[^/]+$") .. ".cfg"
  L0_4.data = loadfile(L0_4.config)
  if L0_4.data ~= nil then
    L0_4.info = L0_4.data()
    L0_4.data = nil
  end
  if L0_4.info == nil then
    L0_4.info = {
      L0_4.last,
      L0_4.last:gsub("/[^/]+$", "")
    }
  end
  while true do
    L0_4.info = gg.prompt({
      "🗂️ cнoosᴇ scʀιᴘт тo ᴇɴcʀʏᴘт",
      "📥 sᴇʟᴇcт ouтᴘuт ғoʟᴅᴇʀ"
    }, L0_4.info, {"file", "path"})
    if L0_4.info == nil then
      print("➖➖➖➖➖➖➖➖➖➖ \n🛡️ Encrypt Tool Help Lua GG 🛡️ \n➖➖➖➖➖➖➖➖➖➖")
      print("❎ Exit [ Done ]")
      os.exit()
    end
    gg.saveVariable(L0_4.info, L0_4.config)
    L0_4.last = L0_4.info[1]
    L0_4.test = loadfile(L0_4.last)
    if L0_4.test == nil then
      gg.alert("⚠️ sᴄʀɪᴘᴛ ᴇʀʀᴏʀ sʜᴏᴜʟᴅ ʙᴇ ᴜsᴇᴅ \n\n:" .. L0_4.last)
    else
      L0_4.name = L0_4.last:match("[^/]+$")
      L0_4.pathes = {
        L0_4.info[2] .. "/" .. L0_4.name,
        L0_4.last,
        "/sdcard/" .. L0_4.name,
        gg.getFile():gsub("[^/]+$", "") .. L0_4.name,
        gg.EXT_FILES_DIR .. "/" .. L0_4.name
      }
      L0_4.file = nil
      L0_4.out = ""
      L0_4.try = ""
      for _FORV_4_, _FORV_5_ in ipairs(L0_4.pathes) do
        L0_4.out = _FORV_5_ .. os.date("_[%d-%m]") .. ".Help"
        L0_4.file = io.open(L0_4.out, "w")
        if L0_4.file ~= nil then
          L0_4.last = _FORV_5_:gsub("%.lua$", "")
          break
        end
        L0_4.try = L0_4.try .. " " .. _FORV_5_
      end
      if L0_4.file == nil then
        gg.alert("Không thể ghi vào tệp. \nĐã kiểm tra:\nFailed write to file. Checked:" .. L0_4.try)
      else
        L0_4.file:close()
        L0_4.file = io.open(L0_4.out, "w")
        L0_4.file:write(string.gsub(string.dump(L0_4.test, false), "LuaR", "LuaG", 1))
        L0_4.file:close()
        gg.setVisible(false)
        info = {
          L0_4.out
        }
        function escape(A0_5)
          A0_5 = string.gsub(A0_5, "([^0-9a-zA-Z !'()*._~-])", function(A0_6)
            local L2_7
            L2_7 = string
            L2_7 = L2_7.format
            return L2_7("%%%02X", string.byte(A0_6))
          end
          )
          A0_5 = string.gsub(A0_5, "\n", "\n\r")
          A0_5 = string.gsub(A0_5, "    ", "�\127")
          return A0_5
        end
        
        file = io.open(L0_4.out, "rb")
        assert(file)
        data = file:read("*a")
        file:close()
        c = escape(data)
        d = " \n\nfor i = 1,20 do load('local results = gg.getFile(1000)')() end \n gg.setRanges(16420) \n local results = gg.getFile() \n local results = gg.getResults(5000) \n gg.setValues(results) \n local results = gg.getFile()\n\nlocal g = {}\ng.last = gg.getFile()\ng.data = loadfile(g.last)\ng.cpp = g.data\nif g.cpp ~= nil then \ng.data = nil\n\nppb = g.last:match('[^/]+$')\nppi = 'lohhhggg'\npu = gg.getResults(5000)\nos.rename(''..g.last..'', ''..g.last:gsub('/[^/]+$', '')..'/'..ppi..'') \nprt = loadfile(''..g.last:gsub('/[^/]+$', '')..'/'..ppi..'')\nif prt ~= nil then  \nos.rename(''..g.last:gsub('/[^/]+$', '')..'/'..ppi..'', ''..g.last:gsub('/[^/]+$', '')..'/'..ppb..'') \ngg.alert('Stop Using Compiler !!')\nprint('⚠️ Please You Dec Full Script [ Done ]')\n\nprint('🔒 Encrypt : Help Lua GG ')\nos.exit()\nelseif prt == nil then \n\nprint('🛡️ Encrypt Tool Help Lua GG 🛡️')\n\n\nxida = nil\ng.config = gg.EXT_CACHE_DIR .. \"/\" .. gg.getFile():match(\"[^/]+$\") .. \".ten\"\ng.ten = loadfile(g.config)\n\nfunction decode(str)\n   str = string.gsub(str, \"�\127\", \"    \")\n   str = string.gsub(str, \"\\n\\r\", \"\\n\")\n   str = string.gsub(str, \"%%(%x%x)\", function(h) return string.char(tonumber(h,16)) end)\n   return str\nend " .. _UPVALUE1_ .. [[
 
load(decode("]]
        f = "\"))()end else end"
        file = io.open(L0_4.out, "w")
        file:write(d, c, f)
        file:close()
        info = {
          L0_4.out
        }
        test = loadfile(L0_4.out)
        file = io.open(L0_4.out, "w")
        file:write(string.gsub(string.dump(test, true), "LuaR", "LuaG", 1))
        file:close()
        gg.alert("➖➖➖➖➖➖\nғɪʟᴇ ᴇɴᴄʀʏᴘᴛ ᴛᴏ sᴀᴠᴇ :\n➖➖➖➖➖➖➖\n" .. L0_4.out)
        print("➖➖➖➖➖➖➖➖\n✏️ ᴇɴᴄʀʏᴘᴛ sᴜᴄᴄᴋᴇs !!\n➖➖➖➖➖➖➖➖")
        os.exit()
      end
    end
  end
end

while true do
  if gg.isVisible(true) then
    Qjctx = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if Qjctx == 1 then
    pp()
  end--K_K🛡️
end--K_K🛡️

--Dec By KRA_KΞN🛡️
--Telegram - @kra_ken_pro
