

ver =""

local g = {}
g.last = gg.getFile()
g.SB = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
g.DATA = loadfile(g.config)
if g.DATA ~= nil then g.SB = g.DATA() g.DATA = nil end
if g.SB == nil then g.SB = {g.last, g.last:gsub("/[^/]+$", "")} end
while true do
g.SB = gg.prompt({
[1] = "🗂️Select File",
[2] = "📩Select Path",
[3] = "🔐Decompile only Tables for Key Finding",
[4]="🕸Decompile Functions V2(Can sometimes be better than v1, try it)",
[5] = "🗑Bypass :",
[6] = "📍GETTABUP",
[7] = "📍GETTABLE",
[8] = "📍LOADK",
[9] = "📍CALL",
[10] = "📍SETTABUP",
[11] = "📍NEWTABLE",
[12] = "📍SETLIST"
},g.SB,{
[1] = "file",
[2] = "path",
[3] = "checkbox",
[4] = "checkbox",
[5] = "checkbox",
[6] = "checkbox",
[7] = "checkbox",
[8] = "checkbox",
[9] = "checkbox",
[10] = "checkbox",
[11] = "checkbox",
[12] = "checkbox"})
if g.SB == nil then
return
end
gg.saveVariable(g.SB, g.config)
g.last = g.SB[1]
g.out = g.last:match("[^/]+$")
g.out = g.out:gsub(".lua", ".SB")
g.out = g.SB[2] .. "/" .. g.out .. ".lua"

gettabup = true
gettable = true
loadk = true
call = true
settabup = true
newtable = true
setlist = true

if g.SB[3] == true then onlyTables = true end

if g.SB[5] == true then bypass = true end

if g.SB[4] == true then  functions = true else functions = false end
if g.SB[6] == true then gettabup = false end
if g.SB[7] == true then gettable = false end
if g.SB[8] == true then loadk = false end
if g.SB[9] == true then call = false end
if g.SB[10] == true then settabup = false end
if g.SB[11] == true then newtable = false end
if g.SB[12] == true then setlist = false end

if g.SB[4] == true then tables = true else tables = false end







DATA = io.open(g.last,"r"):read("*a")

--input = io.open(g.last,"r"):read("*a")

gg.internal2(load(DATA),gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "temp","w")

DATA = io.open(gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "temp","r"):read("*a")

DATA = DATA:gsub("\t","")

io.open(gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "temp","w"):write(DATA)

DATA = io.open(gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "temp","r"):read("*a")

--DATA = io.open("/sdcard/Download/#TEST.lua.lasm","r"):read("*a")

DATA = DATA:gsub("true","\"true\"")

amount = 10000

funcnames = { }
funcupnames = { }

code = ""

codefunc = ""

sin = false

function m()
os.exit()
end

function add(str)
code=code..str
end

function addfunc(str)
codefunc=codefunc..str
end

for i=1,amount do
load("S_"..i.." = { }")()
end

for i=1,amount do
load("F_"..i.." = { }")()
end

--gg.alert("0")

DATA = DATA:gsub(
'[^\n]*GETTABUP v0 u0 %"(.-)%"\n\nGETTABUP v1 u0 %"(.-)%"', function(temp1, temp2)
return 'GETTABUP v0 u0 "'..temp1..'"\n\nLOADK v1 "STRINGFghIjkaajsuhsve'..temp2..'"'
end)


--SETLIST v%d..v%d %d\n\n
--GET TABLES WITHOUT BUGS

num=0
num1=0
num2=0
tables = ""
strt = "\n\n--------------------------------------------------------------------------------------------------------------------------------------------------------------------------\n--ALL TABLES START\n--------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
endd = "--------------------------------------------------------------------------------------------------------------------------------------------------------------------------\n--ALL TABLES END\n--------------------------------------------------------------------------------------------------------------------------------------------------------------------------\n\n"
DATA = DATA:gsub(
'NEWTABLE v%d %d %d\n%\n(.-)%\n\nSETTABUP u%d %"(.-)%" v%d', 
  function(contents, name)
  contents = contents:gsub("SETLIST v%d..v%d %d","")
  num=num+1
  num1=0
  num2=0
  name=name
    temp = name.." = {\n"..contents:gsub('SETTABLE v%d (.-) (.-)', function (st,str) num1=num1+1 return " "..st:gsub('"','').." = "..str..", " end)..""
     
    temp1 = contents:gsub('LOADK v%d (.-)', function (str) num2=num2+1 return "["..num2.."] = "..str..", " end)
    temp2 = contents:gsub('LOADBOOL v%d (%d)', function (type) num2=num2+1 if type == 0 then str = "false" else str = "true" end return "["..num2.."] = "..str..", " end)
    temp3 = contents:gsub('GETTABUP v%d u%d %"(.-)%"', function (str) num2=num2+1 return "["..num2.."] = "..str..", " end)
   tables = tables.."\n"..temp..temp1..temp2..temp3.."\n}\n"
   tables = tables:gsub('LOADK v%d %"(.-)%"',function(c) return "" end):gsub('SETTABLE v%d %"(.-)%" %"(.-)%"',function(c,d) return "" end):gsub('LOADK v%d (%d+)',function(c) return "" end):gsub('LOADBOOL v%d (%d)', function (type) return "" end):gsub('GETTABUP v%d u%d %"(.-)%"', function (str) return "" end)
   collectgarbage("collect")
return ""
  end)

