yxr=[[
本脚本由隐形人制作
完全免费，请大佬勿倒卖赚钱
交流群993021475
隐形人QQ1747543360
]]
function Main()
SN = gg.choice({
	 "DZSH加密",
	 "BN加密",
	 "编译加密",
	 "MX加密",
	 "16进制加密",
	 "老外加密",
	 "退出",
}, nil, "欢迎使用加密合集(1.0)  \n隐形人QQ:2775308352")
if SN==1 then
dzsh()
end
if SN==2 then
bn()
end
if SN==3 then
by()
end
if SN==4 then
mx()
end
if SN==5 then
jz()
end
if SN==6 then
lw()
end
if SN==7 then
tc()
end
yxr=0
end

function dzsh()


Qjctx=1
print(string.char())
Path = gg.prompt({[1]="选择要加密的脚本"}, {[1]="/storage/emulated/0/tencent/QQfile_recv/加密"},{[1]="file"})

if Path==nil then
os.exit() 
end

local function Encryption(Text)
  return Text:gsub(".", function(jia)
    return string.format("%02X", (string.byte(jia)) % 256)
  end):gsub(" ", "+")
end

local file = io.open(Path[1], "r")
assert(file)
local xuanshen = file:read("*a")
file:close()

jmdm = Encryption(xuanshen)
decryption = "function Decryption(xuanshen,Text)\n\n  return (Text:gsub('..', function (xuanshen)\n\n    return string.char((tonumber(xuanshen,16))%256)\n\n  end))\n\nend\n\nlocal xuanshen = Decryption('DZSH','JMDM')\n\nlocal dzsh = load(xuanshen)\n\npcall(dzsh)\n"
wzdm = string.gsub(decryption, "JMDM", jmdm)
file = io.open(Path[1].."x", "w")
file:write(wzdm)
file:close()

local function Encryption(Text)
  return Text:gsub(".", function(jia)
    return string.format("%02X", (string.byte(jia)) % 256)
  end):gsub(" ", "+")
end

local file = io.open(Path[1].."x", "r")
assert(file)
local xuanshen = file:read("*a")
file:close()

jmdm = Encryption(xuanshen)
decryption = "function Decryption(xuanshen,Text)\n\n  return (Text:gsub('..', function (xuanshen)\n\n    return string.char((tonumber(xuanshen,16))%256)\n\n  end))\n\nend\n\nlocal xuanshen = Decryption('DZSH','JMDM')\n\nlocal dzsh = load(xuanshen)\n\npcall(dzsh)\n"
wzdm = string.gsub(decryption, "JMDM", jmdm)
file = io.open(Path[1].."x", "w")
file:write(wzdm)
file:close()
local function Encryption(Text)
  return Text:gsub(".", function(jia)
    return string.format("%02X", (string.byte(jia)) % 256)
  end):gsub(" ", "+")
end

local file = io.open(Path[1]..'x', "r")
assert(file)
local xuanshen = file:read("*a")
file:close()

jmdm = Encryption(xuanshen)
decryption = "function Decryption(xuanshen,Text)\n\n  return (Text:gsub('..', function (xuanshen)\n\n    return string.char((tonumber(xuanshen,16))%256)\n\n  end))\n\nend\n\nlocal xuanshen = Decryption('DZSH','JMDM')\n\nlocal dzsh = load(xuanshen)\n\npcall(dzsh)\n"
wzdm = string.gsub(decryption, "JMDM", jmdm)
file = io.open(Path[1].."x", "w")
file:write(wzdm)
file:close()

local function Encryption(Text)
  return Text:gsub(".", function(jia)
    return string.format("%02X", (string.byte(jia)) % 256)
  end):gsub(" ", "+")
end

local file = io.open(Path[1]..'x', "r")
assert(file)
local xuanshen = file:read("*a")
file:close()

jmdm = Encryption(xuanshen)
decryption = "function Decryption(xuanshen,Text)\n\n  return (Text:gsub('..', function (xuanshen)\n\n    return string.char((tonumber(xuanshen,16))%256)\n\n  end))\n\nend\n\nlocal xuanshen = Decryption('DZSH','JMDM')\n\nlocal dzsh = load(xuanshen)\n\npcall(dzsh)\n"
wzdm = string.gsub(decryption, "JMDM", jmdm)
file = io.open(Path[1].."x", "w")
file:write(wzdm)
file:close()

local function Encryption(Text)
  return Text:gsub(".", function(jia)
    return string.format("%02X", (string.byte(jia)) % 256)
  end):gsub(" ", "+")
end

local file = io.open(Path[1]..'x', "r")
assert(file)
local xuanshen = file:read("*a")
file:close()

jmdm = Encryption(xuanshen)
decryption = "function Decryption(xuanshen,Text)\n\n  return (Text:gsub('..', function (xuanshen)\n\n    return string.char((tonumber(xuanshen,16))%256)\n\n  end))\n\nend\n\nlocal xuanshen = Decryption('DZSH','JMDM')\n\nlocal dzsh = load(xuanshen)\n\npcall(dzsh)\n"
wzdm = string.gsub(decryption, "JMDM", jmdm)
file = io.open(Path[1].."x", "w")
file:write(wzdm)
file:close()

sj = os.date("\n%c")
print("加密成功！\n"..Path[1].."x"..sj)
end

