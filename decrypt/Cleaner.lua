lines = { }
for line in io.lines("/storage/emulated/0/Download/FILES AFTER DEC/#سكربتV15ولف.lua_11c4YaK_1TMDN7.lasm") do
	if line:match("; garbage") then
	else
		lines[#lines + 1] = line
	end
end

for k, v in pairs(lines) do
	if v:match("LOADBOOL v%d+ 0") and lines[k + 2]:match("TEST v%d+ 0") and lines[k + 4]:match("JMP :goto_%d+  ; %+%d+ ↓") then
		local x = lines[k + 4]:match(":goto_%d+")
		for i = k, #lines do
			if not lines[i]:match(x .. "$") then
				lines[i] = ""
			else
				break
			end
		end
	end
	if v:match("LOADNIL v%d+..v%d+") and lines[k + 2]:match("TEST v%d+ 0") and lines[k + 4]:match("JMP :goto_%d+  ; %+%d+ ↓") then
		local x = lines[k + 4]:match(":goto_%d+")
		for i = k, #lines do
			if not lines[i]:match(x .. "$") then
				lines[i] = ""
			else
				break
			end
		end
	end
	if v:match("%.%l* F%d+ ;") and lines[k + 7]:match("%.%l* ; F%d+$") then
		for i = k, k + 7 do
			lines[i] = ""
		end
	end
end

data = table.concat(lines, "\n")

while data:match("\n\n\n") do
	data = data:gsub("\n\n\n", "\n\n")
end

io.output(gg.getFile()..".lasm")
io.write(data)
io.close()