-- false LOADBOOL v3 0
--true LOADBOOL v3 1

tables = strt..tables..endd
varisvar = ""


num=0
DATA = DATA:gsub(
'GETTABUP v0 u0 %"(.-)%"\n\nSETTABUP u0 %"(.-)%" v0', 
  function(nd, st)
  num=num+1
  varisvar = st.." = "..nd.." \n"
  collectgarbage("collect")
  return""
end)

num=0
DATA = DATA:gsub(
'CLOSURE v%d F(.-)\n\nSETTABUP u%d %"(.-)%" v%d', 
  function(upname, name)
  num=num+1
  load('upname = "'..upname..'" name = "'..name..'" table.insert(funcnames, name)  table.insert(funcupnames, upname) ')()
  collectgarbage("collect")
  return""
end)




function opcodes(type, input)


if type == 0 then valuexd = "S" end
if type == 1 then valuexd = "F" end


--RETURN  ; garbage

num=0
input:gsub(
'RETURN  ; garbage', 
  function()
  num=num+1
  load("temp = [[--garbage]] table.insert("..valuexd.."_"..num..",temp)")()
  collectgarbage("collect")
  return""
end)

num=0
input:gsub('[^\n]*GETTABUP v(.-) u(.-) %"(.-)%"',function(v, u, temp)
num=num+1
   if gettabup == false then return end
    --if opcodes == true then temp = "\n\n  ["..tostring(num).."]  GETTABUP  v"..v.." u"..u.."  "..temp end
    if v == "1" then temp = ""..tostring(num).."" else 
    if temp == "print" then temp = temp.."(" sin = true end
    if temp == "load" then temp = temp.."(" sin = true end
    if temp == "loadfile" then temp = temp.."(" sin = true end
    if sin == false then temp = temp.."." end end
    
    load("temp = [["..temp:gsub('%[%[','[\\['):gsub('%]%]',']\\]').."]] table.insert("..valuexd.."_"..num..",temp)")()
   -- add("["..num.."]"..temp.."(\n")
   collectgarbage("collect")
end)

--gg.alert("1")

num=0
input:gsub('[^\n]*GETTABLE v(.-) v(.-) %"(.-)%"',function(v1, v2, temp)
    if gettable == false then return end
    num=num+1
    --if opcodes == true then temp = "\n\n  ["..tostring(num).."]  GETTABLE  v"..v1.." v"..v2.."  "..temp end
    temp = temp.."("
    load("temp = [["..temp:gsub('%[%[','[\\['):gsub('%]%]',']\\]').."]] table.insert("..valuexd.."_"..num..",temp)")()
   -- add("["..num.."]"..temp.."(")
   collectgarbage("collect")
end)

--gg.alert("2")

num=0
input:gsub('[^\n]*LOADK v(.-) %"(.-)%"', function(v, temp)
    if loadk == false then return end
    num=num+1
    
    --if opcodes == true then temp = "\n\n  ["..tostring(num).."]  LOADK  v"..v.."  "..temp end
    if temp:match('STRINGFghIjkaajsuhsve') then temp = temp:gsub('STRINGFghIjkaajsuhsve','') temp = "\n"..temp else  temp = "\n\""..temp.."\"" end      
    load("temp = [["..temp:gsub('%[%[','[\\['):gsub('%]%]',']\\]').."]] table.insert("..valuexd.."_"..num..",temp)")()
    --add("["..num.."]".."\""..temp.."\"\n")
    collectgarbage("collect")
end)
  
--gg.alert("3")