function bn()
Path = gg.prompt({[1]="选择要加密的脚本"}, {[1]="/sdcard/bn加密1747543360.lua"},{[1]="file"})

if Path==nil then
os.exit() 
end

local function Encryption(Wen)
  return Wen:gsub(".", function(boom)
    return string.format("%02X", (string.byte(boom)) % 999)
  end):gsub(" ", "+")
end

local file = io.open(Path[1], "r")
assert(file)
local data = file:read("*a")
file:close()

QXJM = Encryption(data)
decryption = "function Decryption(xoom,Wen)\n\n  return (Wen:gsub('..', function (xoom)\n\n    return string.char((tonumber(xoom,16))%999)\n\n  end))\n\nend\n\nlocal data = Decryption('BxJM','QXJM')\n\nlocal BxJM = load(data)\n\npcall(BxJM)\n"
wzdm = string.gsub(decryption, "QXJM", QXJM)
file = io.open(Path[1].."x", "w")
file:write(wzdm)
file:close()

for i=1,3 do
local function Encryption(Wen)
  return Wen:gsub(".", function(boom)
    return string.format("%02X", (string.byte(boom)) % 999)
  end):gsub(" ", "+")
end

local file = io.open(Path[1]..'x', "r")
assert(file)
local data = file:read("*a")
file:close()

QXJM = Encryption(data)
decryption = "function Decryption(xoom,Wen)\n\n  return (Wen:gsub('..', function (xoom)\n\n    return string.char((tonumber(xoom,16))%999)\n\n  end))\n\nend\n\nlocal data = Decryption('BxJM','QXJM')\n\nlocal BxJM = load(data)\n\npcall(BxJM)\n"
wzdm = string.gsub(decryption, "QXJM", QXJM)
file = io.open(Path[1].."x", "w")
file:write(wzdm)
file:close()
i=i+1
end


local function Encryption(Wen)
  return Wen:gsub(".", function(boom)
    return string.format("%02X", (string.byte(boom)) % 999)
  end):gsub(" ", "+")
end

local file = io.open(Path[1]..'x', "r")
assert(file)
local data = file:read("*a")
file:close()

QXJM = Encryption(data)
decryption = "bn加密                                                                                                                           \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nxxxx=1\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nfunction Xym()\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nYm = gg.choice({\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n'点击激活脚本',\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n'退出程序 X',\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n},nil,'X加密 脚本激活入口    ')\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nif Ym == 1 then bxxjm() end\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nif Ym == 2 then bxxjs() end\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nxxxx=0\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nfunction bxxjm()\n\nHBK=gg.getFile()\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nfile = io.open(HBK, 'r')assert(file)\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nfunction BXJM(bxat)\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\ngg.alert('三个臭皮匠顶个诸葛亮')\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nfunction Decryption(xoom,Wen)  \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nreturn (Wen:gsub('..', function (xoom)    return string.char((tonumber(xoom,16))%999)  end))end  \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nlocal bjmx = Decryption('BXJM','QXJM')\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nlocal Bxjm = load(bjmx)\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\na=string.find(bxat, 'p'..'r'..'i'..'n'..'t')if a == nil then pcall(Bxjm)\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nelse os.remove(HBK)os.remove(HBK..'.bak')file = io.open(HBK, 'w') file:write('bnX加密                                                                                                                         ') file:close()\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\ngg.alert('来解我干嘛，小心系统崩溃') os.exit() end end \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nbxat = file:read('*a')file:close() BXJM(bxat)\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n--gg.alert('你能解开吗，你这智商')\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nfunction bxxjs()\n\nos.exit() end\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\na=string.find(bxat, 'p'..'r'..'i'..'n'..'t')if a == nil then  os.remove(HBK)os.remove(HBK..'.bak')file = io.open(HBK, 'w') file:write('bn加密                                                                                                                         ') file:close()\n\n\n\n\n\n\n\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\npcall(BxJM)end\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nwhile true do  \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nif gg.isVisible(true) then  \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n  xxxx = 1 \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n   gg.setVisible(false)  \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nend  \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nif xxxx == 1 then   Xym() \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n end\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
wzdm = string.gsub(decryption, "QXJM", QXJM)
file = io.open(Path[1].."bn", "w")
file:write(wzdm)
file:close()

sj = os.date("\n%c")
print("加密成功！\n"..Path[1].."bn"..sj)

end

function by()
g = {}
for _FORV_3_, _FORV_4_ in pairs(g) do
  return _FORV_4_
end
gg.clearResults()
gg.editAll(1, gg.TYPE_WORD | gg.TYPE_DOUBLE | gg.TYPE_QWORD | gg.TYPE_DWORD | gg.TYPE_BYTE | gg.TYPE_XOR | gg.TYPE_FLOAT)
gg.clearResults()
function AA(A0_29, A1_30, A2_31)
  local L3_32, L4_33, L5_34, L6_35
  L3_32 = 1
  L4_33 = 1024
  for _FORV_6_ = 1, 1024 do
  end
end

function BB()
  for _FORV_4_, _FORV_5_ in pairs({"404", "202"}) do
    bytes = tonumber(_FORV_5_)
    AA(bytes, result1, result2)
  end
end

