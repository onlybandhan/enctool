local Note = gg.EXT_FILES_DIR .. "/" .. "Note.txt"
if io.open(Note, "r") ~= nil then
else
	Alert = gg.alert("═┳━🔸━━━━━━━━━━━━━━━🔸━━═\n\t🔹\t\t🛡️ Encryption Version 4.0 🛡\n═┻━🔸━━━━━━━━━━━━━━━🔸━━═\n\nFeatures :️\n\t🔹\tAdded Anti Lasm 1Gb +\n\t🔹\tBlock Sstool/TC (Auto Crash)\n\t🔹\tNew AntiLog/Hook\n\t🔹\tEncrypt All String With Key\n\t🔹\tWork In All GG Version\n\n🔖Tool by KonɀLeΙ͠ -- @MisterzKonzlet\n\n═━━🔸━━━━━━━━━━━━━━━🔸━━═", 
		"LANJUT",
		"",
		"JANGAN TAMPILKAN LAGI"
	)
	if Alert ~= 3 then
	else
		local w = io.open(Note, "w")
		w:write(tostring(Alert)) --3
		w:close()
	end
end

function savedata()
	data = ''
	source = gg.EXT_CACHE_DIR .. "/" .. "KonɀLeΙ͠.cfg"
	info = loadfile(source)
	if info ~= nil then
		data = info()
	else
		data = {gg.getFile(), gg.getFile():gsub("/[^/]+$", '')}
	end
	return data
end

local Enc = { } ; local Dec = { }

Enc.info = gg.prompt({
	"📎 Select file to encrypt :",
	"📁 Select writable path for output :",
	}, savedata(), {
	"file",
	"path",
})

if not Enc.info then
	print(os.date("%H:%M:%S %p ⌚️ %A, %d %B %Y\n\n✘ Canceled !"))
	return nil
end

pathes = {Enc.info[1],Enc.info[2].."/"..Enc.info[1]:match("[^/]+$"):gsub("%.lua$", '')..".KonɀLeΙ͠.lua",gg.EXT_FILES_DIR.."/".."KonɀLeΙ͠.tmp"}

