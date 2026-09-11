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
a=gg.prompt({"选择脚本","生成路径"},{[1]="/sdcard/tencent/QQfile_recv/1.lua",[2]="/sdcard/tencent/QQfile_recv"},{"file","path"})
code=io.open(a[1],"r"):read("*a")
p="string%.char%(table%.unpack%(%(function%(A0_%d+%)\n%s+local%sL%d+_%d+%,%sL%d+_%d+%,%sL%d+_%d+%,%sL%d+_%d+\n%s+L%d+_%d+%s%=%s%{%}\n%s+O%s%=%sL%d+_%d+\n%s+L%d+_%d+%s%=%s1\n%s+L%d+_%d+%s%=%s%#A0_%d+\n%s+for%s_FORV_%d+_%s%=%s1%,%s%#A0_%d+%sdo\n%s+table%.insert%(O%,%stonumber%(A0_%d+%[_FORV_%d+_%]%,%s%d+%)%)\n%s+end\n%s+L%d+_%d+%s%=%sO\n%s+return%sL%d+_%d+\n%s+end\n%s+%)"
for i in code:gmatch(p) do
code=code:gsub(p,"MS")
end
code=code:gsub("[}][)][)][)][]]", "\}\)]")
code=code:gsub("%[MS%(%{(.-)%}[)]]", function(h)
  return "."..MS(h)
end)
TS=gg.alert("脚本转码已完成,内容如下:\n\n"..code,"复制(内容较少建议)","","写入本地")
if TS~=1 then
  io.open(a[2].."/[源].lua","w"):write(code):close()
  gg.alert("脚本生成在:\n"..a[2].."/[木酥7.0转码].lua")
else 
  gg.copyText(code)
  gg.alert("已复制")
end