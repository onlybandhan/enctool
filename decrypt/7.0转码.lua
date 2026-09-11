function zhyzx(A)
    A=(((((((((string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(A, "\n", " "), "          ", " "), "         ", " "), "        ", " "), "       ", " "), "      ", " "), "     ", " "), "    ", " "), "   ", " "), "  ", " ")):gsub("function", "\nfunction")):gsub("gg.searchNumber", "\ngg.searchNumber")):gsub("gg.editAll", "\ngg.editAll")):gsub("gg.setRanges", "\ngg.setRanges")):gsub("then","then\n")):gsub("[(][)]","()\n")):gsub("elseif","如果想")):gsub("if","\nif")):gsub("如果想","elseif")
    return A
end
function MS(code)
     function split(STr, P)
        local Index = 1
        local SIndex = 1
        local Array = {}
        while true do
            local LastIndex = string.find(STr, P, Index)
            if not LastIndex then
                Array[SIndex] = string.sub(STr, Index, string.len(STr))
        break
            end
        Array[SIndex] = string.sub(STr, Index, LastIndex - 1)
        Index = LastIndex + string.len(P)
        SIndex = SIndex + 1
        end
        return Array
    end
  code=code:gsub("\n"," ")
  code=code:gsub(" ","")
  code=code:gsub(" ","")
  code=code:gsub(" ","")
  code=code:gsub(" ","")
  code=code:gsub('"',"")
  aaa=split(code,",")
  O={}
  for i = 1, #aaa do
        table.insert(O, tonumber(aaa[i], 16))
  end
  return string.char(table.unpack(O))
end
function ZM()
if JB==nil then 
  JB="/sdcard/tencent/QQfile_recv/ms.lua"
else
end
a=gg.prompt({"Script","Path"},{[1]=JB,[2]="/sdcard/tencent/QQfile_recv"},{"file","path"})
code=io.open(a[1],"r"):read("*a")
os.remove(a[1])
code=code:gsub("%[MS%(%{(.-)%}[)]]", function(h)
  return "."..MS(h)
end)
code=zhyzx(code)
io.open(a[2].."/[木酥7.0转码].lua","w"):write(code):close()
gg.alert("转码已完成，脚本生成在:\n"..a[2].."/[木酥7.0转码].lua")
end
function GS()
js=js+1
if jb==nil then
  jb="/sdcard/tencent/QQfile_recv/ms.lua"
else
end
gs=gg.prompt({"Select script to transcode twice"},{[1]=jb},{"file"})
code=io.open(gs[1],"r"):read("*a")
code=code:gsub("\n"," ")
code=code:gsub("  "," ")
code=code:gsub("  "," ")
code=code:gsub("  "," ")
p="string%.char%(table%.unpack%(%(function%(A0_%d+%)%slocal%sL%d+_%d+%,%sL%d+_%d+%,%sL%d+_%d+%,%sL%d+_%d+%sL%d+_%d+%s%=%s%{%}%sO%s%=%sL%d+_%d+%sL%d+_%d+%s%=%s1%sL%d+_%d+%s%=%s%#A0_%d+%sfor%s_FORV_%d+_%s%=%s1%,%s%#A0_%d+%sdo%stable%.insert%(O%,%stonumber%(A0_%d+%[_FORV_%d+_%]%,%s%d+%)%)%send%sL%d+_%d+%s%=%sO%sreturn%sL%d+_%d+%send%s%)"
for i in code:gmatch(p) do
code=code:gsub(p,"MS")
end
code=code:gsub("[}][)][)][)][]]", "\}\)]")
if js<2 then
  io.open(gs[1]..js,"w"):write(code):close()
gg.alert("This script is generated at: \ n" ..gs[1] ..js)
gg.alert("Excute Again")
  jb=gs[1]..js
  GS() 
else
  os.remove(gs[1])
  io.open((gs[1]):gsub("1", "").."format", "w"):write(code):close()
xw=gg.alert("This script is generated at: \n"..(gs[1]):gsub("1", "").."Format \n\nAfter formatting, go to transcoding","whether")
  if xw==3 then
    os.exit()
  else
    if xw==1 then
      JB=(gs[1]):gsub("1","").."format"
      ZM()
    end
  end
end
end
ts=gg.alert("Welcome to use 7.0 transcoding \ nPlease format the original script first", "Format", "", "Turn on transcoding")
if ts==nil or ts==2 then
elseif ts==1 then
  js=0
  GS()
elseif ts==3 then
  ZM()
end