 local g = {}
Lua = ""
local last = gg.EXT_STORAGE .. "/Download"
 g.sel = gg.prompt({"🏷 File :","📝 String :","⛓️ TG v2 String Encryption (x000)"},{last}, {"file","text","checkbox"}) 
 if not g.sel then
 return
 end
 local open = io.open
 local file = open(g.sel[1], "rb")
 if not file then
 gg.alert("Please Select A File","")
 os.exit()
 end


 Lua = file:read("*a") file:close() if load(Lua) == nil then os.exit() end function RandomLetter(Num) str = "" do do for _FORV_4_ = 1, Num do X = math.random(65, 91) if X == 91 then str = str .. string.char(X + 4) else str = str .. string.char(X) end end end end return str end function RandomFloatNumber() load("X = ." .. math.random(1, 9))() return X end FuncBase = "function ReplaceMe(i) return math.floor(i - Replace2Me)end" Load, Char, Dec, GG, Table, Key, DecString, IsTable, CheckParm, FirstName, FirstLoad, FirstChar, FirstFunc, FirstKey = {}, {}, {}, {}, {}, {}, {}, false, "", "", "", "", "", "" Numb = 1 repeat



if g.sel[2]  == "" then  g.sel[2] = "ZYT" end if g.sel[2]  == " " then  g.sel[2] = "ZYT" end if g.sel[2]  == "  " then  g.sel[2] = "ZYT" end if g.sel[2]  == "   " then  g.sel[2] = "ZYT" end if g.sel[2]  == "    " then  g.sel[2] = "ZYT" end if g.sel[2]  == "     " then  g.sel[2] = "ZYT" end if g.sel[2]  == "      " then  g.sel[2] = "ZYT" end if g.sel[2]  == "       " then  g.sel[2] = "ZYT" end if g.sel[2]  == "        " then  g.sel[2] = "ZYT" end if g.sel[2]  == "         " then  g.sel[2] = "ZYT" end if g.sel[2]  == "          " then g.sel[2] = "ZYT" end



if g.sel[3] == true then
 g.sel[2] = "x000_x000_x000_x000_x000_x000_x000_x000_x000_x000_x000_x000_x000_x000_x000_"
 end
 
  FirstLoad = "ZillionYT" FirstChar = "Encode" FirstName = "v2"
  table.insert(GG,"_".. g.sel[2]) table.insert(Char,"_".. g.sel[2] .."_") Dec[Numb] = (g.sel[2])
  FirstKey = "1"
  Key[Numb] = "0"
  table.insert(Load,"Zillion_YT")
  

  