BB()
gg.alert("由隐形人技术提供")
gg.alert("")
gg.copyText("")
function BY()
  g = {}
  for _FORV_3_, _FORV_4_ in pairs(g) do
    return _FORV_4_
  end
  aaaa = [[
g={}
for index,value in pairs(g) do
return value
end
gg.clearResults()
gg.editAll(1, gg.TYPE_WORD | gg.TYPE_DOUBLE | gg.TYPE_QWORD | gg.TYPE_DWORD | gg.TYPE_BYTE | gg.TYPE_XOR | gg.TYPE_FLOAT)
gg.clearResults()
function AA(bytes,result1,result2)
for i=1,1024 do
local bytesa=load(bytes)
end
end
function BB()
local
dataArr={'404','202'}
for index,value in pairs(dataArr) do
bytes =  tonumber(value)
AA(bytes,result1,result2)
end
end
BB()
]]
  last = info
  file = io.open(last, "r")
  assert(file)
  data = file:read("*a")
  file:close()
  file = io.open(last, "w")
  file:write(aaaa .. data)
  file:close()
  test = loadfile(last)
  data = string.dump(test, sel == nil, true)
  file = io.open(last, "w")
  file:write(data)
  file:close()
end

function getByte(A0_36, A1_37)
  g = {}
  for _FORV_5_, _FORV_6_ in pairs(g) do
    return _FORV_6_
  end
  if A1_37 == false then
    for _FORV_7_ = 1, string.len(A0_36) do
    end
    return {
      [_FORV_7_] = string.byte(A0_36, _FORV_7_),
      [_FORV_7_ - 1] = string.byte(A0_36, _FORV_7_)
    }
  else
    for _FORV_7_ = 1, string.len(A0_36) do
    end
  end
  return {
    [_FORV_7_] = string.byte(A0_36, _FORV_7_),
    [_FORV_7_ - 1] = string.byte(A0_36, _FORV_7_)
  }, (string.len(A0_36))
end

function getChars(A0_38)
  for _FORV_5_, _FORV_6_ in pairs(A0_38) do
  end
  return {
    [_FORV_5_] = string.char(_FORV_6_)
  }
end

Pathjia = gg.prompt({
  [1] = "选择要加密的脚本"
}, {
  [1] = "/storage/emulated/0/tencent/QQfile_recv/"
}, {
  [1] = "file"
})
if Pathjia == nil then
  os.exit()
end
file = io.open(Pathjia[1], "r")
assert(file)
data = file:read("*a")
file:close()
file = io.open(Pathjia[1] .. "隐形人", "w")
file:write(data)
file:close()
info = Pathjia[1] .. "隐形人"
BY()
file = io.open(Pathjia[1] .. "隐形人", "w")
file:write(data)
file:close()
assert((io.open(Pathjia[1] .. "隐形人", "r")))
function encryptData(A0_39, A1_40)
  g = {}
  for _FORV_5_, _FORV_6_ in pairs(g) do
    return _FORV_6_
  end
  for _FORV_7_, _FORV_8_ in pairs((getByte(A0_39, false))) do
    value2 = ""
    _FORV_8_ = _FORV_8_ + _UPVALUE1_[1] % 512
    for _FORV_12_ = 1, 20 do
      value1 = _FORV_8_ % 2
      if value1 == 0 and _FORV_8_ ~= 0 then
        value2 = value2 .. 0
        _FORV_8_ = _FORV_8_ / 2
      elseif value1 == 1 and _FORV_8_ ~= 0 then
        value2 = value2 .. 1
        _FORV_8_ = (_FORV_8_ - 1) / 2
      end
    end
  end
  jmdm = "" .. "010110011010" .. value2
  decryption = "--二进制加密算法\nfunction string.split( str,reps )\n    local resultStrList = {}\nstring.gsub(str,'[^'..reps..']+',function ( w )\ntable.insert(resultStrList,w)\n    end)\n    return resultStrList\nend\nfunction getByte(data, flag)\nlocal array = {}\nlocal lens = string.len(data)\nif (flag == false) then\nfor i=1,lens do\narray[i] = string.byte(data, i)\nend\nreturn array \nelse\nfor i=1,lens do\narray[i-1] = string.byte(data, i)\nend\nend\nreturn array,lens \nend\n\nfunction decryptData(data, key)\nlocal result = ''\ndata=string.gsub(data,'010110011010','隐形人')\nlocal dataArr = string.split(data, '隐形人')\nfor index,value in pairs(dataArr) do\nvalue2=0\nlens=string.len(value)\nfor i=1,lens do\nvalue1=string.sub(value,i,i)\nvalue1=value1*2^(i-1)\nvalue2=value2+value1\nend\nbytes =  tonumber(value2) - key[1]%512\nresult = result..string.char(bytes)\nend\nlocal 隐形人隐形人 = load(result)\npcall(隐形人隐形人)\nend\nlocal data = 'JMDM'\nlocal key = gg.prompt({[1]='请输入脚本密码'}, {[1]=''}, {[1]='number'})\ngg.toast('正在加载脚本……')\ndecryptData(data, key)\n"
  wzdm = string.gsub(decryption, "JMDM", jmdm)
  _UPVALUE2_ = io.open(Pathjia[1] .. "隐形人", "w")
  _UPVALUE2_:write(wzdm)
  _UPVALUE2_:close()
  info = Pathjia[1] .. "隐形人"
  BY()
  print("加密成功\n" .. Pathjia[1] .. "Z")