function random_number(length)
	local random = ''
	local Number = {"1", "2", "3", "4", "5", "6", "7", "8", "9"}
	for i = 1, length do
		random = random..Number[math.random(1, #Number)]
	end
	return random
end

Enc.Key = {"10000","20000","30000","10100","20100","30100","210","20","120","10"}
Dec.Key = { }
Enc.Kea = { }
for i = 1, 1000 do;table.insert(Enc.Key,"10000");table.insert(Dec.Key,"10000");end

function Encode1(str, length, ...)
	res = ''
	arg = {str:gsub(".", function(m)return ("%02x"):format((m:byte() + Enc.Key[5] * (Enc.Key[1] - Enc.Key[9]) + length) % 256)end):byte(1, -1)}
	ind = 1
	while( ind < #arg + 1 )do
		arg[ind] = (arg[ind] + Enc.Key[1] * (Enc.Key[9] + Enc.Key[10] * ind) + length + ind) % 256
		ind = ind + 1
	end
	return res.."{ENC = {"..table.concat(arg, ",").."}}, "..length..''
end

function Encode2(str, length, ...)
	res = ''
	arg = {str:gsub(".", function(m)return ("%02x"):format((m:byte() + Enc.Key[4] * (Enc.Key[8] - Enc.Key[6]) + length) % 256)end):byte(1, -1)}
	ind = 1
	while( ind < #arg + 1 )do
		arg[ind] = (arg[ind] + Enc.Key[2] * Enc.Key[7] + (Enc.Key[8] * ind) + length + ind) % 256
		ind = ind + 1
	end
	return res.."{ENC = {"..table.concat(arg, ",").."}}, "..length..''
end

function Encode3(str, length, ...)
	res = ''
	arg = {str:gsub(".", function(m)return ("%02x"):format((m:byte() + Enc.Key[3] * (Enc.Key[6] + Enc.Key[9]) - length) % 256)end):byte(1, -1)}
	ind = 1
	while( ind < #arg + 1 )do
		arg[ind] = (arg[ind] + Enc.Key[3] * (Enc.Key[10] - Enc.Key[7] * ind) + length + ind) % 256
		ind = ind + 1
	end
	return res.."{ENC = {"..table.concat(arg, ",").."}}, "..length..''
end

function Encode4(str, length, ...)
	res = ''
	arg = {str:gsub(".", function(m)return ("%02x"):format((m:byte() + Enc.Key[2] * (Enc.Key[7] + Enc.Key[10]) - length) % 256)end):byte(1, -1)}
	ind = 1
	while( ind < #arg + 1 )do
		arg[ind] = (arg[ind] - Enc.Key[4] * (Enc.Key[9] + Enc.Key[8] - ind) + length + ind) % 256
		ind = ind + 1
	end
	return res.."{ENC = {"..table.concat(arg, ",").."}}, "..length..''
end

function Encode5(str, length, ...)
	res = ''
	arg = {str:gsub(".", function(m)return ("%02x"):format((m:byte() + Enc.Key[1] * (Enc.Key[9] + Enc.Key[10]) - length) % 256)end):byte(1, -1)}
	ind = 1
	while( ind < #arg + 1 )do
		arg[ind] = (arg[ind] - Enc.Key[5] * (Enc.Key[1] + Enc.Key[3] - ind) + length + ind) % 256
		ind = ind + 1
	end
	return res.."{ENC = {"..table.concat(arg, ",").."}}, "..length..''
end

function Encode6(str, length, ...)
	res = ''
	arg = {str:byte(1, -1)}
	ind = 1
	while( ind < #arg + 1 )do
		arg[ind] = (arg[ind] + Enc.Key[1] * (Enc.Key[4] + Enc.Key[9] - ind) - length * ind)%256
		ind = ind + 1
	end
	return res.."{ENC = {"..table.concat(arg, ",").."}}, "..length..''
end

function Encode7(str, length, ...)
	res = ''
	arg = {str:byte(1, -1)}
	ind = 1
	while( ind < #arg + 1 )do
		arg[ind] = (arg[ind] + Enc.Key[2] * (Enc.Key[5] + Enc.Key[10] - ind) - length * ind) % 256
		ind = ind + 1
	end
	return res.."{ENC = {"..table.concat(arg, ",").."}}, "..length..''
end

function Encode(text)
	filter = ''
	x = math.random(1, 5)
	text = text:gsub("\\n", "\n"):gsub("\\t", "\t")
	if x == 1 then
		filter = filter.."_G:Konzlet1("..Encode1(text, random_number(3), random_number(x))..")"
	elseif x == 2 then
		filter = filter.."_G:Konzlet2("..Encode2(text, random_number(3), random_number(x))..")"
	elseif x == 3 then
		filter = filter.."_G:Konzlet3("..Encode3(text, random_number(3), random_number(x))..")"
	elseif x == 4 then
		filter = filter.."_G:Konzlet4("..Encode4(text, random_number(3), random_number(x))..")"
	elseif x == 5 then
		filter = filter.."_G:Konzlet5("..Encode5(text, random_number(3), random_number(x))..")"
	end
	return filter
end

local Cryptable = {
	{'gg.getResultsCount', 'gg["getResultsCount"]'},
	{'gg.SIGN_INEQUAL', 'gg["SIGN_INEQUAL"]'},
	{'gg.multiChoice', 'gg["multiChoice"]'},
	{'gg.setSpeed', 'gg["setSpeed"]'},
	{'gg.getSpeed', 'gg["getSpeed"]'},
	{'gg.REGION_C_HEAP', 'gg["REGION_C_HEAP"]'},
	{'gg.bytes', 'gg["bytes"]'},
	{'gg.getFile', 'gg["getFile"]'},
	{'gg.require', 'gg["require"]'},
	{'gg.SIGN_LESS_OR_EQUAL', 'gg["SIGN_LESS_OR_EQUAL"]'},
	{'gg.TYPE_QWORD', 'gg["TYPE_QWORD"]'},
	{'gg.getValues', 'gg["getValues"]'},
	{'gg.setValues', 'gg["setValues"]'},
	{'gg.editAll', 'gg["editAll"]'},
	{'gg.SIGN_NOT_EQUAL', 'gg["SIGN_NOT_EQUAL"]'},
	{'gg.getListItems', 'gg["getListItems"]'},
	{'gg.loadResults', 'gg["loadResults"]'},
	{'gg.TYPE_XOR', 'gg["TYPE_XOR"]'},
	{'gg.getSelectedResults', 'gg["getSelectedResults"]'},
	{'gg.getTargetPackage', 'gg["getTargetPackage"]'},
	{'gg.internal3', 'gg["internal3"]'},
	{'gg.PROT_NONE', 'gg["PROT_NONE"]'},
	{'gg.startFuzzy', 'gg["startFuzzy"]'},
	{'gg.processKill', 'gg["processKill"]'},
	{'gg.alert', 'gg["alert"]'},
	{'gg.REGION_STACK', 'gg["REGION_STACK"]'},
	{'gg.CACHE_DIR', 'gg["CACHE_DIR"]'},
	{'gg.setRanges', 'gg["setRanges"]'},
	{'gg.getRanges', 'gg["getRanges"]'},
	{'gg.REGION_CODE_SYS', 'gg["REGION_CODE_SYS"]'},
	{'gg.getLine', 'gg["getLine"]'},
	{'gg.unrandomizer', 'gg["unrandomizer"]'},
	{'gg.getActiveTab', 'gg["getActiveTab"]'},
	{'gg.skipRestoreState', 'gg["skipRestoreState"]'},
	{'gg.PROT_WRITE', 'gg["PROT_WRITE"]'},
	{'gg.TYPE_BYTE', 'gg["TYPE_BYTE"]'},
	{'gg.REGION_C_DATA', 'gg["REGION_C_DATA"]'},
	{'gg.SIGN_GREATER_OR_EQUAL', 'gg["SIGN_GREATER_OR_EQUAL"]'},
	{'gg.FILES_DIR', 'gg["FILES_DIR"]'},
	{'gg.allocatePage', 'gg["allocatePage"]'},
	{'gg.FREEZE_IN_RANGE', 'gg["FREEZE_IN_RANGE"]'},
	{'gg.getValuesRange', 'gg["getValuesRange"]'},
	{'gg.PROT_READ', 'gg["PROT_READ"]'},
	{'gg.REGION_OTHER', 'gg["REGION_OTHER"]'},
	{'gg.REGION_VIDEO', 'gg["REGION_VIDEO"]'},
	{'gg.LOAD_VALUES', 'gg["LOAD_VALUES"]'},
	{'gg.internal1', 'gg["internal1"]'},
	{'gg.EXT_FILES_DIR', 'gg["EXT_FILES_DIR"]'},
	{'gg.REGION_BAD', 'gg["REGION_BAD"]'},
	{'gg.removeListItems', 'gg["removeListItems"]'},
	{'gg.getTargetInfo', 'gg["getTargetInfo"]'},
	{'gg.toast', 'gg["toast"]'},
	{'gg.processResume', 'gg["processResume"]'},
	{'gg.makeRequest', 'gg["makeRequest"]'},
	{'gg.LOAD_VALUES_FREEZE', 'gg["LOAD_VALUES_FREEZE"]'},
	{'gg.getLocale', 'gg["getLocale"]'},
	{'gg.getSelectedListItems', 'gg["getSelectedListItems"]'},
	{'gg.timeJump', 'gg["timeJump"]'},
	{'gg.processToggle', 'gg["processToggle"]'},
	{'gg.getResultCount', 'gg["getResultCount"]'},
	{'gg.FREEZE_MAY_DECREASE', 'gg["FREEZE_MAY_DECREASE"]'},
	{'gg.SIGN_FUZZY_EQUAL', 'gg["SIGN_FUZZY_EQUAL"]'},
	{'gg.processPause', 'gg["processPause"]'},
	{'gg.FREEZE_MAY_INCREASE', 'gg["FREEZE_MAY_INCREASE"]'},
	{'gg.getRangesList', 'gg["getRangesList"]'},
	{'gg.isProcessPaused', 'gg["isProcessPaused"]'},
	{'gg.getResults', 'gg["getResults"]'},
	{'gg.TAB_SEARCH', 'gg["TAB_SEARCH"]'},
	{'gg.copyText', 'gg["copyText"]'},
	{'gg.REGION_CODE_APP', 'gg["REGION_CODE_APP"]'},
	{'gg.POINTER_NO', 'gg["POINTER_NO"]'},
	{'gg.TAB_SAVED_LIST', 'gg["TAB_SAVED_LIST"]'},
	{'gg.searchFuzzy', 'gg["searchFuzzy"]'},
	{'gg.BUILD', 'gg["BUILD"]'},
	{'gg.internal2', 'gg["internal2"]'},
	{'gg.REGION_ASHMEM', 'gg["REGION_ASHMEM"]'},
	{'gg.TYPE_AUTO', 'gg["TYPE_AUTO"]'},
	{'gg.REGION_ANONYMOUS', 'gg["REGION_ANONYMOUS"]'},
	{'gg.clearResults','gg["clearResults"]'},
	{'gg.SAVE_AS_TEXT', 'gg["SAVE_AS_TEXT"]'},
	{'gg.removeResults', 'gg["removeResults"]'},
	{'gg.refineAddress', 'gg["refineAddress"]'},
	{'gg.refineNumber', 'gg["refineNumber"]'},
	{'gg.SIGN_LARGER', 'gg["SIGN_LARGER"]'},
	{'gg.TYPE_FLOAT', 'gg["TYPE_FLOAT"]'},
	{'gg.choice', 'gg["choice"]'},
	{'gg.SIGN_FUZZY_GREATER', 'gg["SIGN_FUZZY_GREATER"]'},
	{'gg.SIGN_EQUAL', 'gg["SIGN_EQUAL"]'},
	{'gg.numberFromLocale', 'gg["numberFromLocale"]'},
	{'gg.FREEZE_NORMAL', 'gg["FREEZE_NORMAL"]'},
	{'gg.LOAD_APPEND', 'gg["LOAD_APPEND"]'},
	{'gg.TYPE_WORD', 'gg["TYPE_WORD"]'},
	{'gg.POINTER_READ_ONLY', 'gg["POINTER_READ_ONLY"]'},
	{'gg.POINTER_WRITABLE', 'gg["POINTER_WRITABLE"]'},
	{'gg.REGION_JAVA_HEAP', 'gg["REGION_JAVA_HEAP"]'},
	{'gg.getSelectedElements', 'gg["getSelectedElements"]'},
	{'gg.showUiButton', 'gg["showUiButton"]'},
	{'gg.isVisible', 'gg["isVisible"]'},
	{'gg.gotoAddress', 'gg["gotoAddress"]'},
	{'gg.SIGN_FUZZY_LESS', 'gg["SIGN_FUZZY_LESS"]'},
	{'gg.getSelectedPackage', 'gg["getSelectedPackage"]'},
	{'gg.TAB_MEMORY_EDITOR', 'gg["TAB_MEMORY_EDITOR"]'},
	{'gg.REGION_C_BSS', 'gg["REGION_C_BSS"]'},
	{'gg.saveList', 'gg["saveList"]'},
	{'gg.addListItems', 'gg["addListItems"]'},
	{'gg.POINTER_EXECUTABLE', 'gg["POINTER_EXECUTABLE"]'},
	{'gg.prompt', 'gg["prompt"]'},
	{'gg.DUMP_SKIP_SYSTEM_LIBS', 'gg["DUMP_SKIP_SYSTEM_LIBS"]'},
	{'gg.setVisible', 'gg["setVisible"]'},
	{'gg.REGION_PPSSPP', 'gg["REGION_PPSSPP"]'},
	{'gg.REGION_JAVA', 'gg["REGION_JAVA"]'},
	{'gg.searchNumber', 'gg["searchNumber"]'},
	{'gg.POINTER_EXECUTABLE_WRITABLE', 'gg["POINTER_EXECUTABLE_WRITABLE"]'},
	{'gg.TYPE_DOUBLE', 'gg["TYPE_DOUBLE"]'},
	{'gg.PROT_EXEC', 'gg["PROT_EXEC"]'},
	{'gg.saveVariable', 'gg["saveVariable"]'},
	{'gg.TAB_SETTINGS', 'gg["TAB_SETTINGS"]'},
	{'gg.isPackageInstalled', 'gg["isPackageInstalled"]'},
	{'gg.numberToLocale', 'gg["numberToLocale"]'},
	{'gg.clearList', 'gg["clearList"]'},
	{'gg.copyMemory', 'gg["copyMemory"]'},
	{'gg.EXT_STORAGE', 'gg["EXT_STORAGE"]'},
	{'gg.SIGN_SMALLER', 'gg["SIGN_SMALLER"]'},
	{'gg.REGION_C_ALLOC', 'gg["REGION_C_ALLOC"]'},
	{'gg.hideUiButton', 'gg["hideUiButton"]'},
	{'gg.VERSION_INT', 'gg["VERSION_INT"]'},
	{'gg.sleep', 'gg["sleep"]'},
	{'gg.loadList', 'gg["loadList"]'},
	{'gg.SIGN_FUZZY_NOT_EQUAL', 'gg["SIGN_FUZZY_NOT_EQUAL"]'},
	{'gg.TYPE_DWORD', 'gg["TYPE_DWORD"]'},
	{'gg.VERSION', 'gg["VERSION"]'},
	{'gg.isClickedUiButton', 'gg["isClickedUiButton"]'},
	{'gg.dumpMemory', 'gg["dumpMemory"]'},
	{'gg.PACKAGE', 'gg["PACKAGE"]'},
	{'gg.EXT_CACHE_DIR', 'gg["EXT_CACHE_DIR"]'},
	{'gg.searchAddress', 'gg["searchAddress"]'},
	{'os.setlocale', 'os["setlocale"]'},
	{'os.clock', 'os["clock"]'},
	{'os.tmpname', 'os["tmpname"]'},
	{'os.getenv', 'os["getenv"]'},
	{'os.execute', 'os["execute"]'},
	{'os.difftime', 'os["difftime"]'},
	{'os.rename', 'os["rename"]'},
	{'os.exit', 'os["exit"]'},
	{'os.remove', 'os["remove"]'},
	{'os.time', 'os["time"]'},
	{'os.date', 'os["date"]'},
	{'io.popen', 'io["popen"]'},
	{'io.stdout', 'io["stdout"]'},
	{'io.lines', 'io["lines"]'},
	{'io.write', 'io["write"]'},
	{'io.tmpfile', 'io["tmpfile"]'},
	{'io.open', 'io["open"]'},
	{'io.stderr', 'io["stderr"]'},
	{'io.close', 'io["close"]'},
	{'io.input', 'io["input"]'},
	{'io.read', 'io["read"]'},
	{'io.output', 'io["output"]'},
	{'io.flush', 'io["flush"]'},
	{'io.type', 'io["type"]'},
	{'string.dump', 'string["dump"]'},
	{'string.reverse', 'string["reverse"]'},
	{'string.char', 'string["char"]'},
	{'string.unpack', 'string["unpack"]'},
	{'string.match', 'string["match"]'},
	{'string.gsub', 'string["gsub"]'},
	{'string.find', 'string["find"]'},
	{'string.pack', 'string["pack"]'},
	{'string.gmatch', 'string["gmatch"]'},
	{'string.format', 'string["format"]'},
	{'string.packsize', 'string["packsize"]'},
	{'string.lower', 'string["lower"]'},
	{'string.upper', 'string["upper"]'},
	{'string.rep', 'string["rep"]'},
	{'string.sub', 'string["sub"]'},
	{'string.byte', 'string["byte"]'},
	{'string.len', 'string["len"]'},
	{'table.concat', 'table["concat"]'},
	{'table.remove', 'table["remove"]'},
	{'table.sort', 'table["sort"]'},
	{'table.pack', 'table["pack"]'},
	{'table.move', 'table["move"]'},
	{'table.insert', 'table["insert"]'},
	{'table.unpack', 'table["unpack"]'},
	{'math.sqrt', 'math["sqrt"]'},
	{'math.atan2', 'math["atan2"]'},
	{'math.ceil', 'math["ceil"]'},
	{'math.tanh', 'math["tanh"]'},
	{'math.rad', 'math["rad"]'},
	{'math.pi', 'math["pi"]'},
	{'math.abs', 'math["abs"]'},
	{'math.sinh', 'math["sinh"]'},
	{'math.atan', 'math["atan"]'},
	{'math.fmod', 'math["fmod"]'},
	{'math.mininteger', 'math["mininteger"]'},
	{'math.random', 'math["random"]'},
	{'math.max', 'math["max"]'},
	{'math.randomseed', 'math["randomseed"]'},
	{'math.modf', 'math["modf"]'},
	{'math.deg', 'math["deg"]'},
	{'math.exp', 'math["exp"]'},
	{'math.ldexp', 'math["ldexp"]'},
	{'math.cosh', 'math["cosh"]'},
	{'math.ult', 'math["ult"]'},
	{'math.log', 'math["log"]'},
	{'math.tointeger', 'math["tointeger"]'},
	{'math.frexp', 'math["frexp"]'},
	{'math.huge', 'math["huge"]'},
	{'math.asin', 'math["asin"]'},
	{'math.maxinteger', 'math["maxinteger"]'},
	{'math.tan', 'math["tan"]'},
	{'math.floor', 'math["floor"]'},
	{'math.pow', 'math["pow"]'},
	{'math.acos', 'math["acos"]'},
	{'math.cos', 'math["cos"]'},
	{'math.type', 'math["type"]'},
	{'math.min', 'math["min"]'},
	{'math.sin', 'math["sin"]'},
	{'debug.getregistry', 'debug["getregistry"]'},
	{'debug.getuservalue', 'debug["getuservalue"]'},
	{'debug.setuservalue', 'debug["setuservalue"]'},
	{'debug.getupvalue', 'debug["getupvalue"]'},
	{'debug.getinfo', 'debug["getinfo"]'},
	{'debug.getlocal', 'debug["getlocal"]'},
	{'debug.setlocal', 'debug["setlocal"]'},
	{'debug.setupvalue', 'debug["setupvalue"]'},
	{'debug.traceback', 'debug["traceback"]'},
	{'debug.getmetatable', 'debug["getmetatable"]'},
	{'debug.setmetatable', 'debug["setmetatable"]'},
	{'debug.debug', 'debug["debug"]'},
	{'debug.upvaluejoin', 'debug["upvaluejoin"]'},
	{'debug.sethook', 'debug["sethook"]'},
	{'debug.gethook', 'debug["gethook"]'},
	{'debug.upvalueid', 'debug["upvalueid"]'},
	{'%"\\"(.-)%\\""', Encode},{'%"(.-)%"', Encode},{"%'\\'(.-)%\\''", Encode},{"%'(.-)%'", Encode},{"%[%[(.-)%]%]", Encode},{"%[==%[(.-)%]==%]",Encode}
}
lines = { }
for line in io.lines(pathes[1]) do
  lines[#lines + 1] = line
end

for index = 1, #Cryptable do
  for i, v in pairs(lines) do
    lines[i] = string.gsub(v, Cryptable[index][1], Cryptable[index][2])
  end
  if index == #Cryptable then
    for i in ipairs(Enc.Key) do;table.insert(Dec.Key, Enc.Key[i]);end
  end
end

data = 'local _G = _G\nlocal gg = gg\nlocal os = os\nlocal io = io\nlocal string = string\nlocal table = table\nlocal math = math\nlocal debug = debug\ngg["toast"]("🛡 ™Encryption by KonɀLeΙ͠ Version 4.0™ 🛡")\nlocal HBI = { }\nlocal Files = io["open"](gg["getFile"](), "r")\nlocal content = Files:read("*a")\nio["close"](Files)\nFiles = nil\nif tostring(_ENV.gg):find("@") then\nprint("HOOK DETECTED\n\nDon\'t hooking this script!")\nos["exit"]()\nelse\nfor i in tostring(_ENV):gmatch("function: @(.-):") do\nif i ~= gg["getFile"]() then\ngg["alert"]("HOOK DETECTED\n\nDon\'t hooking this script!")\nreturn os["exit"]()\nend\nend\nend\nlocal KonxletText = content\nfor k, v in pairs(gg) do\nif type(v) == "function" and k == "clearResults" then\nlocal Misterz = function(...)\ngg["isPackageInstalled"](KonxletText)\nreturn v(table["unpack"]({...}))\nend\ngg[k] = Misterz\nend\nend\nfunction KonzletV4()\nlocal Length = "0"\nlocal Ranges = "10000"\nlocal Text = string["rep"]("\\000", Ranges)\nfor xxmnb = 1, "1500" do\nHBI[xxmnb + Length] = "\'"..Text.."\'"\nend\nfor i = 1, 5 do\nio["open"](gg["getFile"]().."c"..tostring(string["dump"](loadfile(gg["getFile"]()), false, false)), "w")\nend\nfor k, v in pairs(HBI) do\ngg["isPackageInstalled"](v)\nend\nreturn gg["clearResults"]()\nend\n\nKonzletV4() ; KonzletV4()'

data = string.gsub(data, '%"(.-)%"', function(c)
	results = ''
	c = c:gsub("\\n", "\n")
	v = math.random(6,7)
	if v ~= 7 then
		results = results.."_G:Konslet1("..Encode6(c, random_number(3), random_number(v))..")"
	else
		results = results.."_G:Konslet2("..Encode7(c, random_number(3), random_number(v))..")"
	end
	return results
end)

for x, number in pairs(Dec.Key) do
	Dec.Key[x] = '"'..string.rep(
		"\\000",
		tonumber(number)
	)..'"'
end

Konzlet_Vs4="local Kea = {"..table.concat(Dec.Key, ",").."}"

Enc["Kea"][1]=Konzlet_Vs4.."\n\n"..[[Kea.Key = (function(Index); return #Kea[1000 + Index]; end)]]
--KonɀLeΙ͠ �
Enc["Kea"][2]=[[local Konzlet5 = (function(str, length, ...)
	local res = ''
	local arg = str.ENC
	local ind = 1
	while( ind < #arg + 1 )do
		arg[ind] = string.char((arg[ind] + Key(5) * (Key(1) + Key(3) - ind) - length - ind) % 256)
		ind = ind + 1
	end
	local str = { }
	for i in ipairs(arg) do
		str[#str + 1] = arg[i + i]
	end
	for i = 1, #arg do
		if arg[i + 1] ~= nil then; table.remove(arg, i + 1); end
	end
	for i, value in pairs(str)do
		str[i] = arg[i]..value
		res = res..string.char((tonumber(str[i], 16) - Key(1) * (Key(9) + Key(10)) + length) % 256)
	end
	return res
end)]]

Enc["Kea"][3]=[[local Konzlet3 = (function(str, length, ...)
	local res = ''
	local arg = str.ENC
	local ind = 1
	while( ind < #arg + 1 )do
		arg[ind] = string.char((arg[ind] - Key(3) * (Key(10) - Key(7) * ind) - length - ind) % 256)
		ind = ind + 1
	end
	local str = { }
	for i in ipairs(arg) do
		str[#str + 1] = arg[i + i]
	end
	for i = 1, #arg do
		if arg[i + 1] ~= nil then; table.remove(arg, i + 1); end
	end
	for i, value in pairs(str)do
		str[i] = arg[i]..value
		res = res..string.char((tonumber(str[i], 16) - Key(3) * (Key(6) + Key(9)) + length) % 256)
	end
	return res
end)]]

Enc["Kea"][4]=[[local Konzlet1 = (function(str, length, ...)
	local res = ''
	local arg = str.ENC
	local ind = 1
	while( ind < #arg + 1 )do
		arg[ind] = res..string.char((arg[ind] - Key(1) * (Key(9) + Key(10) * ind) - length - ind) % 256)
		ind = ind + 1
	end
	local str = { }
	for i in ipairs(arg) do
		str[#str + 1] = arg[i + i]
	end
	for i = 1, #arg do
		if arg[i + 1] ~= nil then; table.remove(arg, i + 1); end
	end
	for i, value in pairs(str)do
		str[i] = arg[i]..value
		res = res..string.char((tonumber(str[i], 16) - Key(5) * (Key(1) - Key(9)) - length) % 256)
	end
	return res
end)]]

Enc["Kea"][5]=[[local Konzlet2 = (function(str, length, ...)
	local res = ''
	local arg = str.ENC
	local ind = 1
	while( ind < #arg + 1 )do
		arg[ind] = string.char((arg[ind] - Key(2) * Key(7) - (Key(8) * ind) - length - ind) % 256)
		ind = ind + 1
	end
	local str = { }
	for i in ipairs(arg) do
		str[#str + 1] = arg[i + i]
	end
	for i = 1, #arg do
		if arg[i + 1] ~= nil then; table.remove(arg, i + 1); end
	end
	for i, value in pairs(str)do
		str[i] = arg[i]..value
		res = res..string.char((tonumber(str[i], 16) - Key(4) * (Key(8) - Key(6)) - length) % 256)
	end
	return res
end)]]

Enc["Kea"][6]=[[local Konzlet4 = (function(str, length, ...)
	local res = ''
	local arg = str.ENC
	local ind = 1
	while( ind < #arg + 1 )do
		arg[ind] = string.char((arg[ind] + Key(4) * (Key(9) + Key(8) - ind) - length - ind) % 256)
		ind = ind + 1
	end
	local str = { }
	for i in ipairs(arg) do
		str[#str + 1] = arg[i + i]
	end
	for i = 1, #arg do
		if arg[i + 1] ~= nil then; table.remove(arg, i + 1); end
	end
	for i, value in pairs(str)do
		str[i] = arg[i]..value
		res = res..string.char((tonumber(str[i], 16) - Key(2) * (Key(7) + Key(10)) + length) % 256)
	end
	return res
end)]]

Enc["Kea"][7]=[[local Konslet2 = (function(str, length, ...)
	local res = ''
	local arg = str.ENC
	local ind = 1
	while( ind < #arg + 1 )do
		res = res..string.char((arg[ind] - Key(2) * (Key(5) + Key(10) - ind) + length * ind) % 256)
		ind = ind + 1
	end
	return res
end)]]

Enc["Kea"][8]=[[local Konslet1 = (function(str, length, ...)
	local res = ''
	local arg = str.ENC
	local ind = 1
	while( ind < #arg + 1 )do
		res = res..string.char((arg[ind] - Key(1) * (Key(4) + Key(9) - ind) + length * ind) % 256)
		ind = ind + 1
	end
	return res
end)]]
--KonɀLeΙ͠ �
Enc["Kea"][9]=[[function _G:Konzlet1(a, b, ...)return Konzlet1(a, b, ...)end]]; Enc["Kea"][10]=[[function _G:Konzlet2(a, b, ...)return Konzlet2(a, b, ...)end]]; Enc["Kea"][11]=[[function _G:Konzlet3(a, b, ...)return Konzlet3(a, b, ...)end]]; Enc["Kea"][12]=[[function _G:Konzlet4(a, b, ...)return Konzlet4(a, b, ...)end]]; Enc["Kea"][13]=[[function _G:Konzlet5(a, b, ...)return Konzlet5(a, b, ...)end]]; Enc["Kea"][14]=[[function _G:Konslet1(a, b, ...)return Konslet1(a, b, ...)end]]; Enc["Kea"][15]=[[function _G:Konslet2(a, b, ...)return Konslet2(a, b, ...)end]]

for length, value in pairs(lines) do
	if length == 1 then; table.insert(Enc.Kea, data); end
	
	Enc.Kea[#Enc.Kea + 1] = value  
end

data = nil

function data_write(path, mode, data)
	local w = io.open(path, mode)
	w:write(data)
	w:close()
end

local Title = '_ENV["�"] = {"\\000\\000\\000\\000\\n\\n\\t[\\"🛡️ ™ Encrypt Tool by KonɀLeΙ͠ Version 4.0 ™ 🛡\\"]\\000\\000\\000\000", "\\n\\t\\t\\t\\t[\\" ☆ https://t.me/MisterzKonzlet ☆ \\"]\\n\\n"}\n\nlocal _Aa_ = (function()\nlocal _Xx_ = (function()\n'
data_write(pathes[3], "w", Title)

local Less = '"'..string.rep("\\000", 10000)..'"'
local Lien = { }
for i = 1, 790 do;table.insert(Lien, Less);end

local num = 1

while ( num < 9 ) do
	data_write(pathes[3], "a", Enc.Kea[num])
	for i = 1, 2000 do
		data_write(pathes[3], "a", " or "..Less..'')
		if i == 2000 then
			data_write(pathes[3], "a", '\nlocal Lien = {'..table.concat(Lien, ",")..'}\n')
			if num == 1 then
				data_write(pathes[3], "a", "\nlocal Key = Kea.Key\n")
			end
		end
	end
	if num == 8 then
		for u, code in pairs(Enc.Kea) do
			if u > 8 then
				data_write(pathes[3], "a", code.."\n")
			end
			if u == #Enc.Kea then
				data_write(pathes[3], "a", "end)")
				for i = 1, 2000 do
					data_write(pathes[3], "a", " or "..Less..'')
					if i == 2000 then
						data_write(pathes[3], "a", "\n_Xx_()\nend)\n_Aa_()\n")
					end
				end
			end
		end
	end
	num = num + 1
end

gg.saveVariable(Enc.info, source)
	local banner = os.date([[
═┳━🔸━━━━━━━━━━━━━━━━━━━🔸━━═
ঔৣ͜͡➳[100℅] Script is successfully Encrypted ❗
═┻━🔸━━━━━━━━━━━━━━━━━━━🔸━━═

      ♔🔹 %H:%M:%S %p ⌚️ %d/%H/%Y 🔹♔

                                      🔹

[📁] File Save To : Path_

                                      🔹

      ♔🔹 Telegram ⟮ @MisterzKonzlet ⟯ 🔹♔

═┳━🔸━━━━━━━━━━━━━━━━━━━🔸━━═
ঔৣ͜͡➳🛡️ Encryption by KonɀLeΙ͠ Version 4.0 🛡️
═┻━🔸━━━━━━━━━━━━━━━━━━━🔸━━═
]]):gsub("Path_", pathes[2]):gsub("storage/emulated/0", "sdcard")

if loadfile(pathes[3]) == nil then
	gg.alert("❌ SORRY ❌\n\nSomething when wrong !")
	print(os.date("%H:%M:%S %p ⌚️ %A, %d %B %Y\n\n✘ Failed !"))
	return os.remove(pathes[3])
else
	data_write(pathes[2], "w", string.dump(loadfile(pathes[3]), true, true))
	gg.toast("Success ✔️")
	gg.sleep("1700")
	gg.setVisible(true)
	print(banner)
	return os.remove(pathes[3])
end