num=0
input:gsub('[^\n]*CALL v(.-)..v(.-)', function(v1, v2)
    if call == false then return end
    num=num+1
    --if opcodes == true then temp = "\n\n  ["..tostring(num).."]  CALL  v"..v1.."..v"..v2.."  "..temp end
    temp = ")\n"
    load("temp = [["..temp:gsub('%[%[','[\\['):gsub('%]%]',']\\]').."]] table.insert("..valuexd.."_"..num..",temp)")()
    --add("["..num.."]"..temp)
    collectgarbage("collect")
end)

--gg.alert("4")
  
num=0
input:gsub('[^\n]*SETTABUP u(.-) %"(.-)%" (.-)%\n',function(u, temp1, temp2)
    if settabup == false then return end
    num=num+1
    --if opcodes == true then temp = "\n\n  ["..tostring(num).."]  SETTABUP  u"..u.."  \""..temp1.."\" \""..temp2.."\"" else
   if temp2 == "v0" then temp2 = "{" temp = '\n'..temp1..' = '..temp2..'\n' temp = temp1 else
    temp = '\n'..temp1..' = "'..temp2..'"\n' end
    if temp2 == "true" then temp = '\n'..temp1..' = '..temp2..'\n' end
    if temp2 == 'false' then temp = '\n'..temp1..' = '..temp2..'\n' end
    
    load("temp = [["..temp:gsub('%[%[','[\\['):gsub('%]%]',']\\]').."]] table.insert("..valuexd.."_"..num..",temp)")()
   -- add("["..num.."]"..temp.."(\n")
   collectgarbage("collect")
end)

--gg.alert("5")

--if tables == true then
num=0
input:gsub('[^\n]*NEWTABLE v(.-)', function(v)
    if newtable == false then return end
    num=num+1
    --if opcodes == true then temp = "\n\n  ["..tostring(num).."]  NEWTABLE  v"..v.."  " end
    temp = " --_niltable_"..tostring(num).."_ \n"
    load("temp = [["..temp:gsub('%[%[','[\\['):gsub('%]%]',']\\]').."]] table.insert("..valuexd.."_"..num..",temp)")()
    --add("["..num.."]"..temp)
    collectgarbage("collect")
end)

--gg.alert("6")

num=0
input:gsub('[^\n]*SETLIST v(.-)..v(.-)', function(v1, v2)
    if setlist == false then return end
    num=num+1
    --if opcodes == true then temp = "\n\n  ["..tostring(num).."]  SETLIST  v"..v1.."..v"..v2.."  " end
    temp = ""
    --load("temp = [["..temp:gsub('%[%[','[\\['):gsub('%]%]',']\\]').."]] table.insert("..valuexd.."_"..num..",temp)")()
    --add("["..num.."]"..temp)
    collectgarbage("collect")
end)

end

opcodes(0, DATA)

io.open(gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "temp","wb"):write(code)
original = io.open(gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "temp","r"):read("*a")


numfunc=0
DATA = DATA:gsub('.func F(.-) ; (.-).end ; F%d'   ,
 function(number, content)
    if functions == false then return end
    ----if opcodes == true then temp = "\n\n  ["..tostring(num).."]  CALL  v"..v1.."..v"..v2.."  "..temp end
    opcodes(1, content)
    for i=1,amount do
   load("for j=1,#F_"..tostring(i).." do addfunc(F_"..tostring(i).."[j]) end")()
   end
    temp = " function F"..number.."() \n"
    content = "\n"..codefunc.."\n"
    temp1 = content.."end\n\n"
    temp = temp..temp1
    codefunc=codefunc..temp
   numfunc=numfunc+1
   -- load("temp = [["..temp:gsub('%[%[','[\\['):gsub('%]%]',']\\]').."]] table.insert(F_"..numfunc..",temp)")()
    --add("["..num.."]"..temp)
    collectgarbage("collect")
    return ""
end)


--end

--gg.alert("7")
  
for i=1,amount do
load("for j=1,#S_"..tostring(i).." do add(S_"..tostring(i).."[j]) end")()
end

for i=1,amount do
--load("print(F_"..tostring(i)..")")()
end


for i=1,#funcnames do
codefunc = codefunc:gsub("function F"..funcupnames[i], function()
return "function "..funcnames[i]
end)
end

--print(code)
  
code = code:gsub([[""]],[["]])

code = tables:gsub("\n","")..varisvar..codefunc..code

os.remove(gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "temp")




io.open(g.out,"wb"):write(code)

gg.alert("🗿")

return end