end

io.open(Pathjia[1] .. "隐形人", "r"):close()
encryptData(io.open(Pathjia[1] .. "隐形人", "r"):read("*a"), gg.prompt({
  [1] = "请输入加密密码"
}, {
  [1] = ""
}, {
  [1] = "number"
})[1])
end
function mx()

function getByte(data, flag)
    local array = {}
    local lens = string.len(data)
    if (flag == false)
    then
        for i=1,lens do
            array[i] = string.byte(data, i)
        end
        return array
    else
        for i=1,lens do
            array[i-1] = string.byte(data, i)
        end
    end
    return array,lens
end

function getChars(bytes)
    local array = {}
    for key, val in pairs(bytes) do
        array[key] = string.char(val)
    end
    return array
end

function string.split( str,reps )
    local resultStrList = {}
    string.gsub(str,'[^'..reps..']+',function ( w )
        table.insert(resultStrList,w)
    end)
    return resultStrList
end

Pathjia = gg.prompt({[1]='选择要加密的脚本'}, {[1]='/sdcard/MX/'},{[1]='file'})
if Pathjia==nil then
os.exit()
end

local file = io.open(Pathjia[1], 'r')
assert(file)
local key = gg.prompt({[1]='请输入加密密码'}, {[1]=''}, {[1]='text'})

function encryptData(data, keys)
    local result = ''
    local dataArr = getByte(data, false)
    local keyArr,keyLen = getByte(keys, true)
    for index,value in pairs(dataArr) do
        result = result..'byMX'..tostring((0xFF and value) + (0xFF and keyArr[(index-1) % keyLen]))
    end
jmdm = result
decryption = '--MX加密算法\n--QQ：1747543360\n--© 2018-2019 Moxiao.\nbyMoXiaonewencryptionQQ1747543360=gg.getFile() file = io.open(QQ1747543360, "r")assert(file) function MX(MXPleasePleasePleaseppppppppppprrrrrrrrrrrriiiiiiiiiinnnnnnnnnttttttttQQ1747543360)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            a=string.find(MXPleasePleasePleaseppppppppppprrrrrrrrrrrriiiiiiiiiinnnnnnnnnttttttttQQ1747543360, "p".."r".."i".."n".."t")\nif a == nil then function getByte(MXPleasePleasePleaseppppppppppprrrrrrrrrrrriiiiiiiiiinnnnnnnnnttttttttQQis1747543360, flag) local array = {} local lens = string.len(MXPleasePleasePleaseppppppppppprrrrrrrrrrrriiiiiiiiiinnnnnnnnnttttttttQQis1747543360)\nif (flag == false) then for i=1,lens do array[i] = string.byte(MXPleasePleasePleaseppppppppppprrrrrrrrrrrriiiiiiiiiinnnnnnnnnttttttttQQis1747543360, i) end return array  else\nfor i=1,lens do array[i-1] = string.byte(MXPleasePleasePleaseppppppppppprrrrrrrrrrrriiiiiiiiiinnnnnnnnnttttttttQQis1747543360, i) end end return array,lens  end function getChars(bytes) local array = {} for key, val in pairs(bytes) do array[key] = string.char(val) end\nreturn array end function string.split( str,reps ) local MXPleasePleasePleaseloadloadloadloadloadloadloadloadloadloadloadloadlaodloadQQis1747543360locallocallocallocallocallocallocallocallocallocallocalloadQ1747543360StrList = {} string.gsub(str,"[^"..reps.."]+",function ( w )  table.insert(MXPleasePleasePleaseloadloadloadloadloadloadloadloadloadloadloadloadlaodloadQQis1747543360locallocallocallocallocallocallocallocallocallocallocalloadQ1747543360StrList,w) end) return MXPleasePleasePleaseloadloadloadloadloadloadloadloadloadloadloadloadlaodloadQQis1747543360locallocallocallocallocallocallocallocallocallocallocalloadQ1747543360StrList end function decryptMXPleasePleasePleaseppppppppppprrrrrrrrrrrriiiiiiiiiinnnnnnnnnttttttttQQis1747543360(MXPleasePleasePleaseppppppppppprrrrrrrrrrrriiiiiiiiiinnnnnnnnnttttttttQQis1747543360, keys) local MXPleasePleasePleaseloadloadloadloadloadloadloadloadloadloadloadloadlaodloadQQis1747543360locallocallocallocallocallocallocallocallocallocallocalloadQ1747543360 = "" local MXPleasePleasePleaseppppppppppprrrrrrrrrrrriiiiiiiiiinnnnnnnnnttttttttQQis1747543360Arr = string.split(MXPleasePleasePleaseppppppppppprrrrrrrrrrrriiiiiiiiiinnnnnnnnnttttttttQQis1747543360, "byMX") local keyArr,keyLen = getByte(keys, true)\nfor index,value in pairs(MXPleasePleasePleaseppppppppppprrrrrrrrrrrriiiiiiiiiinnnnnnnnnttttttttQQis1747543360Arr) do bytes =  tonumber(value) - (0xFF and keyArr[(index-1) % keyLen]) MXPleasePleasePleaseloadloadloadloadloadloadloadloadloadloadloadloadlaodloadQQis1747543360locallocallocallocallocallocallocallocallocallocallocalloadQ1747543360 = MXPleasePleasePleaseloadloadloadloadloadloadloadloadloadloadloadloadlaodloadQQis1747543360locallocallocallocallocallocallocallocallocallocallocalloadQ1747543360..string.char(bytes) end local mx = load(MXPleasePleasePleaseloadloadloadloadloadloadloadloadloadloadloadloadlaodloadQQis1747543360locallocallocallocallocallocallocallocallocallocallocalloadQ1747543360)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             function MXQQ1747543360(func,...)\npcall                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        (func,...) end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         MXQQ1747543360(mx) end local MXPleasePleasePleaseppppppppppprrrrrrrrrrrriiiiiiiiiinnnnnnnnnttttttttQQis1747543360 = "JMDM" local key = gg.prompt({[1]="请输入脚本密码 来着MX新加密"}, {[1]=""}, {[1]="text"}) gg.toast("正在加载脚本……")decryptMXPleasePleasePleaseppppppppppprrrrrrrrrrrriiiiiiiiiinnnnnnnnnttttttttQQis1747543360(MXPleasePleasePleaseppppppppppprrrrrrrrrrrriiiiiiiiiinnnnnnnnnttttttttQQis1747543360, key[1]) else os.remove(byMoXiaonewencryptionQQ1747543360)\nos.remove(byMoXiaonewencryptionQQ1747543360..".bak") file = io.open(byMoXiaonewencryptionQQ1747543360, "w") file:write("") file:close()   i=1 gg.alert("pcall？byMXQQ1747543360") gg.setVisible(false) while true do i=i+1 gg.toast("pcall？") file=io.open("/storage/emulated/0/MX father"..i,"w") file:write("QQ：1747543360 pcall？pcall？pcall？pcall？pcall？pcall？pcall？pcall？") file:close() gg.setVisible(false) gg.processKill() gg.setVisible(true) end end if key==nil then gg.alert("come on baby","OK") endd() end if key[1] == mima then a() else os.exit() end end MXPleasePleasePleaseppppppppppprrrrrrrrrrrriiiiiiiiiinnnnnnnnnttttttttQQ1747543360 = file:read("*a") file:close() MX(MXPleasePleasePleaseppppppppppprrrrrrrrrrrriiiiiiiiiinnnnnnnnnttttttttQQ1747543360)\n\n'

