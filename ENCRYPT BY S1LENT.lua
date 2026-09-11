print("➖➖➖➖➖➖➖➖➖\n🛡️ Encrypt Tool Help Lua GG 🛡️\n➖➖➖➖➖➖➖➖➖")
function exit()
  print("Exit Done")
  os.exit()
end
function T_G(A0_66)
    res = ""
    for _FORV_4_ in ipairs(A0_66) do
      res = res .. string.char(A0_66[_FORV_4_])
    end
    return res
 end
function Help()
jancok = gg.alert(os.date("🛡️ Encrypt Tool Help Lua 🛡️\n➖➖➖➖➖➖➖➖➖➖➖➖\n📆 Today : %A, %d Tháng %m %Y\n➖➖➖➖➖➖➖➖➖➖➖➖➖\n🔐 Encrypt Tool v4.0\n➖➖➖➖➖➖➖➖➖➖\n🚬 Encrypt Tool :\n🌍 Help Lua Gamegudian™\n➖➖➖➖➖➖➖➖➖➖\n⛔ Block Dec [ Load ]\n➖➖➖➖➖➖➖➖➖➖\n⛔ Block Dec [ Log ]\n➖➖➖➖➖➖➖➖➖➖\n⛔ Block Dec [ SSTool ]\n➖➖➖➖➖➖➖➖➖➖\n⛔ Block Dec [ Decompile.lua ]"), "🔐 Encrypt", "🔍 Thông Tin", "❎ Exit")

  if jancok == 1 then return end
  if jancok == 2 then gg.alert("🛡️ Encrypt Lua Tool [ V4.0 ] 🛡️\n\n🔍 Block Dec [ Load V1 ]\n\n🔍 Block Dec SSTool\n\n🔍 Block Dec [ Log New ]\n\n🔍 Block Dec [ Decompiler.lua ]\n", "🔐 Encrypt")
  end
  if jancok == 3 then os.exit()
  end
end

Help()
T0 = gg.getFile()
T0 = gg.getFile()
local g = {}
T1 = gg.getFile():match("(.*/).*")
g.last = gg.getFile()
g.sel = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. ".cfg"
g.data = loadfile(g.config)
if g.data ~= nil then
  g.sel = g.data()
  g.data = nil
end
if g.sel == nil then
  g.sel = {
    g.last,
    g.last:gsub("/[^/]+$", "")
  }
