local g = {}
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_CACHE_DIR .. '/' .. gg.getFile():match('[^/]+$') .. 'cfg'
g.DATA = loadfile(g.config)
if g.DATA ~= nil then g.info = g.DATA() g.DATA = nil end
if g.info == nil then g.info = {g.last, g.last:gsub('/[^/]+$', '')} end                                                                                                                                                                                                                                                                                                                                                            KsMk='\n'Ksmk_Khba='%d'Ksbok='TEST'Ks5tk='EQ'Ks3mk='LOADBOOL'Ks5alk='SETTABLE'Ks5altk='GETTABLE'Ks5ok='RETURN  ; garbage'Ksmy='🅦🅐🅘🅣 🗑️' --Bitch What are you doing here (i can see you 🌚🌚)
gg.alert([[
𝚃𝚘𝚘𝚕 𝙰𝚞𝚝𝚘 𝙻𝚊𝚜𝚖
𝚝𝚑𝚒𝚜 𝚃𝚘𝚘𝚕 𝚆𝚒𝚕𝚕 𝚁𝚎𝚖𝚘𝚟𝚎 

📌Big Lasm
📌Bypass 1-0

📍]]..Ks5alk..[[

📍]]..Ks5altk..[[

📍]]..Ks3mk..[[

📍]]..Ksbok..[[

📍]]..Ks5tk..[[


𝚘𝚗𝚎 𝙲𝚕𝚒𝚌𝚔

𝚃𝚘𝚘𝚕 𝙱𝚢 𝙰𝙻𝙸 𝙰𝙻-𝚀𝚊𝚒𝚜𝚒
𝚃𝚑𝚡 𝚃𝚘 𝚖𝚢𝚜𝚎𝚕𝚏 𝙵𝚘𝚛 𝚝𝚑𝚒𝚜 𝚃𝚘𝚘𝚕
]])

