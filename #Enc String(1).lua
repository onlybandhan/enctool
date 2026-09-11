local g = {}
g.ALI = gg.prompt({
"📂Select File"},
{"/sdcard/download/#TEST.lua"},{"file"})
if g.ALI == nil then 
gg.alert("pls select file") 
return end
local DATA = io.input(g.ALI[1], "r"):read("*a")
function enc(str)
sd = {}
gb = {str:byte(1,-1)}
res = ''
for i = 1, #gb do
gb[i] = (gb[i] - 1 - (1 + i) * (1 + i)) % 256
end
return "{"..table.concat(gb, ",").."}"
end
xnxx=[[
function KSMK(c)
res = ''
for i in ipairs(c) do
res = res..string.char((c[i] + 1 + (1 + i) * (1 + i)) % 256)
end
return res
end
]]
DATA = DATA:gsub('"(.-)"', function(c)
c = load('return "'..c..'"')()
T = enc(c)
return "KSMK("..T..")"
end)
DATA = DATA:gsub("'(.-)'", function(c)
c = load("return '"..c.."'")()
T = enc(c)
return 'KSMK('..T..')'
end)
for G, v in pairs(gg) do
ALI = "gg." .. G
DATA = DATA:gsub(ALI, function()
A = enc(G)
return "gg[KSMK("..A..")]"
end)
end
KS = {"print%(", "load%(", "loadfile%("}
for i = 1, #KS do
DATA = DATA:gsub(KS[i], function(c)
c = c:gsub("%(", "")
T = enc(c)
return "_G[KSMK("..T..")]("
end)
end
for G, v in pairs(os) do
ALI = "os." .. G
DATA = DATA:gsub(ALI, function()
A = enc(G)
return "os[KSMK("..A..")]"
end)
end
for G, v in pairs(io) do
ALI = "io." .. G
DATA = DATA:gsub(ALI, function()
A = enc(G)
return "io[KSMK("..A..")]"
end)
end
for G, v in pairs(string) do
ALI = "string." .. G
DATA = DATA:gsub(ALI, function()
A = enc(G)
return "string[KSMK("..A..")]"
end)
end
for G, v in pairs(math) do
ALI = "math." .. G
DATA = DATA:gsub(ALI, function()
A = enc(G)
return "math[KSMK("..A..")]"
end)
end
for G, v in pairs(table) do
ALI = "table." .. G
DATA = DATA:gsub(ALI, function()
A = enc(G)
return "table[KSMK("..A..")]"
end)
end
for G, v in pairs(debug) do
ALI = "debug." .. G
DATA = DATA:gsub(ALI, function()
A = enc(G)
return "debug[KSMK("..A..")]"
end)
end
DATA=xnxx..DATA
DATA = string.dump(load(DATA), true)
io.open(g.ALI[1]..".lua","w"):write(DATA):close()