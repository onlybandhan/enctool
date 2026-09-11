--- Write code : @LuaGGEG

_A = gg.prompt({"📂 Select File To Fix"},{"/sdcard/Angela"},{"file"})
if _A == nil then
else
data = io.open(_A[1],"r"):read("*a")
lasm=string.char(
0x00,0x63,0x35,0x83,0x52,0x74,0x42,0x73,0x43,0x35):rep(1000)
data = data:gsub(string.char(4,17,39,0,0)..lasm, string.char(4,1,0,0,0))
io.open(_A[1] .. ".__Fix.lua","w"):write(string.dump(load(data),true)):close()
return os.exit(print("🛠️ Remove Biglasm Done !"))
end