end
while true do
  g.info = gg.prompt({
    "🗂️ Chọn File Cần Encrypt",
    "📥 Chọn Nơi Lưu File Encrypt"
  }, g.sel, {"file", "path"})
  if g.sel == nil then
    print("➖➖➖➖➖➖➖➖➖\n✖ Script Was Canceled ✖\n➖➖➖➖➖➖➖➖➖")
    os.exit()
  end
  gg.saveVariable(g.sel, g.config)
  g.last = g.sel[1]
  g.test = loadfile(g.last)
  if g.test == nil then
    gg.alert("🚫 Please Fix Your Script Error!")
    os.exit()
  else
    g.name = g.last:match("[^/]+$")
    g.pathes = {
      g.info[2] .. "/" .. g.name,
      g.last,
      "/sdcard/" .. g.name,
      gg.getFile():gsub("[^/]+$", "") .. g.name,
      gg.EXT_FILES_DIR .. "/" .. g.name
    }
    g.file = nil
    g.out = ""
    g.try = ""
    for _FORV_7_, _FORV_8_ in ipairs(g.pathes) do
      named = string.gsub(_FORV_8_, ".lua", "", 1)
      os.remove(named .. ".Help.lua")
      g.out = named .. ".Help.lua"
      g.file = io.open(g.out, "w")
      if g.file ~= nil then
        g.last = _FORV_8_:gsub("%.lua$", "")
        break
      end
      g.try = g.try .. " " .. _FORV_8_
    end
    if g.file == nil then
      gg.alert("🚫 Your File Not Found Here: " .. g.try)
    else
      g.file:close()
      os.remove(g.out)
      g.files = io.open(g.info[1], "r")
      reals = g.files:read("*a")
      g.files:close()
      g.file = io.open(g.out, "w")
      g.file:write(reals)
      g.file:close()
      print("\n⏳ Encrypting...")
      print("\n✔️ File To Encrypt [ Done ] !!\n\n")
      info = {
        g.out
      }
      gg.toast("⏳ Please Wait...")
      gg.sleep(990)
      function Encrypt(A0_126)
        return A0_126:gsub(".", function(A0_127)
          return string.format("%02X", (string.byte(A0_127) + 13) % 256)
        end):gsub(" ", "+")
      end
      
      function encodes(A0_128, A1_129)
        return (A1_129:gsub("..", function(A0_130)
          return string.char((tonumber(A0_130, 16) + 256 - 13 - A0_128 + 255999744) % 256)
        end))
      end
      
      function EncHex(A0_131)
        return A0_131:gsub(".", function(A0_132)
          return string.format("%02X", (string.byte(A0_132) + 13 + 1999) % 256)
        end):gsub(" ", "+")
      end
      
      function DecHex(A0_133, A1_134)
        return (A1_134:gsub("..", function(A0_135)
          return string.char((tonumber(A0_135, 16) + 256 - 13 - A0_133 + 255999744) % 256)
        end))
      end
      
      file = io.open(g.out, "r")
      assert(file)
      data = file:read("*a")
      file:close()
      c = Encrypt(data)
      d = " \n--[==============================[\n\n\n🛡 Simple Encryption LuaG\n🔐 Encrypt Hex>Bin>Byte>Bin\n⛔ Blocks Unluac\n⛔ Blocks SSTool\n🚫 Sorry if this bad, i new in encryption\n\n--]==============================]\nfor x = 0, 1, 0 do local _m = {} if _m.data ~= nil then _m.bidun = _m.data() _m.data = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end _m = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end for x = 0, 1, 0 do local _m = {} if _m.data ~= nil then _m.bidun = _m.data() _m.data = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end _m = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end for x = 0, 1, 0 do local _m = {} if _m.data ~= nil then _m.bidun = _m.data() _m.data = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end _m = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end for x = 0, 1, 0 do local _m = {} if _m.data ~= nil then _m.bidun = _m.data() _m.data = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end _m = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end\nfor x = 0, 1, 0 do local _m = {} if _m.data ~= nil then _m.bidun = _m.data() _m.data = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end _m = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end for x = 0, 1, 0 do local _m = {} if _m.data ~= nil then _m.bidun = _m.data() _m.data = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end _m = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end \nfor i = 1, 0 do local sssss = {} sssss.sel = sssss.data() if sssss.data ~= nil then sssss.sel = sssss.data() end sssss = nil end\nfunction MM(code) for i = script, 0 do local sssss={}if sssss.data~=nil then sssss.sel=sssss.data()end sssss=nil end local data = '' for i = script, #code do data = data .. string.char(code[gg.clearResults]/math.random(1, 1100)) end return pcall(load(data)) end\nfunction TG() local NN = {} local N = {} N.N = {} N.N.NN = N.data() N.N.NNN = N.N.NN.data() N.NNN = NN.G() N.NNN = N.NNN:G() N.N[T] = N[G] end\nfor x =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] + nil + nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then  \t_ = _ (-nil * nil)() \t_ = nil end  if _  == nil then \t_ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local x = {} x[''] = x local t = (x)(x, x) t[1] = 1 end \n" .. "  \nlocal ZZZ = '🛡 Encrypted Tool Help Lua 🛡'\nprint(ZZZ.. \"\\n\")\ngg.toast(ZZZ) \n " .. [[

pcall(encodes('HelpLua'))
local data = encodes('HelpLua')
local data = DecHex('technano') 
local enc = load(data)
pcall(enc)
 ]]
      e = string.gsub(d, "HelpLua", c)
      file = io.open(g.out, "w")
      file:write(e)
      file:close()
      info = {
        g.out
      }
      out, test = g.out, loadfile(g.out)
      file = io.open(out, "w")
      file:write(string.dump(test, true, true))
      file:close()
      function T_H(A0_136)
        res = ""
        for _FORV_4_ in ipairs(A0_136) do
          res = res .. string.char(A0_136[_FORV_4_])
        end
        return res
      end
      
      T0 = gg.getFile()
      T0 = gg.getFile()
      T1 = gg.getFile():match("(.*/).*")
