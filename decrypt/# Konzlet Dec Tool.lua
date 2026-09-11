--*****************************************************************************************************************************************************************
--Code writen by : KonɀLeΙ͠
--Telegram : @Konzlet
--*****************************************************************************************************************************************************************
local g = { }; local konzlet = {["next"] = _G["next"]}; for k, v in konzlet["\110\101\120\116"], gg, nil do	konzlet[k] = v or (function(...)return v(...)end) end

repeat
	local Alert = konzlet.alert("─────────────────────────\n   [\"💠 KonɀLeΙ͠ v5.0 (Decompiler) 💠\"]\n                                💠\n            [\"• https://t.me/Konzlet •\"]\n─────────────────────────", "🅂🅃🄰🅁🅃", "", "🄴🅇🄸🅃");
	if Alert == 3 then
		os.exit()
		break
	end
until Alert == 1

while true do
	g.main = konzlet.prompt((function(_______)
				prompts = { }
				_______[1] = "🇲🇨 sᴇʟᴇᴄᴛ sᴄʀɪᴘᴛ: "
				_______[2] = "❦ ᴅᴇᴄʀʏᴘᴛ KonɀLeΙ͠ v5.0"
				_______[3] = "❦ ᴅᴇᴄʀʏᴘᴛ sᴇᴀ v2.0"
				_______[4] = "❦ ᴅᴇᴄʀʏᴘᴛ sᴇʟɢɢ ᴠ3.3"
				_______[5] = "❦ ᴅᴇᴄʀʏᴘᴛ ʟᴜᴀ ᴇɴᴄ v1.4"
				for i = 1, 5 do
					prompts[#prompts + 1] = _______[i]
				end
				return prompts
			end)(g), (function()
				local data = '';
				local source = konzlet.EXT_CACHE_DIR .. "/" .. "KonɀLeΙ͠.cfg";
				local info = loadfile(source);
				if info ~= nil then
					data = info()
				else
					data = {
						[1] = konzlet.getFile(),
						[2] = nil,
						[3] = nil,
						[4] = nil,
						[5] = nil,
					}
				end
				return data
			end)(), (function(_______)
				types = { }
				_______[ 6] = "file"
				_______[ 7] = "checkbox"
				_______[ 8] = "checkbox"
				_______[ 9] = "checkbox"
				_______[10] = "checkbox"
				for i = 6, 10 do
					types[#types + 1] = _______[i]
				end
				return types
			end)(g))

	if not g.main or g.main == nil then
		os.exit()
		break
	else
		convertLuaKonzlet = function(code)
			local res  = "";
			local sstr = { };
			local title = "LuaKonɀLeΙ͠ 🇮🇩 ™ | ";
			local chunk = {
				{"\x00", "丽"},
				{"\x01", "丸"},
				{"\x02", "乁"},
				{"\x03", "你"},
				{"\x04", "侮"},
				{"\x05", "侻"},
				{"\x06", "倂"},
				{"\x07", "偺"},
				{"\x08", "備"},
				{"\x09", "僧"},
				{"\x0b", "㒞"},
				{"\x0c", "㔕"},
				{"\x0d", "勉"},
				{"\x0e", "吆"},
				{"\x0f", "吸"},
				{"\x10", "🈀"},
				{"\x11", "𑜸"},
				{"\x12", "𑜳"},
				{"\x13", "𐧆"},
				{"\x14", "𐦔"},
				{"\x15", "𐦱"},
				{"\x16", "﷽"},
				{"\x17", "﷼"},
				{"\x18", "ﷻ"},
				{"\x19", "ﷺ"},
				{"\x1a", "ﷹ"},
				{"\x1b", "ﷸ"},
				{"\x1c", "ﷰ"},
				{"\x1d", "ﷱ"},
				{"\x1e", "ﷲ"},
				{"\x1f", "ﷳ"}
			};
			konzlet.internal2(load(code), path.temporary)
			lines = { }; local n = 1;
			
			for data_line in io.lines(path.temporary) do
				if n > 654 and n < 915 then
					lines[#lines + 1] = data_line
				end
				n = n + 1
			end
			for key, value in konzlet.next, lines, nil do
				if value:match("LOADK v%d+ \".-\"") and lines[key + 2]:match("LOADK v%d+ %d+") then
					local hex = "";
					local y = lines[key + 0]:match("LOADK v%d+ (\".-\")");
					local z = lines[key + 2]:match("LOADK v%d+ (%d+)");
					y = load("return " .. y .. "")()
					z = tonumber(z)
					for u in y:gmatch("侻(%d+)") do
						local x; x=u - z % 256
						if x then
							x=string.char(x)
						end
						hex=hex .. x
					end
					sstr[#sstr + 1] = load("return '" .. hex .. "'")()
				end
			end
			
			res = string.gsub(code, sstr[1] .. "LuaR(.-)" .. title .. "", table.concat(sstr))
			
			for i in ipairs(chunk) do
				local x=chunk[i][1];
				local y=chunk[i][2];
				if x and y then
					res = string.gsub(res, y, x)
				end
			end
			return res
		end
		-- *
		getData = function(s, n, booleans)
			local f = nil; local data = {
				[1] = "data = [=====["..tostring(s).."]=====]\nif data:match(\"KONZLET%({.-}%, %d+%)\") ~= nil then\n\tdata = data:gsub(\"KONZLET%({.-}%, %d+%)\", function(c)\n\t\tc = load(\"return \" .. c .. \"\")()\n\t\tif c:match('\"') then\n\t\t\tc = c:gsub('\"', '\\\\\"')\n\t\tend\n\t\tc = c:gsub(\"\\n\", \"\\\\n\"):gsub(\"\\t\", \"\\\\t\")\n\t\treturn c\n\tend)\nend\n\nif data:match(\"KONZLET%(\\\".-\\\"%, %d+%)\") ~= nil then\n\tdata = data:gsub(\"KONZLET%(\\\".-\\\"%, %d+%)\", function(c)\n\t\tc = load(\"return \" .. c .. \"\")()\n\t\tif c:match('\"') then\n\t\t\tc = c:gsub('\"', '\\\\\"')\n\t\tend\n\t\tc = c:gsub(\"\\n\", \"\\\\n\"):gsub(\"\\t\", \"\\\\t\")\n\t\treturn c\n\tend)\nend \n\ndata = data:gsub(\"KONSLET%[\\\"KonɀLeΙ͠\\\"%]%[%d+%]\", function(c)\n\tc = load(\"return \" .. c .. \"\")()\n\tc = '\"' .. c .. '\"'\n\treturn c\nend)\nlocal _load = load(data)\nif not _load then\n\tgg.alert(\"Sorry, Something went wrong ❗\")\n\tos.exit()\nend\ndata = string.dump(_load, true, true)\nlocal w = io.open(\""..path.output.."\", \"wb\")\nw:write(data)\nw:close()\nw = nil",
				[2] = "data = [=====["..tostring(s).."]=====]\ndata = data:gsub(\"KONZLET%(.-%)\", function(c)\n\tc = load(\"return \"..c..\"\")()\n\tif c:match('\"') then\n\t\tc = c:gsub('\"', '\\\\\"')\n\tend\n\tc = c:gsub(\"\\n\", \"\\\\n\"):gsub(\"\\t\", \"\\\\t\")\n\treturn c\nend)\n\nlocal _load = load(data)\nif not _load then\n\tgg.alert(\"Sorry, Something went wrong ❗\")\n\tos.exit()\nend\ndata = string.dump(_load, true, true)\nlocal w = io.open(\""..path.output.."\", \"wb\")\nw:write(data)\nw:close()\nw = nil",
				[3] = "data = [=====["..tostring(s).."]=====]\ndata = data:gsub(\"KONZLET%({.-}%, %d+%)\", function(c)\n\tc = load(\"return \"..c..\"\")()\n\tif c:match('\"') then\n\t\tc = c:gsub('\"', '\\\\\"')\n\tend\n\tc = c:gsub(\"\\n\", \"\\\\n\"):gsub(\"\\t\", \"\\\\t\")\n\treturn c\nend)\n\nlocal _load = load(data)\nif not _load then\n\tgg.alert(\"Sorry, Something went wrong ❗\")\n\tos.exit()\nend\ndata = string.dump(_load, true, true)\nlocal w = io.open(\""..path.output.."\", \"wb\")\nw:write(data)\nw:close()\nw = nil\nlocal x1 = \""..path.execute.."\"\nlocal x2 = x1:match(\"/.+/\")\nlocal x3 = x1:match(\"/.+/\"):sub(0, -2) .. \"KonɀLeΙ͠/\"\nlocal x4 = x1:match(\"[^/]+$\")\nos.rename(x2, x3)\nos.remove(x3..x4)\nos.rename(x3, x2)",		
				[4] = "data = [=====["..tostring(s).."]=====]\nloadfile(\""..path.loader.."\")()\n\nfor key, value in pairs(_ENV) do\n\tif type(key) == \"string\" and type(value) == \"string\" and #key == 10 then\n\t\tif _ENV[value] ~= nil and type(_ENV[value]) == \"string\" then\n\t\t\tvalue = _ENV[value]\n\t\tend\n\t\tdata = data:gsub(key, '\"' .. value:gsub(\"%%\", \"%%%%\"):gsub(\"\\n\", \"\\\\n\"):gsub(\"\\t\", \"\\\\t\"):gsub(\"\\\"\", \"\\\\\\\"\")  .. '\"')\n\tend\nend\n\nfor key, value in next, {\"load%(string.dump%(function%(.-%).-%)%)%(%)\", \"load%(_ENV%[load%(\\\"return \\\\\\\"r_____j\\\\\\\"\\\"%)%(%)%]%[\\\"dump\\\"%]%(function%(.-%).-%)%)%(%)\", \"load%(\\\"return \\\\\\\".-\\\\\\\"\\\"%)%(%)\"}, nil do\n\tdata = data:gsub(value, function(c)\n\t\tc = load(\"return \" .. c .. \"\")()\n\t\tc = c:gsub(\"\\\"\", \"\\\\\\\"\")\n\t\tc = '\"' .. c .. '\"'\n\t\treturn c\n\tend)\nend\n\nfor key, value in next, {\n\t\"tonumber%(%d+%) < tonumber%(%d+%)\",\n\t\"tonumber%(%-%d+%) < tonumber%(%d+%)\",\n\t\"tonumber%(%d+%) < tonumber%(%-%d+%)\",\n\t\"tonumber%(%-%d+%) < tonumber%(%-%d+%)\",\n\t\"tonumber%(%d+%) > tonumber%(%d+%)\",\n\t\"tonumber%(%-%d+%) > tonumber%(%d+%)\",\n\t\"tonumber%(%d+%) > tonumber%(%-%d+%)\",\n\t\"tonumber%(%-%d+%) > tonumber%(%-%d+%)\"}, nil do\n\tdata = data:gsub(value, function(c)\n\t\tc = load(\"return \" .. c .. \"\")()\n\t\tc = tostring(c)\n\t\treturn c\n\tend)\nend\n\nfor key, value in next, {{gg, \"gg\"}, {os, \"os\"}, {io, \"io\"}, {string, \"string\"}, {table, \"table\"}, {math, \"math\"}, {debug, \"debug\"}}, nil do\n\tfor k, v in pairs(value[1]) do\n\t\tdata = data:gsub(\"_ENV%[\\\"r_____%l\\\"%]%[\\\"\" .. k .. \"\\\"%]\", value[2] .. \".\" .. k .. '')\n\tend\nend\n\nfor key, value in next, {{\"_____%[36%]\", \"tonumber\"}, {\"__c__l__e__a__r__%(%)\", \"gg.clearResults()\"}, {\"die%(%)\", \"os.exit()\"}, {\"KONZLET = \\\"PRO\\\"\", \"--KonɀLeΙ͠\"}}, nil do\n\tdo\n\t\tdata = data:gsub(value[1], value[2])\n\tend\nend\n\ndata = data:gsub(\"_____%[37%]%(function%(.-%).-{%s+%((.-)%)%s+}.-end.-%)\", function(c)\n\treturn c\nend)\n\ndata = data:gsub(\"tonumber%(\\\"%d+\\\"%)\", function(c)\n\tc = load(\"return \" .. c .. \"\")()\n\treturn c\nend)\n\ndata = data:gsub(\"tonumber%(\\\"%-%d+\\\"%)\", function(c)\n\tc = load(\"return \" .. c .. \"\")()\n\n\treturn c\nend)\n\nlocal w = io.open(\""..path.output:gsub("[^/]+$", "").."[KonZlet]"..path.output:match("[^/]+$").."\", \"wb\")\nw:write(data)\nw:close()\nw = nil",
				[5] = (function()lines={ }for line in io.lines(path.temporary) do if line:match("; garbage") then elseif line:match("\"_\"") then elseif line:match("\"_Y_\"") then else lines[#lines+1]=line end end for key, value in pairs(lines) do if value:match("CLOSURE v%d+ F0$") then lines[key]=""end if value:match("%.%l* F0 ;") then for u=key,#lines do if not lines[u]:match("%.%l* ; F0$") then lines[u]=""else lines[u]=""break end end end if value:match("%.%l* F1 ;") then local j=lines[key+12]:match(":goto_%d+")if j~=nil then for u=key+12,#lines do if not lines[u]:match(j.."$") then lines[u]=""else lines[u]=""break end end end end if value:match("FORLOOP v%d+ :goto_%d+.-variable") then for u=key,key+3 do lines[u]=""end end if value:match("GOTO%[%d+%]") then for u=key,key+3 do lines[u]=""end end if value:match("CLOSURE v%d+ F%d+") and (lines[key+2]:match("TEST v%d+ %d") or lines[key+3]:match("TEST v%d+ %d")) then lines[key+0]=lines[key+0]:gsub("CLOSURE.-$",function(c)c=c:match("v%d+")c="LOADK "..c.." \"KonɀLeΙ͠\""return c end)end if value:match("%.%l* F%d+ ;") and lines[key+7]:match("%.%l* ; F%d+$") then for u=key,key+7 do lines[u]=""end end end return table.concat(lines,"\n")end),
			};
			if booleans == true then
				f = data[n]
			end
			if booleans == false then
				f = data[n]()
			end
			return f
		end
		----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		--❦ ᴅᴇᴄʀʏᴘᴛ ʟᴜᴀ ᴇɴᴄ v1.4
		----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		konzlet["E"] = function(...)
			local data = {...};
			local res = "";
			local ret = "";
			local xyz = true;
			konzlet.internal2(load(box[data[2]]), path.temporary)
			-- s
			lines1 = { }
			lines2 = { }
			for data_line in io.lines( path.temporary ) do
				if data_line:match("; garbage") then
				elseif data_line:match("\\x00") then
				else			
					lines1[#lines1+1]=data_line
					lines2[#lines2+1]=data_line
				end
			end
			-- 1
			for key, value in konzlet.next, lines1, nil do
				if value:match("%.%l* F1 ;") then
					for u = key + 10, #lines1 do
						if not lines1[u]:match("LOADK v%d+ \"__c__l__e__a__r__\"") then
							lines1[u] = ""
						else
							junk = lines1[u + 2]:match("F%d+")
							for v = u, #lines1 do
								if not lines1[v]:match("SETTABUP u0 v%d+ v%d+") then
									lines1[v] = ""
								else
									lines1[v] = ""
									break
								end
							end
							break
						end
					end
				end
				if value:match("%.%l* F2 ;") then
					for u = key, #lines1 do
						if not lines1[u]:match("%.%l* ; "..junk.."$") then
							lines1[u] = ""
						else
							lines1[u] = ""
							break
						end
					end
					lines1[key - 2] = "SETTABUP u0 \"KONZLET\" \"PRO\"\n\n" .. lines1[key - 2]
				end
				if hdf and value:match("%.%l* F%d+ ;") then
					local x = value:match("F%d+");
					for indexs, values in pairs(hdf) do
						if values == x then
							table.remove(hdf, indexs)
							for u = key + 10, #lines1 do
								if lines1[u]:match("RETURN $") then
									do
										lines1[key + 9] = "\nNEWTABLE v0 0 0\n"
										lines1[u   + 0] = "SETLIST v0..v1 1\n\n" .. lines1[u]
										break
									end
									break
								end
							end
							break
						end
					end
				end
				if value:match("LOADK v%d+ \"SearchWrite\"") and
					lines1[key + 2]:match("CLOSURE v%d+ F%d+") and
					lines1[key + 4]:match("SETTABUP u%d+ v%d+ v%d+") then
					for u = key, key +  4 do
						lines1[u] = ""
					end
				end
				if value:match("SETTABUP u%d+ \"SearchWrite\" v%d+") and
					lines1[key - 2]:match("CLOSURE v%d+ F%d+") then
					for u = key, key -2, -1 do
						lines1[u] = ""
					end
				end
				if value:match("LOADK v%d+ \"fxs\"") and
					lines1[key + 2]:match("CLOSURE v%d+ F%d+") and
					lines1[key + 4]:match("SETTABUP u%d+ v%d+ v%d+") then
					for u = key, key +  4 do
						lines1[u] = ""
					end
				end
				if value:match("SETTABUP u%d+ \"fxs\" v%d+") and
					lines1[key - 2]:match("CLOSURE v%d+ F%d+") then
					for u = key, key -2, -1 do
						lines1[u] = ""
					end
				end
				if value:match("LOADK v%d+ \"setvalue\"") and
					lines1[key + 2]:match("CLOSURE v%d+ F%d+") and
					lines1[key + 4]:match("SETTABUP u%d+ v%d+ v%d+") then
					for u = key, key +  4 do
						lines1[u] = ""
					end
				end
				if value:match("SETTABUP u%d+ \"setvalue\" v%d+") and
					lines1[key - 2]:match("CLOSURE v%d+ F%d+") then
					for u = key, key -2, -1 do
						lines1[u] = ""
					end
				end
				if value:match("LOADNIL v%d+..v%d+") and
					lines1[key + 2]:match("TEST v%d+ 0") and
					lines1[key + 4]:match("JMP :goto_%d+  ; %+0 ↓") and
					lines1[key + 6]:match(":goto_%d+$") then
					for u = key, key +  4 do
						lines1[u] = ""
					end
				end
				if value:match("GETTABUP v%d+ u%d+ \"tonumber\"") and
					lines1[key +  2]:match("LOADK v%d+.-%d$") and
					lines1[key +  4]:match("CALL v%d+..v%d+ v%d+..v%d+") and
					lines1[key +  6]:match("GETTABUP v%d+ u%d+ \"tonumber\"") and
					lines1[key +  8]:match("LOADK v%d+.-%d$") and
					lines1[key + 10]:match("CALL v%d+..v%d+ v%d+..v%d+") and
					lines1[key + 12]:match("LT 0 v%d+ v%d+") and
					lines1[key + 14]:match("JMP :goto_%d+  ; %+0 ↓") and
					lines1[key + 16]:match(":goto_%d+$") then
					for u = key, key + 14 do
						lines1[u] = ""
					end
				end
				if value:match("LOADK v%d+ 1") and
					lines1[key +  2]:match("LOADK v%d+ 0") and
					lines1[key +  4]:match("LOADK v%d+ 1") and
					lines1[key +  6]:match("; %.local v%d+ \"%(for index%)\"") and
					lines1[key +  7]:match("; %.local v%d+ \"%(for limit%)\"") and
					lines1[key +  8]:match("; %.local v%d+ \"%(for step%)\"") and
					lines1[key +  9]:match("; %.local v%d+ \"%(for iterator%)\"") and
					lines1[key + 10]:match("FORPREP v%d+ :goto_%d+  ; %+%d+ ↓") then
					local x = lines1[key + 10]:match(":goto_(%d+)");
					local y = nil;
					for u = key, #lines1,  1 do
						if lines1[u]:match(":goto_"..x.."$") then
							y = u + 6
						end
						if y and u == y then
							break
						end
						lines1[u] = ""
					end
				end
				if value:match("GETTABUP v%d+ u0 \"_____\"") and (lines1[key + 2]:match("LOADK v%d+ 37$") or lines1[key + 2]:match("GETTABLE v%d+ v%d+ 37$")) then
					local x = value:match("v%d+");
					local y = x:match("%d+");
					local z = "1"
					hdf = hdf or { }
					for u = key, #lines1,  1 do
						if lines1[u]:match("CALL " .. x .. "..v" .. y + z .. "") then
							do
								hdf[#hdf + 1] = lines1[u - 2]:match("F%d+")
								break
							end
							break
						end
					end
				end
			end
			-- 2
			for key, value in konzlet.next, lines2, nil do
				if value:match("LOADK v%d+ \"__c__l__e__a__r__\"") and
					lines2[key + 2]:match("CLOSURE v%d+ F%d+") and
					lines2[key + 4]:match("SETTABUP u0 v%d+ v%d+") then
					junk = lines2[key + 2]:match("F%d+")
					for u = key, #lines2 do
						if not (lines2[u]:match("RETURN ") and lines2[u + 2]:match("%.%l* F2 ;")) then
							lines2[u] = ""
						else
							break
						end
					end
				end
				if value:match("LOADNIL v%d+..v%d+") and
					lines2[key + 2]:match("TEST v%d+ 0") and
					lines2[key + 4]:match("JMP :goto_%d+  ; %+0 ↓") and
					lines2[key + 6]:match(":goto_%d+$") then
					for u = key, key +  4 do
						lines2[u] = ""
					end
				end
				if value:match("GETTABUP v%d+ u%d+ \"tonumber\"") and
					lines2[key +  2]:match("LOADK v%d+.-%d$") and
					lines2[key +  4]:match("CALL v%d+..v%d+ v%d+..v%d+") and
					lines2[key +  6]:match("GETTABUP v%d+ u%d+ \"tonumber\"") and
					lines2[key +  8]:match("LOADK v%d+.-%d$") and
					lines2[key + 10]:match("CALL v%d+..v%d+ v%d+..v%d+") and
					lines2[key + 12]:match("LT 0 v%d+ v%d+") and
					lines2[key + 14]:match("JMP :goto_%d+  ; %+0 ↓") and
					lines2[key + 16]:match(":goto_%d+$") then
					for u = key, key + 14 do
						lines2[u] = ""
					end
				end
				if value:match("LOADK v%d+ 1") and
					lines2[key +  2]:match("LOADK v%d+ 0") and
					lines2[key +  4]:match("LOADK v%d+ 1") and
					lines2[key +  6]:match("; %.local v%d+ \"%(for index%)\"") and
					lines2[key +  7]:match("; %.local v%d+ \"%(for limit%)\"") and
					lines2[key +  8]:match("; %.local v%d+ \"%(for step%)\"") and
					lines2[key +  9]:match("; %.local v%d+ \"%(for iterator%)\"") and
					lines2[key + 10]:match("FORPREP v%d+ :goto_%d+  ; %+%d+ ↓") then
					local x = lines2[key + 10]:match(":goto_(%d+)");
					local y = nil;
					for u = key, #lines2,  1 do
						if lines2[u]:match(":goto_"..x.."$") then
							y = u + 6
						end
						if y and u == y then
							break
						end
						lines2[u] = ""
					end
				end
				if xyz == true and value:match("\"_G\"") then
					for u = key, 1, -1 do
						if lines2[u]:match("\"pairs\"") then
							for v = u, #lines2 do
								if not lines2[v]:match("\"r_____g\"") then
									lines2[v] = ""
								else
									xyz = false
									break
								end
							end
							break
						end
					end
				end
				if value:match("%.%l* ".. junk.. " ;") then
					for u = key, #lines2 do
						if not lines2[u]:match("%.%l* ; F1$") then
							lines2[u] = ""
						else
							break
						end
					end
					break
				end
			end
			-- d
			local SData = {path.loader, string.dump(load(table.concat(lines2, "\n")), true, true), path.output, string.dump(load(table.concat(lines1, "\n")), true, true)}
			
			for key, value in konzlet.next, SData, nil do
				if key % 2 ~= 0 then
					local w = io.open(SData[key], "wb");
					w:write(SData[key + 1])
					w:close()
					w = nil
				end
			end
			os.remove(path.temporary)
			konzlet.setVisible(false)
			konzlet.toast("✔️")
			konzlet.sleep(2000)			
			repeat local Alert = konzlet.alert("𒆜 Please run SS Tool and decompile this script:\n\n📂: " .. path.output .. "") until Alert == 1
			konzlet.sleep(2000)
			while true do
				local content = nil;
				local f = io.open(path.output:gsub("[^/]+$", "") .. "[KonZlet]" .. path.output:match("[^/]+$"), "rb")
				if f ~= nil then
					content = f:read("*a")
					f:close()
					f = nil
					konzlet.setVisible(false)
					konzlet.toast("⏳ Waiting... !")
					konzlet.sleep(1000)
				end
				if content and content:match("KONZLET = \"PRO\"\nend\n") then
					konzlet.sleep(0100)
					konzlet.toast("✔️")
					konzlet.sleep(2000)
					konzlet.setVisible(true)
					res = "local "..getData(content, 4, true)
					junk = nil
					load(res)()
					break
				end
			end
			os.remove( path.loader )  ;  os.remove( path.output )
			konzlet.setVisible(false)
			konzlet.toast("𒆜 𝙎𝙘𝙧𝙞𝙥𝙩 𝙄𝙨 𝙎𝙪𝙘𝙘𝙚𝙨𝙨𝙛𝙪𝙡𝙡𝙮 𝘿𝙚𝙘𝙧𝙮𝙥𝙩𝙚𝙙 ✔️")
			konzlet.sleep(2000)
			konzlet.toast("𒆜 𝙎𝙘𝙧𝙞𝙥𝙩 𝙎𝙖𝙫𝙚 𝙏𝙤:\n\n📂: "..path.output.."")
			konzlet.sleep(4000)
			konzlet.setVisible(true)
			print("═════════ •『 ✳️ 』• ═════════\n✳️   ᴅᴇᴄʀʏᴘᴛɪᴏɴ ᴡᴀs sᴜᴄᴄᴇssғᴜʟʟ   ✳️\n═════════ •『 ✳️ 』• ═════════\n\n           Copyright © 2021 KonɀLeΙ͠\n                 All Rights Reserved\n────────────────────────")
			return 
		end




		----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		--❦ ᴅᴇᴄʀʏᴘᴛ sᴇʟɢɢ ᴠ3.3
		----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		konzlet["D"] = function(...)
			local data = {...};
			local res = "";
			local ret = "";
			konzlet.internal2(load(box[data[2]]), path.temporary)
			-- s
			lines1 = { }
			lines2 = { }
			for data_line in io.lines( path.temporary ) do
				lines1[#lines1 + 1] = data_line
				lines2[#lines2 + 1] = data_line
			end
			-- 1
			for key, value in konzlet.next, lines1, nil do
				if value:match("%.%l* F7 ;") then
					for u = key - 1, 2, -1 do
						lines1[u] = ""
					end
					if lines1[key + 8]:match("%.upval u0 nil ; u0") then
						local x = key + 8;
						local y = 1;
						lines1[x] = lines1[x]:gsub("u0", "v0", y)
					end
					for u = key + 34, #lines1 do
						if lines1[u]:match("MOVE v%d+ v0") and lines1[u + 2]:match("NEWTABLE v%d+ %d+ 0") and lines1[u + 4]:match("LOADK v%d+ %d+") then
							local m1 = lines1[u + 0]:match("v%d+");
							local m2 = lines1[u + 2]:match("v%d+");
							local m3 = nil;
							local tbl = { };
							local x = nil;
							for v = u + 6, #lines1 do
								if lines1[v]:match("CALL "..m1.."..v%d+") and lines1[v - 2]:match("LOADK v%d+ %d+") and lines1[v - 4]:match("SETLIST "..m2.."..v%d+ %d+") and lines1[v - 6]:match("LOADK v%d+ %d+") then
									m3 = lines1[v - 6]:match("v%d+")
									if lines1[v - 4]:match("SETLIST "..m2..".."..m3.." %d+") then
										isValue = true
										rn = v
									end
									for s = u + 4, v - 6 do
										if lines1[s]:match("LOADK v%d+ %d+") then
											tbl[#tbl + 1] = lines1[s]:match("%d+$")
										end
									end
									x = lines1[v - 2]:match("%d+$")
									break
								end
							end
							if isValue == true then
								for remove = u + 2, rn do
									lines1[remove] = ""
								end
								lines1[u] = lines1[u]:gsub("MOVE v%d+ v0", function()
									local c;
									c = "LOADK "..m1.." \"KONZLET({"..table.concat(tbl, ",").."}, "..x..")\""
									return c
								end)
								isValue = false
							end
						end
						st = #lines1 - 2
						if lines1[u]:match("%.%l* F%d+ ;") then
							st = u
							break
						end
					end
					for u = st, #lines1 do
						if lines1[u]:match("GETUPVAL v%d+ u%d+") and lines1[u + 2]:match("NEWTABLE v%d+ %d+ 0") and lines1[u + 4]:match("LOADK v%d+ %d+") then
							local m1 = lines1[u + 0]:match("v%d+");
							local m2 = lines1[u + 2]:match("v%d+");
							local m3 = nil;
							local tbl = { };
							local x = nil;
							for v = u + 6, #lines1 do
								if lines1[v]:match("CALL "..m1.."..v%d+") and lines1[v - 2]:match("LOADK v%d+ %d+") and lines1[v - 4]:match("SETLIST "..m2.."..v%d+ %d+") and lines1[v - 6]:match("LOADK v%d+ %d+") then
									m3 = lines1[v - 6]:match("v%d+")
									if lines1[v - 4]:match("SETLIST "..m2..".."..m3.." %d+") then
										isValue = true
										rn = v
									end
									for s = u + 4, v - 6 do
										if lines1[s]:match("LOADK v%d+ %d+") then
											tbl[#tbl + 1] = lines1[s]:match("%d+$")
										end
									end
									x = lines1[v - 2]:match("%d+$")
									break
								end
							end
							if isValue == true then
								for remove = u + 2, rn do
									lines1[remove] = ""
								end
								lines1[u] = lines1[u]:gsub("GETUPVAL v%d+ u%d+", function()
									local c;
									c = "LOADK "..m1.." \"KONZLET({"..table.concat(tbl, ",").."}, "..x..")\""
									return c
								end)
								isValue = false
							end
						end
						if lines1[u]:match("%.%l* ; F7$") then
							lines1[u] = ""
							break
						end
					end
					lines1[key] = value:gsub("%.%l* F7 ;", ";")
				end
			end
			-- 2
			for key, value in konzlet.next, lines2, nil do
				if value:match("%.source \"=%?\"") then
					lines2[key] = value:gsub("\".-\"", function()
						local c;
						c = '"' .. g.main[data[2]] .. '"'
						return c
					end)
				end
				if value:match("%.%l* F7 ;") then
					for u = key + 34, #lines2 do
						if not lines2[u]:match("%.%l* ; F7$") then
							lines2[u] = ""
						else
							m = 34
							break
						end
					end
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "LOADK v3 \"KONZLET\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "MOVE v4 v0"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "SETTABUP u0 v3 v4"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABUP v3 u0 \"gg\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABLE v3 v3 \"setVisible\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "LOADBOOL v4 0"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "CALL v3..v4"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABUP v3 u0 \"gg\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABLE v3 v3 \"sleep\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "LOADK v4 4000"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "CALL v3..v4"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "LOADK v3 1"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "LOADK v4 98"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "LOADK v5 1"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "; .local v3 \"(for index)\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "; .local v4 \"(for limit)\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "; .local v5 \"(for step)\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "; .local v6 \"(for iterator)\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "FORPREP v3 :goto_43  ; +31 ↓"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. ":goto_12"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "MOD v7 v6 2"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "EQ 0 v7 0"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "JMP :goto_17  ; +2 ↓"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "SETTABUP u0 \"icon\" \"⌛\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "JMP :goto_18  ; +1 ↓"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. ":goto_17"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "SETTABUP u0 \"icon\" \"⏳\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. ":goto_18"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABUP v7 u0 \"gg\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABLE v7 v7 \"toast\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABUP v8 u0 \"icon\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "LOADK v9 \" Waiting... \""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABUP v10 u0 \"tostring\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "MOVE v11 v6"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "CALL v10..v11 v10..v10"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "LOADK v11 \" %\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "CONCAT v8 v8..v11"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "CALL v7..v8"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "LT 0 v6 16"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "JMP :goto_39  ; +9 ↓"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABUP v7 u0 \"gg\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABLE v7 v7 \"sleep\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABUP v8 u0 \"tostring\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "MOVE v9 v6"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "CALL v8..v9 v8..v8"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "LOADK v9 \"00\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "CONCAT v8 v8..v9"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "SUB v8 1600 v8"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "CALL v7..v8"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. ":goto_39"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABUP v7 u0 \"gg\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABLE v7 v7 \"sleep\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "LOADK v8 100"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "CALL v7..v8"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. ":goto_43"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "FORLOOP v3 :goto_12  ; -32 ↑  "
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "; .end local v3 \"(for index)\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "; .end local v4 \"(for limit)\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "; .end local v5 \"(for step)\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "; .end local v6 \"(for iterator)\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABUP v3 u0 \"loadfile\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "LOADK v4 \""..path.temporary.."\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "CALL v3..v4 v3..v3"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "CALL v3..v3"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABUP v3 u0 \"gg\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABLE v3 v3 \"toast\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "LOADK v4 \"𒆜 𝙎𝙘𝙧𝙞𝙥𝙩 𝙄𝙨 𝙎𝙪𝙘𝙘𝙚𝙨𝙨𝙛𝙪𝙡𝙡𝙮 𝘿𝙚𝙘𝙧𝙮𝙥𝙩𝙚𝙙 ✔️\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "CALL v3..v4"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABUP v3 u0 \"gg\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABLE v3 v3 \"sleep\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "LOADK v4 2000"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "CALL v3..v4"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABUP v3 u0 \"gg\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABLE v3 v3 \"toast\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "LOADK v4 \"𒆜 𝙎𝙘𝙧𝙞𝙥𝙩 𝙎𝙖𝙫𝙚 𝙏𝙤 :\\n\\n📂 : "..path.output.."\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "CALL v3..v4"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABUP v3 u0 \"gg\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABLE v3 v3 \"sleep\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "LOADK v4 4000"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "CALL v3..v4"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABUP v3 u0 \"gg\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABLE v3 v3 \"setVisible\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "LOADBOOL v4 1"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "CALL v3..v4"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABUP v3 u0 \"print\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "LOADK v4 \"═════════ •『 ✳️ 』• ═════════\\n✳️   ᴅᴇᴄʀʏᴘᴛɪᴏɴ ᴡᴀs sᴜᴄᴄᴇssғᴜʟʟ   ✳️\\n═════════ •『 ✳️ 』• ═════════\\n\\n           Copyright © 2021 KonɀLeΙ͠\\n                 All Rights Reserved\\n────────────────────────\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "CALL v3..v4"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABUP v3 u0 \"os\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABLE v3 v3 \"remove\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "LOADK v4 \""..path.temporary.."\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "CALL v3..v4"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABUP v3 u0 \"os\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABLE v3 v3 \"exit\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "CALL v3..v3"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "RETURN "
				end
			end
			-- d			
			local SData = {path.execute, string.dump(load(table.concat(lines2, "\n")), true, true), path.temporary, getData(table.concat(lines1, "\n"), 3, true)};
			
			for key, value in konzlet.next, SData, nil do
				if key % 2 ~= 0 then
					local w = io.open(SData[key], "wb");
					w:write(SData[key + 1])
					w:close()
					w = nil
				end
			end
			konzlet.setVisible(false)
			konzlet.toast("✔️")
			konzlet.sleep(2000)
			konzlet.alert("𒆜 Please execute the script in this path:\n\n📂: " .. path.execute .. "")
			konzlet.sleep(300)
			konzlet.setVisible(true)
			return 
		end





		----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		--❦ ᴅᴇᴄʀʏᴘᴛ sᴇᴀ v2.0
		----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		konzlet["C"] = function(...)
			local data = {...};
			local res = "";
			local ret = "";
			konzlet.internal2(load(box[data[2]]), path.temporary)
			ret = getData(nil, 5,   false)
			while ret:match("\n\n\n") do
				ret = ret:gsub(string.rep("(" .. newlines .. ")", 0x03), function(a, b, c)
				c = a .. b
				return c end)
			end
			local w = io.open(path.temporary, "wb");
			w:write(ret)
			w:close()
			w = nil
			ret = ""
			-- s
			lines1 = { }
			lines2 = { }
			for data_line in io.lines( path.temporary ) do
				lines1[#lines1 + 1] = data_line
				lines2[#lines2 + 1] = data_line
			end
			-- 1
			for key, value in konzlet.next, lines1, nil do
				if value:match("%.%l* F1 ;") then
					for u = key + 12, #lines1 do
						if not lines1[u]:match("CLOSURE v19 F%d+") then
							lines1[u] = ""
						else
							func19 = lines1[u]:match("F%d+")
							for i = u, u + 2 do
								lines1[i] = ""
							end
							st = u
							break
						end
					end
					for u = st + 3, #lines1 do
						if lines1[u]:match("MOVE v%d+ v19") and
							(lines1[u +  2]:match("MUL v%d+ v14 %d+")  or lines1[u +  3]:match("MUL v%d+ v14 %d+")) and
							(lines1[u +  4]:match("ADD v%d+ v%d+ %d+") or lines1[u +  5]:match("ADD v%d+ v%d+ %d+")) and
							(lines1[u +  6]:match("MUL v%d+ v14 %d+")  or lines1[u +  7]:match("MUL v%d+ v14 %d+")) and
							(lines1[u +  8]:match("ADD v%d+ v%d+ %d+") or lines1[u +  9]:match("ADD v%d+ v%d+ %d+")) and
							(lines1[u + 10]:match("CALL v%d+..v%d+")     or lines1[u + 11]:match("CALL v%d+..v%d+")) then
							local numbers = { };
							for v = u + 2, u + 11, 1 do
								if lines1[v]:find("MUL") or lines1[v]:find("ADD") then
									local x; x = nil;
									x = lines1[v]:match("%s(%d+)$")
									x = tonumber(x)
									numbers[#numbers + 1] = x
								end
								lines1[v] = ""
							end
							lines1[u] = lines1[u]:gsub("MOVE v%d+ v19", function(c)
								local a = nil;
								local b = nil;
								a = 255 * numbers[1] + numbers[2]
								b = 255 * numbers[3] + numbers[4]
								c = c:match("v%d+")
								c = "LOADK " .. c .. " \"KONZLET(" .. tostring(a) .. ", " .. tostring(b) .. ")\""
								return c
							end)
						end
						if lines1[u]:match("%.%l* F%d+ ;") then
							for v = u, #lines1 do
								if not lines1[v]:match("%.%l* ; " .. func19 .. "$") then
									lines1[v] = ""
								else
									lines1[v] = ""
									st = v
									break
								end
							end
							break
						end
					end
					for u = st, #lines1 do
						if lines1[u]:match("GETUPVAL v%d+ u%d+") and
							(lines1[u +  2]:match("GETUPVAL v%d+ u%d+") or lines1[u +  3]:match("GETUPVAL v%d+ u%d+")) and
							(lines1[u +  4]:match("MUL v%d+ v%d+ %d+")  or lines1[u +  5]:match("MUL v%d+ v%d+ %d+")) and
							(lines1[u +  6]:match("ADD v%d+ v%d+ %d+")  or lines1[u +  7]:match("ADD v%d+ v%d+ %d+")) and
							(lines1[u +  8]:match("GETUPVAL v%d+ u%d+") or lines1[u +  9]:match("GETUPVAL v%d+ u%d+")) and
							(lines1[u + 10]:match("MUL v%d+ v%d+ %d+")  or lines1[u + 11]:match("MUL v%d+ v%d+ %d+")) and
							(lines1[u + 12]:match("ADD v%d+ v%d+ %d+")  or lines1[u + 13]:match("ADD v%d+ v%d+ %d+")) and
							(lines1[u + 14]:match("CALL v%d+..v%d+")      or lines1[u + 15]:match("CALL v%d+..v%d+")) then
							local numbers = { };
							for v = u + 2, u + 15, 1 do
								if lines1[v]:find("MUL") or lines1[v]:find("ADD") then
									local x; x = nil;
									x = lines1[v]:match("%s(%d+)$")
									x = tonumber(x)
									numbers[#numbers + 1] = x
								end
								lines1[v] = ""
							end
							lines1[u] = lines1[u]:gsub("GETUPVAL v%d+ u%d+", function(c)
								local a = nil;
								local b = nil;
								a = 255 * numbers[1] + numbers[2]
								b = 255 * numbers[3] + numbers[4]
								c = c:match("v%d+")
								c = "LOADK " .. c .. " \"KONZLET(" .. tostring(a) .. ", " .. tostring(b) .. ")\""
								return c
							end)
						end
					end
					break
				end
			end
			-- 2
			for key, value in konzlet.next, lines2, nil do
				if value:match("%.%l* F1 ;") then for u = key + 8, #lines2, 1 do if lines2[u]:match("%.upval u0 nil ; u%d+") then upval = lines2[u]:match("u%d+$")break end end end if value:match("CLOSURE v19 F%d+") then
					for u = key + 2, #lines2 do
						if not lines2[u + 3]:match("%.%l* F%d+ ;") then
							lines2[u] = ""
						else
							m = 2
							break
						end
					end
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "LOADK v20 \"KONZLET\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "SETTABUP "..upval.." v20 v19"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABUP v19 "..upval.." \"loadfile\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "LOADK v20 \""..path.temporary.."\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "CALL v19..v20 v19..v19"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "CALL v19..v19"
				end
				if value:match("%.%l* ; "..func19.."$") then
					for u = key + 1, #lines2 do
						if not lines2[u]:match("%.%l* ; F1$") then
							lines2[u] = ""
						else
							break
						end
					end
				end
			end
			-- d
			local SData = {path.loader, string.dump(load(table.concat(lines2, "\n")), true, true), path.temporary, getData(table.concat(lines1, "\n"), 2, true)};
			
			for key, value in konzlet.next, SData, nil do
				if key % 2 ~= 0 then
					local w = io.open(SData[key], "wb");
					w:write(SData[key + 1])
					w:close()
					w = nil
				end
			end
			loadfile(path.loader)()
			os.remove( path.temporary )  ;  os.remove( path.loader )
			konzlet.setVisible(false)
			konzlet.toast("𒆜 𝙎𝙘𝙧𝙞𝙥𝙩 𝙄𝙨 𝙎𝙪𝙘𝙘𝙚𝙨𝙨𝙛𝙪𝙡𝙡𝙮 𝘿𝙚𝙘𝙧𝙮𝙥𝙩𝙚𝙙 ✔️")
			konzlet.sleep(2000)
			konzlet.toast("𒆜 𝙎𝙘𝙧𝙞𝙥𝙩 𝙎𝙖𝙫𝙚 𝙏𝙤:\n\n📂: "..path.output.."")
			konzlet.sleep(4000)
			konzlet.setVisible(true)
			print("═════════ •『 ✳️ 』• ═════════\n✳️   ᴅᴇᴄʀʏᴘᴛɪᴏɴ ᴡᴀs sᴜᴄᴄᴇssғᴜʟʟ   ✳️\n═════════ •『 ✳️ 』• ═════════\n\n           Copyright © 2021 KonɀLeΙ͠\n                 All Rights Reserved\n────────────────────────")
			return 
		end





		----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		--❦ ᴅᴇᴄʀʏᴘᴛ KonɀLeΙ͠ v5.0
		----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		konzlet["B"] = function(...)
			local data = {...};
			local res = "";
			local ret = "";
			konzlet.internal2(load(convertLuaKonzlet(box[data[2]])), path.temporary)
			-- s
			lines1 = { }
			lines2 = { }
			for data_line in io.lines( path.temporary ) do
				lines1[#lines1 + 1] = data_line
				lines2[#lines2 + 1] = data_line
			end
			-- 1
			for key, value in konzlet.next, lines1, nil do
				if key == 13 or key == 15 then
					lines1[key] = ""
				end
				if value:match("%.%l* F0 ;") then
					for u = key, #lines1 do
						if not lines1[u]:match("%.%l* ; F0$") then
							lines1[u] = ""
						else
							lines1[u] = ""
							break
						end
					end
				end
				if value:match("%.%l* F1 ;") then
					for u = key, #lines1 do
						if lines1[u]:match("%.%l* ; F1$") then
							break
						else
							if lines1[u]:match("GETUPVAL v%d+ u%d+") and lines1[u + 2]:match("LOADK v%d+ \".-\"") and lines1[u + 4]:match("LOADK v%d+ %d+") and lines1[u + 6]:match("CALL v%d+..v%d+") then
								local x0 = lines1[u + 2]:match("\"(.-)\"");
								local x1 = lines1[u + 4]:match("%d+$");
								local x3 = lines1[u + 0]:match("v%d+");
								if (x0:find("1") or x0:find("0")) and x0:find("%.") ~= nil then
									for v = u + 2, u + 6 do
										lines1[v] = ""
									end
									lines1[u] = lines1[u]:gsub("GETUPVAL v%d+ u%d+", function(c)
										local x;
										x = "LOADK " .. c:match("v%d+") .. " \"KONZLET(\"" .. x0 .. "\", " .. x1 .. ")\""
										return x
									end)
									if lines1[u + 8]:match("CALL v%d+$") then
										local x;
										x = u + 8
										lines1[x] = lines1[x] .. ".." .. x3
									end
								end
							end
							if lines1[u]:match("GETUPVAL v%d+ u%d+") and lines1[u + 2]:match("NEWTABLE v%d+ %d+ 0") and lines1[u + 4]:match("LOADK v%d+ %d+") then
								local x0 = string.sub(lines1[u + 0]:match("v%d+"), 1, -1);
								local x1 = string.sub(lines1[u + 2]:match("v%d+"), 1, -1);
								local x3 = string.sub(lines1[u + 4]:match("%d+$"), 1, 1);
								if x3 == "1" or x3 == "0" then
									for h = u, #lines1 do
										if lines1[h]:match("CALL "..x0.."..v%d+") and lines1[h - 2]:match("LOADK v%d+ %d+") and lines1[h - 4]:match("SETLIST "..x1..".."..lines1[h - 6]:match("LOADK (v%d+) %d+").." %d+") then
											if lines1[h + 2]:match("CALL v%d+$") then
												local x;
												x = h + 2
												lines1[x] = lines1[x] .. ".." .. x0
											end
											local p = lines1[h - 0]:match("CALL v%d+..(v%d+)");
											local q = lines1[h - 2]:match("LOADK (v%d+) %d+");
											if p == q then
												local tbl = { };
												local n = 1;
												for v = u + 4, h - 6 do
													if lines1[v]:match("LOADK v%d+ %d+") then
														local x;
														x = lines1[v]:match("%d+$")
														tbl[#tbl + 1] = x
													end
												end
												for v = u, h do
													if n == 1 then
														lines1[v] = lines1[v]:gsub("GETUPVAL v%d+ u%d+", function(c)
															local d = nil;
															d = lines1[h - 2]:match("%d+$")
															d = "KONZLET({" .. table.concat(tbl, ",") .. "}, " .. d .. ")"
															c = "LOADK " .. c:match("v%d+") .. " "
															c = c .. "\"" .. d .. "\""
															return c
														end)
													else
														lines1[v] = ""
													end
													n = n + 1
												end
											end
											break
										end
									end				
								end	
							end
							if lines1[u]:match("%L* v%d+.-\"KonɀLeΙ͠\"$") then
								local var;
								var = lines1[u]:match("%L* (v%d+)")
								for h = u, #lines1 do
									if lines1[h]:match("GETTABLE "..var.." "..var.."") then
										local index = nil;
										local n = 1;
										for v = u, h do
											if lines1[v]:match("v%d+ %d+") then
												local x;
												x = lines1[v]:match("%d+$")
												index = x
												break
											end
										end
										for v = u, h do
											if n == 1 then
												lines1[v] = lines1[v]:gsub("(%L* v%d+).-(\"KonɀLeΙ͠\")$", function(a, b)
													local c;
													a = a:gsub("%L* ", "LOADK ", 1)
													b = b
													c = a .. " KONSLET[" .. b .. "][" .. index .. "]"
													return c
												end)
											else
												lines1[v] = ""
											end
											n = n + 1
										end
										break
									end
								end
							end
							if lines1[u]:match("SETLIST v%d+ %d+$") then
								local s;
								for h = u - 1, 1, -1 do
									if lines1[h]:match("%L* (v%d+)") then
										s=lines1[h]:match("v%d+")
										break
									end
								end
								lines1[u] = lines1[u]:gsub("v%d+", function(c)
									c = c .. ".." .. s .. ""
									return c
								end)
							end
							if lines1[u]:match("CALL v%d+ v%d+..v%d+") then
								local s1, s2, s3 = lines1[u]:match("CALL (v%d+) (v%d+)..(v%d+)");
								local s4 = nil;
								if s1 == s2 and s1 == s3 then
									for h = u - 1, 1, -1 do
										if lines1[h]:match("%L* v%d+") then
											s4=lines1[h]:match("v%d+")
											break
										end
									end
									lines1[u]="CALL "..s1..".."..s4.." "..s2..".."..s3
								end
							end
						end
					end
				end
			end
			-- 2
			for key, value in konzlet.next, lines2, nil do
				if value:match("%.%l* F1 ;") then for u = key + 8, key + 10 do if lines2[u]:match("%.upval u0 nil ; u%d+") then upval0 = lines2[u]:match("u%d+$") end if lines2[u]:match("%.upval v0 nil ; u%d+") then upval1 = lines2[u]:match("u%d+$") end if lines2[u]:match("%.upval v1 nil ; u%d+") then upval2 = lines2[u]:match("u%d+$") end end
					for u = key + 12, #lines2 do
						if not lines2[u]:match("%.%l* ; F1$") then
							lines2[u] = ""
						else
							m = 12
							break
						end
					end
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "LOADK v0 \"KONZLET\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETUPVAL v1 "..upval1..""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "SETTABUP "..upval0.." v0 v1"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "LOADK v0 \"KONSLET\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETUPVAL v1 "..upval2..""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "SETTABUP "..upval0.." v0 v1"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETTABUP v0 "..upval0.." \"loadfile\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "LOADK v1 \""..path.temporary.."\""
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "CALL v0..v1 v0..v0"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "CALL v0..v0"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "RETURN "
				end
				if value:match("CLOSURE v%d+ F4$") then
					for u = key + 2, #lines2 do
						if not lines2[u]:match("CLOSURE v%d+ F5$") then
							lines2[u] = ""
						else
							break
						end
					end
				end
				if value:match("%.%l* F12 ;") then
					for u = key + 15, #lines2 do
						if not lines2[u]:match("%.end ; F12$") then
							lines2[u] = ""
						else
							m = 15
							break
						end
					end
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "GETUPVAL v2 u5"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "MOVE v3 v1"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "TAILCALL v2..v3"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "RETURN v2 ; unused"
					lines2[key + m] = lines2[key + m] .. "\n\n" .. "RETURN "
				end
				if value:match("CLOSURE v%d+ F15$") then
					for u = key + 12, #lines2 do
						if not lines2[u]:match("CLOSURE v%d+ F16$") then
							lines2[u] = ""
						else
							break
						end
					end
				end
				if value:match("CLOSURE v%d+ F19$") then
					for u = key + 2, #lines2 do
						if not lines2[u]:match("CLOSURE v%d+ F20$") then
							lines2[u] = ""
						else
							break
						end
					end
				end
			end
			-- d
			local SData = {path.loader, string.dump(load(table.concat(lines2, "\n")), true, true), path.temporary, getData(table.concat(lines1, "\n"), 1, true)};
			
			for key, value in konzlet.next, SData, nil do
				if key % 2 ~= 0 then
					local w = io.open(SData[key], "wb");
					w:write(SData[key + 1])
					w:close()
					w = nil
				end
			end
			loadfile(path.loader)()
			os.remove( path.temporary )  ;  os.remove( path.loader )
			konzlet.setVisible(false)
			konzlet.toast("𒆜 𝙎𝙘𝙧𝙞𝙥𝙩 𝙄𝙨 𝙎𝙪𝙘𝙘𝙚𝙨𝙨𝙛𝙪𝙡𝙡𝙮 𝘿𝙚𝙘𝙧𝙮𝙥𝙩𝙚𝙙 ✔️")
			konzlet.sleep(2000)
			konzlet.toast("𒆜 𝙎𝙘𝙧𝙞𝙥𝙩 𝙎𝙖𝙫𝙚 𝙏𝙤:\n\n📂: "..path.output.."")
			konzlet.sleep(4000)
			konzlet.setVisible(true)
			print("═════════ •『 ✳️ 』• ═════════\n✳️   ᴅᴇᴄʀʏᴘᴛɪᴏɴ ᴡᴀs sᴜᴄᴄᴇssғᴜʟʟ   ✳️\n═════════ •『 ✳️ 』• ═════════\n\n           Copyright © 2021 KonɀLeΙ͠\n                 All Rights Reserved\n────────────────────────")
			return 
		end





		----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		--🇲🇨 sᴄʀɪᴘᴛ ʀᴇᴀᴅɪɴɢ
		----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		konzlet["A"] = function(...)
			local data = {...};
			local error_ = "⚠️ File not found: " .. data[1]
			local content = nil;
			local f = io.open(data[1], "rb");
			if f ~= nil then
				content = f:read("*a")
				f:close()
				f = nil
			else
				konzlet.alert(error_)
				os.exit()
			end
			return content
		end
		------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		local n = 0; box = {g.main[1]}; newlines = "\n"

		for key, booleans in konzlet.next, g.main, 1 do
			if booleans == false then
				box[key] = nil
				n = n + 0
			else
				box[key] = true
				n = n + 1
			end
		end
		if n > 1 or n < 1 then
			os.exit()
			break
		else
			for key, value in konzlet.next, box, nil do
				box[key] = (function()
					local __load;
					path = {
						temporary = konzlet.EXT_FILES_DIR .. "/" .. "KonɀLeΙ͠.tmp",
						loader     = konzlet.EXT_FILES_DIR .. "/" .. "KonɀLeΙ͠.lua",
						execute    = g.main[1]  :gsub("[^/]+$", "Execute Me.lua"),
						output     = g.main[1]  :gsub("%.lua$", "") .. "_dec.lua"..""
					}
					__load = load; load = function(script)
						x__ = __load(script)
						if not x__ then
							konzlet.alert("Sorry, Something went wrong ❗")
							os.exit()
							return nil
						end
						return x__
					end
					isData = {
						[1] = function(...)return konzlet["A"](...) end,
						[2] = function(...)return konzlet["B"](...) end,
						[3] = function(...)return konzlet["C"](...) end,
						[4] = function(...)return konzlet["D"](...) end,
						[5] = function(...)return konzlet["E"](...) end,
					};
					return isData[key](value, 1, true)
				end)()
			end
			_G["pick"] = key
		end
		konzlet.saveVariable(g.main, (function()
			local S = '';
			if not false then
				S = S .. konzlet.EXT_CACHE_DIR .. "/" .. "KonɀLeΙ͠.cfg"
			end
			return S
		end)())
		return os.exit()
	end
end