while true do
g.info = gg.prompt({
[1] ='🗂️Select File',
[2] ='📩Select path',
[3] ='📌Big Lasm',
[4] ='📌Bypass 1-0',
[5] ='📍'..Ks5alk..'',
[6] ='📍'..Ks5altk..'',
[7] ='📍'..Ks3mk..'',
[8] ='📍'..Ksbok..'',
[9] ='📍'..Ks5tk..''
},g.info,{
[1] ='file',
[2] ='path',
[3] ='checkbox',
[4] ='checkbox',
[5] ='checkbox',
[6] ='checkbox',
[7] ='checkbox',
[8] ='checkbox',
[9] ='checkbox'
})
if g.info == nil then
return
end
gg.saveVariable(g.info, g.config)
g.last = g.info[1]
if loadfile(g.last) == nil then
return gg.alert([[⚠️Script not Found! ⚠️]])
else
g.out = g.last:match('[^/]+$')
g.out = g.out:gsub('.lua', '.𝐹𝑖𝑥_ᵐʷ')
g.out = g.info[2] .. '/' .. g.out .. '.lua'
print(''..KsMk..'▬▬▬▬▬▬▬▬▬▬▬▬▬'..KsMk..'' .. g.out .. ''..KsMk..'▬▬▬▬▬▬▬▬▬▬▬▬▬')
info = {g.out}
end
local DATA = io.input(g.last):read('*a')
if g.info[3] then
ALI = string.char(0)
ALI = ALI:rep(10000)
DATA = DATA:gsub(string.char(4,17,39,0,0)..ALI,string.char(4,1,0,0,0))
DATA = DATA:gsub(string.char(4,255,255,1,0)..ALI,string.char(4,1,0,0,0))
gg.toast('Big Lasm Done')
io.open(g.out,'w'):write(DATA):close()
os.exit()
end
io.output(g.out, 'w')
io.write(DATA) 
DATA = string.dump(load(DATA), true, true)
DATA = gg.internal2(load(DATA), g.out)
io.input(g.out, 'r')
DATA = io.read('*a')
DATA=DATA
:gsub('linedefined [^'..KsMk..']*','linedefined 0')
:gsub('lastlinedefined [^'..KsMk..']*','lastlinedefined 0')
:gsub('numparams [^'..KsMk..']*','numparams 0')
:gsub('	','')
:gsub(''..KsMk..''..KsMk..'',''..KsMk..'')
:gsub('[^'..KsMk..']*'..Ks5ok..''..KsMk..'','')
:gsub('SET_TOP','')
gg.toast(''..Ksmy..'')
if g.info[4] then
DATA=DATA:gsub('.maxstacksize [^'..KsMk..']*'..KsMk..'.end','.maxstacksize 250'..KsMk..'RETURN'..KsMk..'.end'..KsMk..'')
gg.toast(''..Ksmy..'')
end
if g.info[8] then
DATA = DATA
:gsub('[^'..KsMk..']*'..Ksbok..' v'..Ksmk_Khba..' '..Ksmk_Khba..''..KsMk..'','')
:gsub('[^'..KsMk..']*'..Ksbok..' v'..Ksmk_Khba..' '..Ksmk_Khba..''..KsMk..'',''..Ks5ok..'')
gg.toast(''..Ksmy..'')
end
if g.info[9] then
DATA = DATA
:gsub('[^'..KsMk..']*'..Ks5tk..' nil v'..Ksmk_Khba..' v'..Ksmk_Khba..''..KsMk..'','')
:gsub('[^'..KsMk..']*'..Ks5tk..' nil v'..Ksmk_Khba..' v'..Ksmk_Khba..''..KsMk..'',''..Ks5ok..'')
gg.toast(''..Ksmy..'')
end
if g.info[7] then
DATA = DATA
:gsub('[^'..KsMk..']*'..Ks3mk..' v'..Ksmk_Khba..' '..Ksmk_Khba..''..KsMk..'','')
:gsub('[^'..KsMk..']*'..Ks3mk..' v'..Ksmk_Khba..' '..Ksmk_Khba..''..KsMk..'',''..Ks5ok..'')
gg.toast(''..Ksmy..'')
end
if g.info[5] then
DATA = DATA
:gsub('[^'..KsMk..']*'..Ks5alk..' v'..Ksmk_Khba..' \'[^'..KsMk..']*\' v'..Ksmk_Khba..''..KsMk..'','')
:gsub('[^'..KsMk..']*'..Ks5alk..' v'..Ksmk_Khba..' \'[^'..KsMk..']*\' v'..Ksmk_Khba..''..KsMk..'',''..Ks5ok..'')
:gsub('[^'..KsMk..']*'..Ks5alk..' v'..Ksmk_Khba..' \'i\' v'..Ksmk_Khba..''..KsMk..'','')
:gsub('[^'..KsMk..']*'..Ks5alk..' v'..Ksmk_Khba..' \'i\' v'..Ksmk_Khba..''..KsMk..'',''..Ks5ok..'')
gg.toast(''..Ksmy..'')
end
if g.info[6] then
DATA = DATA
:gsub('[^'..KsMk..']*'..Ks5altk..' v'..Ksmk_Khba..' v'..Ksmk_Khba..' nil'..KsMk..'','')
:gsub('[^'..KsMk..']*'..Ks5altk..' v'..Ksmk_Khba..' v'..Ksmk_Khba..' nil'..KsMk..'',''..Ks5ok..'')
:gsub('[^'..KsMk..']*'..Ks5altk..' v'..Ksmk_Khba..' \'i\' v'..Ksmk_Khba..''..KsMk..'','')
:gsub('[^'..KsMk..']*'..Ks5altk..' v'..Ksmk_Khba..' \'i\' v'..Ksmk_Khba..''..KsMk..'',''..Ks5ok..'')
:gsub('[^'..KsMk..']*'..Ks5altk..' v'..Ksmk_Khba..' v'..Ksmk_Khba..' \'Porn\''..KsMk..'','')
gg.toast(''..Ksmy..'')
end
DATA=DATA:gsub('[^'..KsMk..']*'..Ks5ok..''..KsMk..'','') or nil
DATA = string.gsub(string.dump(load(DATA),true),'LuaR','LuaR',1)
io.open(g.out,'w'):write(DATA):close()
io.output(g.out, 'w')
io.write(DATA) 
DATA = string.dump(load(DATA), true, true)
DATA = gg.internal2(load(DATA), g.out)
io.input(g.out, 'r')
DATA = io.read('*a')
DATA=DATA
:gsub('	','')
:gsub(''..KsMk..''..KsMk..'',''..KsMk..'')
:gsub('[^'..KsMk..']*'..Ks5ok..''..KsMk..'','')
gg.toast(''..Ksmy..'')
if g.info[8] then
DATA = DATA
:gsub('[^'..KsMk..']*'..Ksbok..' v'..Ksmk_Khba..' '..Ksmk_Khba..''..KsMk..'','')
:gsub('[^'..KsMk..']*'..Ksbok..' v'..Ksmk_Khba..' '..Ksmk_Khba..''..KsMk..'',''..Ks5ok..'')
gg.toast(''..Ksmy..'')
end
if g.info[9] then
DATA = DATA
:gsub('[^'..KsMk..']*'..Ks5tk..' nil v'..Ksmk_Khba..' v'..Ksmk_Khba..''..KsMk..'','')
:gsub('[^'..KsMk..']*'..Ks5tk..' nil v'..Ksmk_Khba..' v'..Ksmk_Khba..''..KsMk..'',''..Ks5ok..'')
gg.toast(''..Ksmy..'')
end
if g.info[7] then
DATA = DATA
:gsub('[^'..KsMk..']*'..Ks3mk..' v'..Ksmk_Khba..' '..Ksmk_Khba..''..KsMk..'','')
:gsub('[^'..KsMk..']*'..Ks3mk..' v'..Ksmk_Khba..' '..Ksmk_Khba..''..KsMk..'',''..Ks5ok..'')
gg.toast(''..Ksmy..'')
end
if g.info[5] then
DATA = DATA
:gsub('[^'..KsMk..']*'..Ks5alk..' v'..Ksmk_Khba..' \'[^'..KsMk..']*\' v'..Ksmk_Khba..''..KsMk..'','')
:gsub('[^'..KsMk..']*'..Ks5alk..' v'..Ksmk_Khba..' \'[^'..KsMk..']*\' v'..Ksmk_Khba..''..KsMk..'',''..Ks5ok..'')
:gsub('[^'..KsMk..']*'..Ks5alk..' v'..Ksmk_Khba..' \'i\' v'..Ksmk_Khba..''..KsMk..'','')
:gsub('[^'..KsMk..']*'..Ks5alk..' v'..Ksmk_Khba..' \'i\' v'..Ksmk_Khba..''..KsMk..'',''..Ks5ok..'')
gg.toast(''..Ksmy..'')
end
if g.info[6] then
DATA = DATA
:gsub('[^'..KsMk..']*'..Ks5altk..' v'..Ksmk_Khba..' v'..Ksmk_Khba..' nil'..KsMk..'','')
:gsub('[^'..KsMk..']*'..Ks5altk..' v'..Ksmk_Khba..' v'..Ksmk_Khba..' nil'..KsMk..'',''..Ks5ok..'')
:gsub('[^'..KsMk..']*'..Ks5altk..' v'..Ksmk_Khba..' \'i\' v'..Ksmk_Khba..''..KsMk..'','')
:gsub('[^'..KsMk..']*'..Ks5altk..' v'..Ksmk_Khba..' \'i\' v'..Ksmk_Khba..''..KsMk..'',''..Ks5ok..'')
:gsub('[^'..KsMk..']*'..Ks5altk..' v'..Ksmk_Khba..' v'..Ksmk_Khba..' \'Porn\''..KsMk..'','')
gg.toast(''..Ksmy..'')
end
DATA=DATA:gsub('[^'..KsMk..']*'..Ks5ok..''..KsMk..'','') or nil
DATA = string.gsub(string.dump(load(DATA),true),'LuaR','LuaR',1)
io.open(g.out,'w'):write(DATA):close()
G='❌' if g.info[6] then G='✔️' end B='❌' if g.info[3] then B='✔️' end W='❌' if g.info[4] then W='✔️' end S='❌' if g.info[5] then S='✔️' end L='❌' if g.info[7] then L='✔️' end T='❌' if g.info[8] then T='✔️' end E='❌' if g.info[9] then E='✔️' end
gg.alert([[
🗑️Done Delete All Blocker✓

📂 Save in : ]]..g.out..[[ 


📌Big Lasm ]]..B..[[


📌Bypass 1-0 ]]..W..[[


📍]]..Ks5alk..[[ ]]..S..[[


📍]]..Ks5altk..[[ ]]..G..[[


📍]]..Ks3mk..[[ ]]..L..[[


📍]]..Ksbok..[[ ]]..T..[[


📍]]..Ks5tk..[[ ]]..E..[[
]])
return  
end 
