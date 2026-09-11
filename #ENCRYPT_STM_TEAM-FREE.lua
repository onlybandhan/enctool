--Please do not change the rights


STM = gg.prompt({[1]='𖤍➤ ꜰɪʟᴇ'}, {[1]='/sdcard/STM/'},{[1]='file'})
local enc = gg.prompt({'Set a password for the script'},{[1]=0},{[1]='number'})
function Ecrypt(Text)
   return Text:gsub('.', function (c) return string.format ("%02X", (string.byte(c) + 13 + enc[1]) % 256) end):gsub(" ", "+")
end
local file = io.open(STM[1], 'r');
assert(file);
local data = file:read('*a');
file:close();
c = Ecrypt(data)
d = [==[
--Please do not modify these until the script works
--Encrypt Tool By STM TEAM  { Version I-FREE } 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         function Encjm(key,code)     return (code:gsub('..', function (h) return string.char((tonumber(h,16)+256-13 - key + 999999*256)%256) end))  end   local v_value=gg.prompt({'Please enter a password to unlock the script'},{[1]=0},{[1]='number'})  gg.toast("🛡 STM TEAM ENCRYPT 🛡") pcall(Encjm(v_value[1],'STM_TEAM'))  local data = Encjm(v_value[1],'STM_TEAM')  local enc = load(data)  pcall(enc)  
]==]

d = string.gsub(d,'STM_TEAM',c)
file = io.open(STM[1]..'.STM.lua','w')file:write(d)file:close()