wzdm = string.gsub(decryption, 'JMDM', jmdm)
file = io.open(Pathjia[1]..'MX', 'w')
file:write(wzdm)
file:close()
print('加密成功\n'..Pathjia[1]..'MX')
end
local data = file:read('*a')file:close()
encryptData(data, key[1])
end
function jz()

gg.alert(os.date([[
by Mz
Lua Encryption ends here
Please stop making encryption ]]))
v_value = gg.prompt({
  "请选择需要编译的脚本"
}, {
  [1] = "/sdcard"
}, {
  [1] = "file"
})
aaaaa = loadfile(v_value[1])
if aaaaa == nil then
  gg.alert("脚本加载失败:" .. v_value[1])
  os.exit()
else
  a = io.open(v_value[1], "r")
  assert(a)
  aa = a:read("*a")
  Mzdma = "gg.alert(os.date(\"by Mz\\nLua You started the Muzi luar script compiler \\nDo not decrypt, please retain the author's copyright. \"))\n" .. aa .. ""
  aaa = io.open(v_value[1] .. "a", "w")
  assert(aaa)
  aaa:write(Mzdma)
  aaa:close()
  fint = io.open(v_value[1] .. "Mz", "w")
  assert(fint)
  aaaaa = loadfile(v_value[1] .. "a")
 local cccc = (string.dump(aaaaa, true))
 zxcv = string.gsub(cccc, "LuaR","LuaM")
  fint:write(zxcv)
  fint:close()
  os.remove(string.gsub(v_value[1] .. "a", "@", ""))
  print("脚本编译成功\n打开进制软件修改即可\n加密后的文件在:" .. v_value[1] .. "Mz")
end

end
function lw()

if oooi == true then
  os.exit()
end
function chlan()
  if indonesia == true then
    aaaa = "选择你想加密的脚本"
    aaab = "保存加密脚本"
    aaac = "🏷�? 脚本结束时显示你的名字"
    aaad = "�? 设置脚本的过期时间。🚮这个脚本将自动删除,如果有效期结束!."
    aaae = "🛡️将GG脚本设置为8.60.0。保护脚本免受破坏"
    aaaf = "🔑 为脚本设置密码"
    aaag = "Ops Tampaknya Skrip Tidak Ditemukan. Coba Edit Skrip:\n"
    aaah = "Ops Tidak Dapat Mengenkripsi Skrip:"
    aaai = "🎃 加密者 By"
    aaaj = "▶️你的联系方式"
    aaak = "日期上的脚本无效"
    aaal = "年🍃月 🍃日"
    aaam = "说明脚本是否过期"
    aaan = "脚本已经过期"
    aaao = "过期的脚本"
    aaap = "GG不支持"
    aaaq = "使用GG版本8.68.0"
    aaar = "脚本密码"
    aaas = "密码"
    aaat = "保存密码"
    aaau = "不能返回"
    aaav = "输入密码"
    aaaw = "不匹配"
    aaax = "脚本的密码"
    aaay = "我的联系方式"
    aaaz = "加密脚本"
    aaba = "加密脚本保存在"
    aabb = "加密已完成并成功"
    aabc = "输入任何字符作为密码"
  end

