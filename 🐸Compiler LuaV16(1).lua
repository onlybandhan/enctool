local b = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+/'
function enc(data) 
return ((data:gsub('.', function(x) 
        local r,b='',x:byte()
        for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
        return r;
    end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c=0
        for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
        return b:sub(c+1,c+1)
    end)..({ '', '==', '=' })[#data%3+1])
end

  
Block1 = "if _G.debug.getinfo(gg.alert).source == \"=[Java]\" then\n  else\n    print(\"🐸\")\n    return\n  end\nt1 = os.time()\nfor i = 1, 10 do loadfile(\"/system/app/Chrome/Chrome.apk\") end\ngg.clearList()\nt2, a = os.time(), \"ERROR\\nRESTART SCRIPT\"\nif t2 < t1 then\ngg.alert(\"🐸No Load\")\nreturn\nend\nif t2 > t1 then \na = \"RESTART SCRIPT NO load\" \nend\nif os.difftime(t2, t1) > 2 then\nreturn gg.alert(a, \"\")\nend\nlog = {}\nfor i = 1, 40000 do\ntable.insert(log, {address = 127 + i, flags = 12, values = 127})\nend\nclock = os.clock()\ntime = os.time()\nfor i = 1, 6 do gg.addListItems(log) end\nif os.clock() - clock > 2 then\ngg.removeListItems(log)\ngg.alert(\"🐸No Log\")\nif os.time() - time > 2 then\ngg.removeListItems(log)\ngg.alert(\"🐸No Log\")\ngg.removeListItems(log)\nos.exit()\nend\nend\nlocal Text = \"\\n🐸No LoG\\n\"\nlocal Rep = 2000\nfor k,v in pairs(gg) do\nif type(v) == \"function\" and k ~= \"isPackageInstalled\" then\ndef = function(...)\ngg.isPackageInstalled(Text:rep(Rep))\nreturn v(table.unpack({...}))\nend\n_G[\"gg\"][k] = def\nend\nend\nlocal save = {}\nfor i = 1, 5000 do table.insert(save, {address = 136 + i,  flags = 4,  values = 136}) end\nlocal time = os.time()\nlocal clock = os.clock()\nfor i = 1, 6 do\ngg.addListItems(save)\nend\ngg.removeListItems(save)\nlocal time2, clock2, a = os.time(), os.clock(), \"🐸No Log\"\nif time2 < time then\ngg.alert(\"🐸No Log\")\nreturn\nend\nif time2 > time then\na = \"🐸 No Log\"\nend\nif os.difftime(time2, time) > 2 then\nreturn gg.alert(a, \"\")\nend\nif clock2 < clock then\ngg.alert(\"🐸No Log\")\nreturn\nend\nif clock2 > clock then\na = \"🐸No Log\"\nend\nif os.difftime(clock2, clock) > 2 then\nreturn gg.alert(a, \"\")\nend gg.clearList()"
Block2 = "for x=1,0 do;local j={}if j.x~=nil then j.x=j.x()end;end;"
Block8 = [[local b = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+/'
function _I(data)

    data = string.gsub(data, '[^'..b..'=]', '')

    return (data:gsub('.', function(x)
        if (x == '=') then return '' end

        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end

        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)

        if (#x ~= 8) then return '' end

        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end

            return string.char(c)
    end))
end

]]

Block7 = [[ll = pcall III = load ]]
Block9 = [[local II = ']]
Block10 = [[']]
Block11 = [[l = _I(II) ll(III(l)) gg.clearList()]]


Block12 = [[]]


Emergency = [[function convertStringToBytes(str) 	local bytes = {} 	local strLength = string.len(str) 	for i=1,strLength do 		table.insert(bytes, string.byte(str, i)) 	end 	return bytes end function convertBytesToString(bytes) 	local bytesLength = table.getn(bytes) 	local str = "" 	for i=1,bytesLength do 		str = str .. string.char(bytes[i]) 	end 	return str end function convertHexStringToBytes(str) 	local bytes = {} 	local strLength = string.len(str) 	for k=2,strLength,2 do 		local hexString = "0x" .. string.sub(str, (k - 1), k) 		table.insert(bytes, hex.to_dec(hexString)) 	end 	return bytes end function convertBytesToHexString(bytes) 	local str = "" 	local bytesLength = table.getn(bytes) 	for i=1,bytesLength do 		local hexString = string.sub(hex.to_hex(bytes[i]), 3) 		if string.len(hexString) == 1 then 			hexString = "0" .. hexString 		end 		str = str .. hexString 	end 	return str end function convertBytesToUIntArray(bytes, includeLength) 	local bytesLength = table.getn(bytes) 	local result = {} 	if includeLength then 		local n = bit.brshift(bytesLength, 2) + 1 		if bit.band(bytesLength, 3) ~= 0 then 			n = n + 1 		end 		result[n] = bytesLength; 	end 	for i=0,(bytesLength - 1) do 		local resultIndex = bit.brshift(i, 2) + 1 		if result[resultIndex] == nil then 			result[resultIndex] = 0 		end 		local resultValue = bit.blshift(bit.band(0x000000ff, bytes[i+1]), bit.blshift(bit.band(i, 3), 3)) 		result[resultIndex] = bit.bor(result[resultIndex], resultValue); 	end 	return result end function convertUIntArrayToBytes(data, includeLength) 	local dataLength = table.getn(data) 	local n = bit.blshift(dataLength, 2) 	local result = {} 	if includeLength then 		local m = data[dataLength] 		if m > n then 			return nil 		end 		n = m 	end 	for i=0,(n-1) do 		local value = bit.band(bit.brshift(data[bit.brshift(i, 2) + 1], (bit.blshift(bit.band(i, 3), 3))), 0xff) 		table.insert(result, value) 	end 	return result end function convertToUInt32(value) 	if value < 0 then 		local absValue = math.abs(value) 		local a = math.floor(absValue / 0xFFFFFFFF) 		local b = value + a * 0xFFFFFFFF 		local c = 0xFFFFFFFF + b + 1 		return c 	end 	return math.mod(value, 0xFFFFFFFF) - math.floor(value / 0xFFFFFFFF) end]]

Block13 = [[function unluac()]]

Block14 = [[unluac() end]]

msad=gg.prompt({"add script"},{[1]="/sdcard/Download"},{"file"})
[1]
dq=io.open(msad,"r"):read("*a")

code = enc(dq)

van = Emergency.."\n"..Block2 .. "\n".. Block1.."\n"..Block8.."\n"..Emergency.."\n"..Block7.."\n"..Emergency.."\n"..Block12.."\n"..Block9..code..Block10.."\n"..Block12.."\n"..Emergency.."\n"..Block13.."\n"..Emergency.."\n"..Block14.."\n"..Emergency.."\n"..Block11.."\n"..Emergency


dump = string.gsub(string.dump(load('local TITTLE = ">🐸<▄︻┻┳═一 LuaV16"\nfunction V()\n'..van..[[

end
V()]]), true),"LuaR.","Lua\t\t",1)
io.open(msad.."m","w"):write(dump):close()
print("script in"..msad.."m")
gg.isVisible(true)



