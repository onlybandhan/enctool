Pathjia = gg.prompt({[1]='Select script to encrypt'}, {[1]='/sdcard/'},{[1]='file'})
print('ANGRYLORD')
local enc = gg.prompt({'INPUT PASSWORD(0-9)'},{[1]=0},{[1]='number'})
function Ecrypt(Text)
   return Text:gsub('.', function (c) return string.format ("%02X", (string.byte(c) + 13 + enc[1]) % 256) end):gsub(" ", "+")
end
local file = io.open(Pathjia[1], 'r');
assert(file);
local data = file:read('*a');
file:close();
c = Ecrypt(data)
d = [==[
--cant see the code encrypted







































                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         print('晓七:请大家给个关注')  function Encjm(key,code)     return (code:gsub('..', function (h) return string.char((tonumber(h,16)+256-13 - key + 999999*256)%256) end))  end  local v_value=gg.prompt({'请输入密码'},{[1]=0},{[1]='number'})  gg.toast('正在加载脚本……')  pcall(Encjm(v_value[1],'encBx8848'))  local data = Encjm(v_value[1],'encBx8848')  local enc = load(data)  pcall(enc)  
]==]

d = string.gsub(d,'encBx8848',c)
file = io.open(Pathjia[1]..'ANG','w')file:write(d)file:close()