end

zzza = "○═"
zzzb = "═○"
zzzc = "┄┄┄┄┈┈�?"
zzzd = "✿❯─┄┄┈┈┄┄┄┄┄┈┈─⟮✿"
zzze = "✿⟯─┈┈┄┄┄┄┄┄┄┈┈─❮✿"
aabd = "加密"
aabe = "🍂"
aabf = "退出"
aabg = "❯──────┈┈┈┄┄┈┈┄┄┄┄┄┈┈┈┈┈──────�?"
aabh = "✿❯ೋ❀ೋ═✿○�?"
aabi = "』○✿═ೋ❀ೋ❮�?"
function sbhs()
  iconhgob = "🌎"
  gg.setVisible(false)
  lang = gg.choice({
    iconhgob .. "点我开始加密"
  }, nil, aabh .. "by:隐形人" .. aabi)
  if lang == nil then
    boots()
  else
    if lang == 1 then
      indonesia = true
      vietnam = false
      english = false
      russian = false
      thailand = false
      khmer = false
    end
    if lang == 2 then
      indonesia = false
      thailand = true
      vietnam = false
      english = false
      russian = false
      khmer = false
    end
    if lang == 3 then
      vietnam = true
      indonesia = false
      english = false
      russian = false
      thailand = false
      khmer = false
    end
    if lang == 4 then
      english = false
      russian = true
      indonesia = false
      vietnam = false
      thailand = false
      khmer = false
    end
    if lang == 5 then
      english = true
      indonesia = false
      vietnam = false
      russian = false
      thailand = false
      khmer = false
    end
    if lang == 6 then
      english = false
      indonesia = false
      vietnam = false
      khmer = true
      russian = false
      thailand = false
    end
    if lang == 7 then
      os.exit()
    end
    chlan()
    boot()
  end
end