FirstFunc = string.gsub(string.gsub(FuncBase, "ReplaceMe", FirstName), "Replace2Me", tostring(FirstKey)) DecString[Numb] = string.gsub(string.gsub(FuncBase, "ReplaceMe", Dec[Numb]), "Replace2Me", tostring(Key[Numb])) Numb = Numb + 1 until #Load == 2 function GetEncoded(Object, IsLoad) if IsLoad ~= nil then local Bytes = gg.bytes(Object) local Responsed = {} do do for _FORV_7_ = 1, #Bytes do local Floater = RandomFloatNumber() local KeyCode = tonumber(Bytes[_FORV_7_]) table.insert(Responsed, FirstName .. "(" .. tostring(KeyCode + FirstKey) .. ")") end end end return FirstLoad .. "(" .. FirstChar .. "(" .. table.concat(Responsed, ",") .. "))()" end if type(Object) == "string" then local float = RandomFloatNumber() local ObjectBytes = gg.bytes(Object) local Response = {} do do for _FORV_8_ = 2, #ObjectBytes - 1 do KeyNumber = math.random(1, 2) table.insert(Response, Dec[KeyNumber] .. "(" .. tostring(ObjectBytes[_FORV_8_] + Key[KeyNumber]) .. ")") end end end return Char[math.random(1, 2)] .. "(" .. table.concat(Response, ",") .. ")" end if type(Object) == "number" then local floater = math.random(300, 500) local KeyNum = math.random(1, 2) return "math.floor(" .. Dec[KeyNum] .. "(" .. tostring(Object + Key[KeyNum] - floater) .. "+ " .. tostring(floater) .. "))" end if type(Object) == "table" then Object[1] = Object[1]:gsub("{", "") Object[#Object] = Object[#Object]:gsub("}", "") local TableResponse = {} do do for _FORV_6_ = 1, #Object do table.insert(TableResponse, GetEncoded(Object[_FORV_6_])) end end end return "{" .. table.concat(TableResponse, ",") .. "}" end end  do do for _FORV_3_, _FORV_4_ in pairs(gg) do if Lua:find(_FORV_3_) ~= nil and type(_FORV_4_) == "number" then Lua = Lua:gsub("gg." .. _FORV_3_, _FORV_4_) end end end end Lua = Lua:gsub("gg.-%)", function(func) do do for _FORV_4_ in func:gmatch("%(.-(.-)%)") do _FORV_4_ = _FORV_4_ .. "," ParmsDone = "" do for _FORV_8_ in _FORV_4_:gmatch("(.-),") do CheckParm = _FORV_8_ if IsTable then if _FORV_8_:byte(_FORV_8_:len()) == 125 then table.insert(Table, _FORV_8_) CheckParm = math.random(3234, 37373) IsTable = false ParmsDone = ParmsDone .. "," .. GetEncoded(Table) Table = {} else CheckParm = math.random(3234, 37373) table.insert(Table, _FORV_8_) end end if _FORV_8_:byte(1) == 123 then if _FORV_8_:byte(1) == 123 and _FORV_8_:byte(_FORV_8_:len()) == 125 then Table = {} table.insert(Table, _FORV_8_) CheckParm = math.random(3234, 37373) ParmsDone = ParmsDone .. "," .. GetEncoded(Table) else Table = {} IsTable = true table.insert(Table, _FORV_8_) CheckParm = math.random(3234, 37373) end end if IsTable == false then if type(tonumber(_FORV_8_)) == "number" then CheckParm = math.random(3234, 37373) ParmsDone = ParmsDone .. "," .. GetEncoded(tonumber(_FORV_8_)) end if _FORV_8_:byte(1) == 34 and _FORV_8_:byte(_FORV_8_:len()) == 34 or _FORV_8_:byte(1) == 39 and _FORV_8_:byte(_FORV_8_:len()) == 39 then CheckParm = math.random(3234, 37373) ParmsDone = ParmsDone .. "," .. GetEncoded(_FORV_8_) end end if CheckParm == _FORV_8_ then ParmsDone = ParmsDone .. "," .. _FORV_8_ end end end end end end do do for _FORV_4_ in func:gmatch("gg%.(.-)%(") do FuncDone = GG[math.random(1, 2)] .. "[" .. GetEncoded("'" .. _FORV_4_ .. "'") .. "](" .. ParmsDone:gsub(",", "", 1) .. ")" end end end return FuncDone end )
  
  
LoaderFunctions = FirstLoad .. " = load "
LoaderFunctions = LoaderFunctions .. FirstChar .. " = string.char "
LoaderFunctions = LoaderFunctions .. FirstLoad .. "(" .. FirstChar .. "(" .. table.concat(gg.bytes(FirstFunc), ",") .. "))() " do do for _FORV_3_ = 1, #Load do
LoaderFunctions = LoaderFunctions .. GetEncoded(Load[_FORV_3_] .. "= load", true) .. " "
LoaderFunctions = LoaderFunctions .. GetEncoded(Char[_FORV_3_] .. "= string.char", true) .. " "
LoaderFunctions = LoaderFunctions .. GetEncoded(GG[_FORV_3_] .. "= gg", true) .. " "
LoaderFunctions = LoaderFunctions .. GetEncoded(DecString[_FORV_3_], true) .. " " end end end
Script = LoaderFunctions .. Lua
file = io.open(g.sel[1] .. ".乙ㄚㄒᴇɴᴄ𝐒.lua", "wb")
file:write(Script)
file:close()