mathz = math.random(1, 200)
function TG(str)
	return str:gsub('.', function (c)
		return string.format('%02x', (string.byte(c) + mathz)%256)
	end):gsub(" $", "", 1)
end

function encodegg(A0_67)
	return 'gg[T_H("' .. TG(A0_67) .. '")]('
end
function encodeos(A0_68)
	return 'os[T_H("' .. TG(A0_68) .. '")]('
end
function encodestr(A0_69)
	return 'string[T_H("' .. TG(A0_69) .. '")]('
end
function enc(A0_70)
	return 'Executer({' .. table.concat({A0_70:byte(1, -1)}, ",") .. "})"
end
      
      function encodegg(A0_139)
        return 'gg[T_H("' .. TG(A0_139) .. '")]('
      end
      
      function encodeos(A0_140)
        return 'os[T_H("' .. TG(A0_140) .. '")]('
      end
      
      function encodestr(A0_141)
        return 'string[T_H("' .. TG(A0_141) .. '")]('
      end
      
      function enc(A0_142)
        return "Executer({" .. table.concat({
          A0_142:byte(1, -1)
        }, ",") .. "})"
      end
      
      gg.saveVariable(g.info, g.config)
      if not load((io.input(g.info[1]):read("*a"))) then
        print("⚠ ERROR\n\nFile Can Not Be Encrypted !")
        break
      else
        print()
        print()
      end
      if RNBLCK == true then
        RNBLCK = "-- If Rename Blocker Is Activated ⬇\nNAME = gg.getFile():match('[^/]+$')\n------------------------------------------------------\n"
      else
        RNBLCK = T_H({})
      end
      file = io.open(g.out, "r")
      Content = file:read("*a")
      file:close()
      file = io.open(g.out, "w")
      file:write(string.dump(load("\n--[==============================[\n\n\n🛡️ Encrypt Tool Help Lua Gamegudian™ 🛡️\n--------------------------------------------------------------------------\n🔥 Block Decrypt [ Load ]\n\n🔥 Block Decrypt [ Log ]\n\n🔥 Block Decrypt [ SSTool ]\n\n🔥 Block Dec [ Compile.lua ]\n\n--]==============================]\n\n\n\n\nTH = '🛡️ Encrypt Tool By Help GG™ 🛡️' -- 🔥 Sempl Encrypt Tool 9.1\n\nfunction script()\n\t\n\t------------------------------------------------------\n\t-- Bytes Executer Simple Formula\n\tfunction Executer(bytes) \n\t\tbyte = '' for i in ipairs(bytes) do \n\t\t\tbyte = byte ..string.char(bytes[i]) \n\t\tend return byte end\n\t------------------------------------------------------" .. RNBLCK .. "\n" .. "load(string.char(table.unpack(" .. ("{" .. table.concat({
        string.gsub(string.dump(load([[

function GCODE(code)
for i = script, 0 do local sssss={}if sssss.data~=nil then sssss.sel=sssss.data()end sssss=nil end local data = '' for i = script, #code do data = data .. string.char(code[gg.clearResults]/math.random(1, 1100)) end return pcall(load(data)) end

for x =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] + nil + nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end  if _  == nil then 	_ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local x = {} x[''] = x local t = (x)(x, x) t[1] = 1 end
for x =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] + nil + nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end  if _  == nil then 	_ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local x = {} x[''] = x local t = (x)(x, x) t[1] = 1 end for x =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] + nil + nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end  if _  == nil then 	_ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local x = {} x[''] = x local t = (x)(x, x) t[1] = 1 end for x =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] + nil + nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end  if _  == nil then 	_ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local x = {} x[''] = x local t = (x)(x, x) t[1] = 1 end
for x = 0, 1, 0 do local _m = {} if _m.data ~= nil then _m.bidun = _m.data() _m.data = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end _m = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end
for x = 0, 1, 0 do local _m = {} if _m.data ~= nil then _m.bidun = _m.data() _m.data = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end _m = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end for x = 0, 1, 0 do local _m = {} if _m.data ~= nil then _m.bidun = _m.data() _m.data = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end _m = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end
for x = 0, 1, 0 do local _m = {} if _m.data ~= nil then _m.bidun = _m.data() _m.data = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end _m = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end
for x = 0, 1, 0 do local _m = {} if _m.data ~= nil then _m.bidun = _m.data() _m.data = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end _m = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end]] .. ("\nlocal function T_H(Text)\nText = Text:gsub([[ ]],\"\")\nreturn (Text:gsub(\"..\",function (Text)\nreturn string.char((tonumber(Text,16)-" .. mathz .. [[
)%256)
end))
end
]]) .. io.input(g.info[1]):read("*a"):gsub("gg%.(%a+)%(", encodegg):gsub("os%.(%a+)%(", encodeos):gsub("string%.(%a+)%(", encodestr)), true), "LuaR.", "LuaHT", 1):byte(1, -1)
      }, ",") .. "}") .. ")))() end script()", ("  \nfor x = 0, 1, 0 do local _m = {} if _m.data ~= nil then _m.bidun = _m.data() _m.data = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end _m = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end\n--[==============================[\n\n\n🛡 Simple Encryption LuaG \n🔐 Encrypt Bytes Hex Bin v4.0\n⛔ Blocks Unluac\n⛔ Blocks SSTool\n🚫 Sorry if this bad, i new in encryption\n\n--]==============================]\nfor i = 1, 0 do local sssss = {} sssss.sel = sssss.data() if sssss.data ~= nil then sssss.sel = sssss.data() end sssss = nil end\nfunction BD(code) for i = script, 0 do local sssss={}if sssss.data~=nil then sssss.sel=sssss.data()end sssss=nil end local data = '' for i = script, #code do data = data .. string.char(code[gg.clearResults]/math.random(1, 1100)) end return pcall(load(data)) end\nfunction TG() local NN = {} local N = {} N.N = {} N.N.NN = N.data() N.N.NNN = N.N.NN.data() N.NNN = NN.G() N.NNN = N.NNN:G() N.N[T] = N[G] end\nfor x = 0, 1, 0 do local _m = {} if _m.data ~= nil then _m.bidun = _m.data() _m.data = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end _m = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end\nfor x = 0, 1, 0 do local _m = {} if _m.data ~= nil then _m.bidun = _m.data() _m.data = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end _m = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end\nfor x = 0, 1, 0 do local _m = {} if _m.data ~= nil then _m.bidun = _m.data() _m.data = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end _m = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end for x = 0, 1, 0 do local _m = {} if _m.data ~= nil then _m.bidun = _m.data() _m.data = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end _m = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end for x = 0, 1, 0 do local _m = {} if _m.data ~= nil then _m.bidun = _m.data() _m.data = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end _m = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end for x = 0, 1, 0 do local _m = {} if _m.data ~= nil then _m.bidun = _m.data() _m.data = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end _m = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end\nfor x =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] + nil + nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then  \t_ = _ (-nil * nil)() \t_ = nil end  if _  == nil then \t_ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local x = {} x[''] = x local t = (x)(x, x) t[1] = 1 end \nif not loadfile(gg.getFile()) then gg.string.char(97,108,101,114,116)(\"Stop Using Compiler!\") return end\nif gg.string.char(105,115,80,97,99,107,97,103,101,73,110,115,116,97,108,108,101,100)(\"com.sstool.only.sstool\") then return end \n " .. "\n" .. "local IME = \"868939036460608\"\n if IME == revo.getPhoneInfo().IMEI then\nelse\nlog = gg.string.char(105,115,80,97,99,107,97,103,101,73,110,115,116,97,108,108,101,100)(\"com.wtkc.gg\")\nlag = gg.string.char(105,115,80,97,99,107,97,103,101,73,110,115,116,97,108,108,101,100)(\"com.gxlkj.tl\")\nleg = gg.string.char(105,115,80,97,99,107,97,103,101,73,110,115,116,97,108,108,101,100)(\"io.neoterm\")\nlig = gg.string.char(105,115,80,97,99,107,97,103,101,73,110,115,116,97,108,108,101,100)(\"com.sstool.only.sstool\")\nif log == true or lag == true or leg == true or lig == true then\ngg.string.char(97,108,101,114,116)(\"🚫 Error Detected!! Please Uninstall GG Mod Log/Neoterm/SSTOOL First!!\")\nprint(\"🚫 Error Detected!! Please Uninstall GG Mod Log/Neoterm/SSTOOL First!!\")\nos.exit()\nend\nend\n  if _G[\"debug\"][\"getinfo\"](gg.alert).source == \"=[Java]\" then\n  else\ni = 1\ngg.string.char(97,108,101,114,116)(\"Auto Decompiler Detected !\\nOh No My GG Is Crashed!\", \"\")\ngg.string.char(115,101,116,86,105,115,105,98,108,101)(false)\nwhile true do\n  i = i + 1\n  gg.string.char(116,111,97,115,116)(\"Log Has Been Detected :P\")\n  file = io.open(\"/storage/emulated/0/Download/\" .. i, \"w\")\n  file:write(\"Hey Idiot ? This Script has Protected by Help Lua You want to steal my Code? hmm\")\n  file:close()\n  os.remove(\"/storage/emulated/0/Android/data/com.tencent.ig\")\n  gg.string.char(115,101,116,86,105,115,105,98,108,101)(false)\n  gg.string.char(97,108,101,114,116)(\"Auto Decompiler Detected !\\nOh No My GG Is Crashed!\", \"\")\n  gg.string.char(112,114,111,99,101,115,115,75,105,108,108)()\n  gg.string.char(115,101,116,86,105,115,105,98,108,101)(true)\nend\nreturn\n  end\n  save = {}\n  for _FORV_27_ = 1,  10000 do\ntable.insert(save, {\n  [\"address\"] = 0 + _FORV_27_,\n  [\"flags\"] = 12\n})\n  end\n  time = _G[\"os\"][\"clock\"]()\n  for _FORV_27_ = 1, 5 do\n_G[\"gg\"][\"addListItems\"](save)\n  end\n  if 2 <= _G[\"os\"][\"clock\"]() - time then\n_G[\"gg\"][\"removeListItems\"](save)\ni = 1\ngg.string.char(97,108,101,114,116)(\"Auto Decompiler Detected !\\nOh No My GG Is Crashed!\", \"\")\ngg.string.char(115,101,116,86,105,115,105,98,108,101)(false)\nwhile true do\n  i = i + 1\n  gg.string.char(116,111,97,115,116)(\"Log Has Been Detected :P\")\n  file = io.open(\"/storage/emulated/0/Download/\" .. i, \"w\")\n  file:write(\"Hey Idiot ? This Script has Protected by Help Lua You want to steal my Code? hmm\")\n  file:close()\n  gg.string.char(115,101,116,86,105,115,105,98,108,101)(false)\n  gg.string.char(97,108,101,114,116)(\"Auto Decompiler Detected !\\nOh No My GG Is Crashed!\", \"\")\n  gg.string.char(112,114,111,99,101,115,115,75,105,108,108)()\n  gg.string.char(115,101,116,86,105,115,105,98,108,101)(true)\nend\nreturn\n  end\n  _G[\"gg\"][\"removeListItems\"](save)\n  ") .. "\nfunction encodes(code) return (code:gsub('..', function (h) return string.char((tonumber(h,16)+256-13 + 999999*256)%256) end)) end\ngg.string.char(116,111,97,115,116)('⏳ Loading...') \n\npcall(load(string.char(table.unpack({" .. table.concat({Content:byte(1, -1)}, ",") .. "}))))"), true))
      file:close()
      file = io.open(g.out, "r")
      converter = file:read("*a")
      file:close()
      file = io.open(g.out, "w")
      file:write(string.gsub(converter, "LuaR", "LuaG", 1))
      file:close()
      gg.alert("➖➖➖➖➖➖➖➖➖➖\n🗂️ File To Encrypt Save :\n➖➖➖➖➖➖➖➖➖➖\n" .. g.out .. "\n➖➖➖➖➖➖➖➖➖➖\n🛡️ Encrypt Tool : Bin ➖ Hex ➖ Bytes")
      os.exit()
    end
  end
end