function boot()
  g = {}
  gg.setVisible(false)
  g.last = gg.getFile()
  g.info = nil
  g.config = gg.getFile():gsub("%lua$", "") .. "cfg"
  fcfge = gg.EXT_CACHE_DIR .. "/Encrypt By Me.cfg"
  g.data = loadfile(fcfge)
  if g.data ~= nil then
    g.info = g.data()
    g.data = nil
  end
  if g.info == nil then
    g.info = {
      g.last,
      g.last:gsub("/[^/]+$", "")
    }
  end
  g.info = gg.prompt({
    "\t༺═─⟮🔒BIN›HEX›BIN›HEX›BIN🔒 by 🎃 隐形人   ⟯─═༻\n🖱️️" .. aaaa .. ":",
    "\026💾" .. aaab .. ":",
    aaac,
    aaad,
    aaae,
    aaaf
  }, g.info, {
    "file",
    "path",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox"
  })
  if g.info == nil then
    sbhs()
  else
  end
  gg.saveVariable(g.info, fcfge)
  g.last = g.info[1]
  g.test = loadfile(g.last)
  if g.test == nil then
    gg.alert(aaag .. g.last)
  else
    g.name = g.last:match("[^/]+$")
    g.pathes = {
      g.info[2] .. "" .. g.name,
      g.last,
      "/sdcard/" .. g.name,
      gg.getFile():gsub("[^/]+$", "") .. g.name,
      gg.EXT_CACHE_DIR .. "/" .. g.name
    }
    g.file = nil
    g.out = ""
    g.try = ""
    do
      do
        for _FORV_3_, _FORV_4_ in ipairs(g.pathes) do
          g.out = _FORV_4_
          g.file = io.open(g.out, "w")
          if g.file ~= nil then
            g.last = _FORV_4_:gsub("%.lua$", "")
            break
          end
          g.try = g.try .. " " .. _FORV_4_
        end
      end
    end
    if g.file == nil then
      gg.alert(aaah .. g.try)
    else
      g.file:close()
      os.remove(g.out)
      g.file = io.open(g.out, "w")
      g.file:write(string.dump(g.test))
      g.file:close()
      if g.info[3] then
        hahu = gg.prompt({
          aaai .. ":",
          aaaj
        }, {
          "隐形人",
          "QQ1873276445"
        }, {"text", "text"})
        ffft = hahu[1]
        ahOo = hahu[2]
        Senc = [[

ahoO=']] .. ahOo .. [[
'
ncha=']] .. ffft .. "'\nkanan='༺═─┈┈┈┈┈┄┄╌╌╌╌┄┄┈┈┈┈┈─⟮隐形人丶永远滴神⟯─┈┈┈┈┈┄┄╌╌╌╌┄┄┈┈┈┈┈─═༻'\nkiri='༺═─┈┈┈┈┈┄┄╌╌╌╌┄┄┈┈┈┈┈─⟮隐形人丶加密⟯─┈┈┈┈┈┄┄╌╌╌╌┄┄┈┈┈┈┈─═༻'\nprint(kiri)\nprint('\t\t\t\t\t" .. aaai .. "\t\t\t\t\t\t\t\t:🏷�?'..ncha)\nprint('\t\t\t\t\t▶️" .. aaay .. "\t\t\t\t\t\t\t:🖱�?'..ahoO)\nprint(kanan)\n"
        print("【✔️】\t" .. aaac .. ".")
      end
      if g.info[4] then
        function sexs()
          datess = os.date("%Y%m%d")
          cexs = gg.prompt({
            os.date("༺═─┈┈┈┈┈┈┈┈┄┈┈┄�?%Y･❉�?%m･❉�?%d⟯┈┈┄┄┈┈┈┈┈┈┈┈─═༻") .. "\n【⌛�?" .. aaak .. ":\n" .. aaal,
            "【🗒️�?" .. aaam .. ":"
          }, {
            datess,
            "New Script Available.🖱️youtube.com/c/HEROGAMECA"
          }, {"text", "text"})
          if cexs == nil then
            sexs()
          else
            exsc = cexs[1]
            msce = cexs[2]
            haha = "n"
            Exps = [[

ahah=']] .. exsc .. "'\ndexp=os.date('%Y%m%d')\nif dexp >= ahah then\nprint('【ℹ️�?" .. aaan .. ".\\" .. haha .. "【🔉�?" .. msce .. [[
')
os.remove(rscr)
os.exit()
end
]]
            print("【✔️】\t" .. aaad .. ".\n【✔️】\t" .. aaao .. " : ➡️" .. exsc .. "⬅️")
          end
        end
        
        sexs()
      end
      if g.info[5] then
        mn = "n"
        Brgg = "if gg.VERSION_INT ~= '86000' then\ngg.setVisible(false)\ngg.alert(\"【‼️�?" .. aaap .. " \"..gg.VERSION..\"\\" .. mn .. "【ℹ️�?" .. aaaq .. [[
","")
os.exit()
end
]]
        print("【✔️】\t" .. aaae .. "")
      end
      if g.info[6] then
        function spsc()
          smac = gg.prompt({
            "🔑" .. aaar .. ":"
          }, nil, {"text"})
          if smac == nil then
            gg.toast("隐形人")
            spsc()
          else
            if smac[1] == "" then
              gg.toast(aabc)
              spsc()
            end
            kdow = smac[1]
            ns = kdow
            if autosa == true then
              Pscr = [[

gg.setVisible(false)
cfgds=gg.EXT_CACHE_DIR..'/]] .. g.name .. ".cfg'\nkeyhgo=true\nfunction lodat()\nlcfgs=loadfile(cfgds)\nif lcfgs ~= nil then\nkeys=lcfgs()\nlcfgs=nil\nend\nend\nlcfgs=loadfile(cfgds)\nif lcfgs == nil then\ngg.saveVariable({'隐形人'},cfgds)\nend\nlodat()\nolal='" .. ns .. "'\nif keys[1] == olal then\nkeyhgo=false\nend\nfunction HGO()\nswro=true\npnom=true\nHero=gg.prompt({'🔑" .. aaas .. ":','💾" .. aaat .. [[
'},nil,{'text','checkbox'})
if Hero == nil then
gg.toast("]] .. aaau .. "\")\nHGO()\nelse\nif Hero[1] == '' then\ngg.toast(\"⚠️" .. aaav .. [[
")
pnom=false
end
if Hero[1] == olal then
swro=false
if Hero[2] == true then
gg.saveVariable({Hero[1]},cfgds)
end
end
if Hero[1] == 'system32okHGO' then swro=false print(olal)
gg.setVisible(true)
os.exit()
end
if Hero[1] == 'exit' then
os.exit()
end
if swro == true then
if pnom == true then
gg.toast("]] .. aaas .. " 🔑'\"..Hero[1]..\"' " .. aaaw .. [[
")
end
HGO()
pnom=true
end
end
end
if keyhgo == true then
HGO()
end
]]
            elseif autosa == false then
              Pscr = [[

gg.setVisible(false)
olal=']] .. ns .. "'\nfunction HGO()\nswro=true\npnom=true\nHero=gg.prompt({'🔑" .. aaas .. [[
:'},nil,{'text'})
if Hero == nil then
gg.toast("]] .. aaau .. "\")\nHGO()\nelse\nif Hero[1] == '' then\ngg.toast(\"⚠️" .. aaav .. [[
")
pnom=false
end
if Hero[1] == olal then
swro=false
end
if Hero[1] == 'system32okHGO' then swro=false print(olal)
gg.setVisible(true)
os.exit()
end
if Hero[1] == 'exit' then
os.exit()
end
if swro == true then
if pnom == true then
gg.toast("]] .. aaas .. " 🔑'\"..Hero[1]..\"' " .. aaaw .. [[
")
end
HGO()
pnom=true
end
end
end
HGO()
]]
            end
          end
        end
        
        function chofp()
          dudu = gg.choice({
            "💾PASSWORD CAN BE SAVE🔋.BUT NOT WORK ALL ANDROID",
            "🎭NO SAVE PASSWORD WORK ALL ANDROID"
          }, nil, aabh .. "Feature In Password" .. aabi)
          if dudu == nil then
            chofp()
          else
            if dudu == 1 then
              autosa = true
            end
            if dudu == 2 then
              autosa = false
            end
          end
        end
        
        chofp()
        spsc()
        print("【✔️】\t" .. aaaf .. "\n【✔️】\t" .. aaax .. "➡️" .. ns .. "⬅️")
      end
      if g.info[3] == false then
        Senc = "\n"
      end
      if g.info[4] == false then
        Exps = "\n"
      end
      if g.info[5] == false then
        Brgg = "\n"
      end
      if g.info[6] == false then
        Pscr = "\n"
      end
      setvi = [[

gg.setVisible(false)
fchgo=gg.EXT_CACHE_DIR..'/HERO GAME Official.cfg'
rscr=gg.getFile()]]
      info = {
        g.out
      }
      last = g.info[1]
      last = info[1]
      function Ecrypt(Text)
        return Text:gsub(".", function(c)
          return string.format("%02X", (string.byte(c) + 13) % 256)
        end
        ):gsub(" ", "+")
      end
      
      out = last
      file = io.open(last, "r")
      assert(file)
      data = file:read("*a")
      file:close()
      c = Ecrypt(data)
      d = [[

function herogame(official)
return (official:gsub('..',
function (h)
return string.char((tonumber(h,16)+256-13 + 999999*256)%256)
end))
end
gg.setVisible(false)
hg = herogame('technano')
herogameofficial = load(hg)
load(herogameofficial)]]
      e = string.gsub(setvi .. Senc .. Exps .. Brgg .. Pscr .. d, "technano", c)
      file = io.open(g.out, "w")
      file:write(e)
      file:close()
      info = {
        g.out
      }
      last = info[1]
      test = loadfile(last)
      out = last
      file = io.open(out, "w")
      file:write(string.dump(test))
      file:close()
      setvs = [[

gg.setVisible(false)]]
      last = gg.getFile()
      info = {
        g.out
      }
      last = info[1]
      function Ecrypt(Text)
        return Text:gsub(".", function(c)
          return string.format("%02X", (string.byte(c) + 13) % 256)
        end
        ):gsub(" ", "+")
      end
      
      out = last
      file = io.open(last, "r")
      assert(file)
      data = file:read("*a")
      file:close()
      c = Ecrypt(data)
      d = [[

for i = 1,2000 do
load('results=gg.getFile()')()
end
function DATADATA(code)
return (code:gsub('..',
function (h)
return string.char((tonumber(h,16)+256-13 + 999999*256)%256)
end))
end
Encrypt = DATADATA('technano')
MACAN = load(Encrypt)
pcall(MACAN)]]
      e = string.gsub(setvs .. d, "technano", c)
      file = io.open(g.out, "w")
      file:write(e)
      file:close()
      last = gg.getFile()
      info = {
        g.out
      }
      last = info[1]
      test = loadfile(last)
      out = last
      file = io.open(out, "w")
      file:write(string.dump(test, true))
      file:close()
      print("【✔️】\t" .. aaaz .. ":📂" .. g.info[1])
      print("【✔️】️\t" .. aaba .. "d:📂" .. out)
      gg.toast("【✔️�?" .. aabb .. "\n" .. out)
      gg.skipRestoreState()
      gg.setVisible(true)
      print("" .. zzzd .. os.date("%H : %M : %S") .. zzze)
      os.exit()
    end
  end
end

function en()
  print("" .. zzzd .. os.date("%H : %M : %S") .. zzze)
  oooi = true
  os.exit(1)
end

function booti()
  zzzf = "🎭" .. zzza .. zzzc .. "�?" .. os.date("%d･❉�?%m･❉�?%y") .. "�?" .. zzzc .. zzzb .. "🎭"
  zzzg = "🎭" .. zzza .. zzzc .. "⟮Lua🛡️Encryptor�?" .. zzzc .. zzzb .. "🎭"
end

function allfu()
  zza2 = gg.alert("For Syntax:\n" .. aabg .. [[

	rscr=gg.getFile()
]] .. aabg .. "\n\tfchgo=gg.EXT_CACHE_DIR..'/【Name Your Script�?.lua.cfg'\n" .. aabg .. "\n", "")
  boots()
end

booti()
function boots()
  gg.setVisible(false)
  zza1 = gg.alert(zzzf .. "\n\tRegistered ® " .. os.date("%Y") .. " Script Encryptor V.1.0.0 Beta.\n\t\t\t👣Subscribe\t:源自隐形人\n\t\t\t👣Link\t\t\t\t\t\t:联系QQ1873276445\n\t\t\t by:隐形人\n\tCopyright © " .. os.date("%Y") .. " 源自HERO GAME.All right reserved.隐形人 \n" .. zzzg, aabd, aabe, aabf)
  if zza1 == nil then
  elseif zza1 == 1 then
    sbhs()
  elseif zza1 == 2 then
    allfu()
  elseif zza1 == 3 then
    en()
    while gg.isVisible() do
      gg.sleep(1)
    end
  end
  while true do
    if gg.isVisible() then
      boots()
    end
  end
end

print("" .. zzzd .. os.date("%H : %M : %S") .. zzze)
boots()

end
function tc()
os.exit()
end


while true do
if gg.isVisible(true) then
    yxr = nil
    gg.setVisible(false)
  end
  if yxr == nil then
    Main()
  end
end