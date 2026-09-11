LOG=string.char(0)
LOG=LOG:rep(99999999)
for ali = 1,5 do
gg.toast("💜GHA CHECKING LOG💜")
gg.searchNumber(LOG)
for i = 1,100 do 
debug.traceback(1, nil, LOG)
end
end


gg.alert("🔥Enjoy GHA Safe Script🔥")
gg.alert("🗡️Support Channel @GAMINGHACKACTION")

function SearchWrite(Search, Write, Type)    gg.clearResults()    gg.setVisible(false)    gg.searchNumber(Search[1][1], Type)    local count = gg.getResultCount()    local result = gg.getResults(count)    gg.clearResults()    local data = {}     local base = Search[1][2]    if (count > 0) then        for i, v in ipairs(result) do            v.isUseful = true         end        for k=2, #Search do            local tmp = {}            local offset = Search[k][2] - base             local num = Search[k][1]                         for i, v in ipairs(result) do                tmp[#tmp+1] = {}                 tmp[#tmp].address = v.address + offset                  tmp[#tmp].flags = v.flags              end            tmp = gg.getValues(tmp)             for i, v in ipairs(tmp) do                if ( tostring(v.value) ~= tostring(num) ) then                    result[i].isUseful = false                 end            end        end        for i, v in ipairs(result) do            if (v.isUseful) then                data[#data+1] = v.address            end        end        if (#data > 0) then           local t = {}           local base = Search[1][2]           for i=1, #data do               for k, w in ipairs(Write) do                   offset = w[2] - base                   t[#t+1] = {}                   t[#t].address = data[i] + offset                   t[#t].flags = Type                   t[#t].value = w[1]                   if (w[3] == true) then                      local item = {}                       item[#item+1] = t[#t]                       item[#item].freeze = true                       gg.addListItems(item)                   end                                 end           end           gg.setValues(t)           gg.addListItems(t)        else            gg.toast("@Vɪᴍᴀʟ_OP", false)            return false        end    else        gg.toast("Vᴀʟᴜᴇs Nᴏᴛ Fᴏᴜɴᴅ")        return false    end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "" .. xgsl .. "") else gg.toast(qmnb[2]["name"] .. "") end end end end
function setvalue(address,flags,value)  local refinevalues={}  refinevalues[1]={}  refinevalues[1].address=address  refinevalues[1].flags=flags  refinevalues[1].value=value  gg.setValues(refinevalues)  end


os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")

GHA = 1
function HOME() 
GHA = gg.choice({
"🗂️ ANTIBAN BYPASS 🗂️",
"🗂️ WALL AND COLOUR HACK 🗂️",
"🗂️ WEAPON HACKS 🗂️",
"🗂️ FUN HACKS MENU 🗂️",
"🌌 DATA ON OFF 🌌",
"❌ EXIT ❌"
}, nil, "🔥GHA SAFE SCRIPT V6🔥")
if GHA == nil then
end
if GHA == 1 then
ANTIBANS()
end
if GHA == 2 then
WHC()
end
if GHA == 3 then
MENUHACKSS()
end
if GHA == 4 then
FUN()
end
if GHA == 5 then
DATAONOFF()
end
if GHA == 6 then
CLOSE()
end
GHA = -1
end

function ANTIBANS()
ANTIBANS1 = gg.multiChoice({
"⛅Antiban Bypass 1 [Lobby]\n",
"🌩️Antiban Bypass 2 [Lobby]\n",
"⏪Back"
  }, nil, "")
if ANTIBANS1 == nil then
else
if ANTIBANS1[1] == true then
B1()
end
if ANTIBANS1[2] == true then
B2()
end
if ANTIBANS1[3] == true then
HOME()
end
GHA = -1
end
end


 
 function B1()
gg.alert("❤️GHA BYPASS ACTIVATING\n⚡@GAMINGHACKACTION")
gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("562954248388607;578351706144768", gg.TYPE_QWORD)
  gg.refineNumber("562954248388607", gg.TYPE_QWORD)
  gg.getResults(50000)
  gg.editAll("288233678981562368", gg.TYPE_QWORD)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("4398046511104;544434349408256", gg.TYPE_QWORD)
  gg.refineNumber("4398046511104", gg.TYPE_QWORD)
  gg.getResults(50000)
  gg.editAll("288233678981562368", gg.TYPE_QWORD)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("577252194516992;288233678981562368", gg.TYPE_QWORD)
  gg.refineNumber("577252194516992", gg.TYPE_QWORD)
  gg.getResults(50000)
  gg.editAll("288233678981562368", gg.TYPE_QWORD)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("582749752655872;620137442967552", gg.TYPE_QWORD)
  gg.refineNumber("582749752655872", gg.TYPE_QWORD)
  gg.getResults(50000)
  gg.editAll("288233678981562368", gg.TYPE_QWORD)
  gg.clearResults()
  
  gg.clearResults()
  
  gg.setVisible(false)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("565157566611456;566257078239232", gg.TYPE_QWORD)
  gg.refineNumber("565157566611456", gg.TYPE_QWORD)
  gg.getResults(50000)
  gg.editAll("288233678981562368", gg.TYPE_QWORD)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("582749752655872;620137442967552", gg.TYPE_QWORD)
  gg.refineNumber("582749752655872", gg.TYPE_QWORD)
  gg.getResults(50000)
  gg.editAll("288233678981562368", gg.TYPE_QWORD)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("131331;133634", gg.TYPE_DWORD)
  gg.refineNumber("131331", gg.TYPE_DWORD)
  gg.getResults(50500)
  gg.editAll("131842", gg.TYPE_DWORD)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("131330;133635", gg.TYPE_DWORD)
  gg.refineNumber("131330", gg.TYPE_DWORD)
  gg.getResults(50500)
  gg.editAll("131842", gg.TYPE_DWORD)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("4096;135682", gg.TYPE_DWORD)
  gg.refineNumber("4096", gg.TYPE_DWORD)
  gg.getResults(50500)
  gg.editAll("131842", gg.TYPE_DWORD)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("134658;134658", gg.TYPE_DWORD)
  gg.refineNumber("134658", gg.TYPE_DWORD)
  gg.getResults(50500)
  gg.editAll("131842", gg.TYPE_DWORD)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("131842;262403", gg.TYPE_DWORD)
  gg.refineNumber("131842", gg.TYPE_DWORD)
  gg.getResults(50500)
  gg.editAll("131842", gg.TYPE_DWORD)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("133890;133378", gg.TYPE_DWORD)
  gg.refineNumber("133890", gg.TYPE_DWORD)
  gg.getResults(50500)
  gg.editAll("131842", gg.TYPE_DWORD)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("133634;134914", gg.TYPE_DWORD)
  gg.refineNumber("133634", gg.TYPE_DWORD)
  gg.getResults(50500)
  gg.editAll("131842", gg.TYPE_DWORD)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1711302260", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1711302006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1986225490", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("911104607", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1734308723", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1735681395", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1718511967", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1734308723", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1986225522", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1734964063", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  
  os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.pubg.krmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.ig/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.iglite/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  gg.setRanges(16384)
gg.searchNumber('1711302260', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.editAll('0',16)
gg.setRanges(16384)
gg.searchNumber('1711302006', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.editAll('0',16)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('582749752655872;620137442967552', 32, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50000)
gg.editAll('288233678981562368',32)
gg.setRanges(16384)
gg.searchNumber('1718511986', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.editAll('0',16)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('565157566611456;566257078239232', 32, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50000)
gg.editAll('288233678981562368',32)
gg.setRanges(16384)
gg.searchNumber('1986225490', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.editAll('0',16)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('562954248388607;578351706144768', 32, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50000)
gg.editAll('288233678981562368',32)
gg.setRanges(16384)
gg.searchNumber('911104607', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.editAll('0',16)
gg.setRanges(16384)
gg.searchNumber('1734308723', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.editAll('0',16)
gg.setRanges(16384)
gg.searchNumber('1735681395', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.editAll('0',16)
gg.setRanges(16384)
gg.searchNumber('1718511967', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.editAll('0',16)
gg.setRanges(16384)
gg.searchNumber('1734308723', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.editAll('0',16)
gg.setRanges(16384)
gg.searchNumber('1986225522', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.editAll('0',16)
gg.setRanges(16384)
gg.searchNumber('1734964063', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.editAll('0',16)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('4398046511104;544434349408256', 32, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50000)
gg.editAll('288233678981562368',32)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('577,252,194,516,992;288,233,678,981,562,368', 32, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50000)
gg.editAll('288233678981562368',32)
gg.alert("GHA BYPASS ACTIVATED")
end

function B2()
gg.alert("❤️GHA BYPASS ACTIVATING\n⚡@GAMINGHACKACTION")
gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("562954248388607;578351706144768", gg.TYPE_QWORD)
  gg.refineNumber("562954248388607", gg.TYPE_QWORD)
  gg.getResults(50000)
  gg.editAll("288233678981562368", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("4398046511104;544434349408256", gg.TYPE_QWORD)
  gg.refineNumber("4398046511104", gg.TYPE_QWORD)
  gg.getResults(50000)
  gg.editAll("288233678981562368", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("577252194516992;288233678981562368", gg.TYPE_QWORD)
  gg.refineNumber("577252194516992", gg.TYPE_QWORD)
  gg.getResults(50000)
  gg.editAll("288233678981562368", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("582749752655872;620137442967552", gg.TYPE_QWORD)
  gg.refineNumber("582749752655872", gg.TYPE_QWORD)
  gg.getResults(50000)
  gg.editAll("288233678981562368", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setVisible(false)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("565157566611456;566257078239232", gg.TYPE_QWORD)
  gg.refineNumber("565157566611456", gg.TYPE_QWORD)
  gg.getResults(50000)
  gg.editAll("288233678981562368", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("582749752655872;620137442967552", gg.TYPE_QWORD)
  gg.refineNumber("582749752655872", gg.TYPE_QWORD)
  gg.getResults(50000)
  gg.editAll("288233678981562368", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("131331;133634", gg.TYPE_DWORD)
  gg.refineNumber("131331", gg.TYPE_DWORD)
  gg.getResults(50500)
  gg.editAll("131842", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("131330;133635", gg.TYPE_DWORD)
  gg.refineNumber("131330", gg.TYPE_DWORD)
  gg.getResults(50500)
  gg.editAll("131842", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("4096;135682", gg.TYPE_DWORD)
  gg.refineNumber("4096", gg.TYPE_DWORD)
  gg.getResults(50500)
  gg.editAll("131842", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("134658;134658", gg.TYPE_DWORD)
  gg.refineNumber("134658", gg.TYPE_DWORD)
  gg.getResults(50500)
  gg.editAll("131842", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("131842;262403", gg.TYPE_DWORD)
  gg.refineNumber("131842", gg.TYPE_DWORD)
  gg.getResults(50500)
  gg.editAll("131842", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("133890;133378", gg.TYPE_DWORD)
  gg.refineNumber("133890", gg.TYPE_DWORD)
  gg.getResults(50500)
  gg.editAll("131842", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("133634;134914", gg.TYPE_DWORD)
  gg.refineNumber("133634", gg.TYPE_DWORD)
  gg.getResults(50500)
  gg.editAll("131842", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1711302260", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1711302006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1986225490", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("911104607", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1734308723", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1735681395", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1718511967", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1734308723", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1986225522", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1734964063", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100000)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.pubg.krmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.ig/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.iglite/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  gg.setRanges(16384)
gg.searchNumber('1711302260', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.editAll('0',16)
gg.setRanges(16384)
gg.searchNumber('1711302006', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.editAll('0',16)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('582749752655872;620137442967552', 32, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50000)
gg.editAll('288233678981562368',32)
gg.setRanges(16384)
gg.searchNumber('1718511986', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.editAll('0',16)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('565157566611456;566257078239232', 32, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50000)
gg.editAll('288233678981562368',32)
gg.setRanges(16384)
gg.searchNumber('1986225490', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.editAll('0',16)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('562954248388607;578351706144768', 32, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50000)
gg.editAll('288233678981562368',32)
gg.setRanges(16384)
gg.searchNumber('911104607', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.editAll('0',16)
gg.setRanges(16384)
gg.searchNumber('1734308723', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.editAll('0',16)
gg.setRanges(16384)
gg.searchNumber('1735681395', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.editAll('0',16)
gg.setRanges(16384)
gg.searchNumber('1718511967', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.editAll('0',16)
gg.setRanges(16384)
gg.searchNumber('1734308723', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.editAll('0',16)
gg.setRanges(16384)
gg.searchNumber('1986225522', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.editAll('0',16)
gg.setRanges(16384)
gg.searchNumber('1734964063', 4, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100000)
gg.editAll('0',16)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('4398046511104;544434349408256', 32, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50000)
gg.editAll('288233678981562368',32)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('577,252,194,516,992;288,233,678,981,562,368', 32, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50000)
gg.editAll('288233678981562368',32)
gg.alert("GHA BYPASS ACTIVATED")
end
 
 
 
 
 
 
 
 
 


function WHC()
  WALL11 = gg.multiChoice({
    "🌈SNAPDRAGON 400 Wh & Color\n",
    "🌈SNAPDRAGON 410 Wh & Color\n",
    "🌈SNAPDRAGON 415 Wh & Color\n",
    "🌈SNAPDRAGON 425 Wh & Color\n",
    "🌈SNAPDRAGON 430 Wh & Color\n",
    "🌈SNAPDRAGON 435 Wh & Color\n",
    "🌈SNAPDRAGON 439 Wh & Color\n",
    "🌈SNAPDRAGON 450 Wh & Color\n",
    "🌈SNAPDRAGON 600 Wh & Color\n",
    "🌈SNAPDRAGON 615 Wh & Color\n",
    "🌈SNAPDRAGON 616 Wh & Color\n",
    "🌈SNAPDRAGON 625 Wh & Color\n",
    "🌈SNAPDRAGON 636 Wh & Color\n",
    "🌈SNAPDRAGON 660 Wh & Color\n",
    "🌈SNAPDRAGON 665 Wh & Color\n",
    "🌈SNAPDRAGON 675 Wh & Color\n",
    "🌈SNAPDRAGON 710 Wh & Color\n",
    "🌈SNAPDRAGON 712 Wh & Color\n",
    "🌈SNAPDRAGON 720 Wh & Color\n",
    "🌈SNAPDRAGON 820 Wh & Color\n",
    "🌈SNAPDRAGON 835 Wh & Color\n",
    "🌈SNAPDRAGON 845 Wh & Color\n",
    "🌈SNAPDRAGON 855  Wh & Color\n",
    "🌈EXYNOS 7420 Wh & Color\n",
    "🌈EXYNOS 7570 Wh & Color\n",
    "🌈EXYNOS 7870 Wh & Color\n",
    "??KIRIN 650 Wh & Color\n",
    "🌈KIRIN 655 Wh & Color\n",
    "🌈KIRIN 658 Wh & Color\n",
    "🌈KIRIN 710 Wh & Color\n",
    "🌈G90T Wh & Color\n",
    "🌈MEDIATEK P10 Wh & Color\n",
    "🌈MEDIATEK P22 Wh & Color\n",
    "🌈MEDIATEK P23 Wh & Color\n",
    "🌈MEDIATEK P60 Wh & Color\n",
    "🌈MEDIATEK P70 Wh & Color\n",
    "🌈MEDIATEK X20 Wh & Color\n",
    "🌈MEDIATEK X25 Wh & Color\n",
    "🌈EXYNOS RED Wh & Color\n",
    "🌈EXYNOS WHITE Wh & Color\n",
    "🌈KIRIN GREN Wh & Color\n",
    "🌈KIRIN  RED Wh & Color\n",
    "🌈KIRIN WHITE Wh & Color\n",
    "🌈KIRIN YELLOW Wh & Color\n",
    "🌈MEDIATEK GREEN Wh & Color\n",
    "🌈MEDIATEK RED Wh & Color\n",
    "🌈MEDIATEK YELLOW Wh & Color\n",
    "🌈MEDIATEK WHITE Wh & Color\n",
    "🌈MEDIATEK P22 GREEN Wh & Color\n",
    "🌈MEDIATEK P22 YELLOW Wh & Color\n",
    "🌈MEDIATEK P60 BLUE Wh & Color\n",
    "🌈MEDIATEK P60 RED Wh & Color\n",
    "🌈MEDIATEK P60 YELLOW Wh & Color\n",
	"⏪Back"
  }, nil, "")
  if WALL11 == nil then
  else
  if WALL11[1] == true then
      WHC400()
    end
    if WALL11[2] == true then
      WHC410()
    end
    if WALL11[3] == true then
      WHC415()
    end
    if WALL11[4] == true then
      WHC425()
    end
    if WALL11[5] == true then
      WHC430()
    end
    if WALL11[6] == true then
      WHC435()
    end
    if WALL11[7] == true then
      WHC439()
    end
    if WALL11[8] == true then
      WHC450()
    end
    if WALL11[9] == true then
      WHC600()
    end
    if WALL11[10] == true then
      WHC615()
    end
    if WALL11[11] == true then
      WHC616()
    end
    if WALL11[12] == true then
      WHC625()
    end
    if WALL11[13] == true then
      WHC636()
    end
    if WALL11[14] == true then
      WHC660()
    end
    if WALL11[15] == true then
      WHC665()
    end
    if WALL11[16] == true then
      WHC675()
    end
    if WALL11[17] == true then
      WHC710()
    end
    if WALL11[18] == true then
      WHC712()
    end
    if WALL11[19] == true then
      WHC720()
    end
    if WALL11[20] == true then
      WHC820()
    end
    if WALL11[21] == true then
      WHC835()
    end
    if WALL11[22] == true then
      WHC845()
    end
    if WALL11[23] == true then
      WHC855()
    end
       if WALL11[24] == true then
      WE7420()
    end
    if WALL11[25] == true then
      WE7570()
    end
    if WALL11[26] == true then
      WE7870()
    end
    if WALL11[27] == true then
      KIRIN650()
    end
    if WALL11[28] == true then
      KIRIN655()
    end
    if WALL11[29] == true then
      KIRIN658()
    end
    if WALL11[30] == true then
      KIRIN710()
    end
    if WALL11[31] == true then
      KIRIN970()
    end
    if WALL11[32] == true then
      WMP10()
    end
    if WALL11[33] == true then
      WMP22()
    end
    if WALL11[34] == true then
      WMP23()
    end
    if WALL11[35] == true then
      WMP60()
    end
    if WALL11[36] == true then
      WMP70()
    end
    if WALL11[37] == true then
      WMX20()
    end
    if WALL11[38] == true then
      WMX25()
    end
    if WALL11[39] == true then
      CER()
    end
    if WALL11[40] == true then
      CEW()
    end
    if WALL11[41] == true then
      CKG()
    end
    if WALL11[42] == true then
      CKR()
    end
    if WALL11[43] == true then
      CKW()
    end
    if WALL11[44] == true then
      CKY()
    end
    if WALL11[45] == true then
      CMG()
    end
    if WALL11[46] == true then
      CMR()
    end
    if WALL11[47] == true then
      CMY()
    end
    if WALL11[48] == true then
      CMW()
    end
    if WALL11[49] == true then
      CMP22G()
    end
    if WALL11[50] == true then
      CMP22Y()
    end
    if WALL11[51] == true then
      CMP60B()
    end
    if WALL11[52] == true then
      CMP60R()
    end
    if WALL11[53] == true then
      CMP60Y()
    end
    if WALL11[54] == true then
      HOME()
    end
    GHA = -1
end
end




function WHC400()
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP)
gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("3.1809475e-43;3.1949605e-43;2.0;3.2089735e-43:53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP)
gg.searchNumber("3.2229865e-43F;2.0F;-1.0F;-1.0F;2.0F:145", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(360)
gg.editAll("150", gg.TYPE_FLOAT)
gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("8,201;8,202;538,968,081:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8202", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("8", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("Wall and Color SNAPDRAGON 400 Activated")
end


function WHC410()
gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("3.1949605e-43;3.1809475e-43;2.0;3.2089735e-43", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2", 16, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("150", 16)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("8204;8205;1,194,344,451", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8204", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("15", 4)
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1,669,693,440;8205", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("8205", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("8204", 4)
  gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("856128", 4, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(4)
  gg.editAll("856118", 4)
  gg.clearResults()
  gg.searchNumber("196610;1280;196608:25", 4, false, gg.S8GN_EQUAL, 0, -1)
  gg.searchNumber("196608", 4, false)
  gg.getResults(10)
  gg.editAll("9999", 4)
  gg.clearResults()
  gg.toast("Wall and Color SNAPDRAGON 410 Activated")
end

function WHC415()
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP)
gg.searchNumber("228;1,073,741,824;1,073,741,824;229;-1,082,130,432:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,073,741,824", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("1,123,024,896", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP)
gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("3.1809475e-43;3.1949605e-43;2.0;3.2089735e-43:53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
  gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("1.14906474e-41;1.14920487e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(69)
gg.editAll("1.14892461e-41", gg.TYPE_FLOAT)
gg.clearResults()
  gg.toast("Wall and Color SNAPDRAGON 415 Activated")
end



function WHC425()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.9427268e-44;2.0;3.0828566e-44;-1.0;3.2229865e-44;3.3631163e-44;3.643376e-44", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("3.1529215e-43;2.0F;3.1669345e-43F;3.1809475e-43:49", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("200,761;92;8,204;856,124;108;196,610:409", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("8203", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("Wall and Color SNAPDRAGON 425 Activated")
end


function WHC430()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("5.8013756e-42F;-5.5695588e-40F;2.0F::100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;-127.0F::520", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("4,141D;4.7408155e21;-5.5693206e-40;4.814603e21;3.7615819e-37;2:", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(4)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
  gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("1.14906474e-41;1.14920487e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(69)
gg.editAll("1.14892461e-41", gg.TYPE_FLOAT)
gg.clearResults()
  gg.toast("Wall and Color SNAPDRAGON 430 Activated")
end


function WHC435()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2;3.7615819e-37;4.814603e21;4.7408149e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2;3.7615819e-37;1.3912552e-19;4.9252829e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(131072)
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
  gg.toast("Wall and Color SNAPDRAGON 435 Activated")
end

function WHC439()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
  gg.setRanges(131072)
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
  gg.toast("Wall and Color SNAPDRAGON 435 Activated")
end

function WHC450()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults() 
  gg.setRanges(131072)
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
  gg.toast("Wall and Color SNAPDRAGON 450 Activated")
end

function WHC600()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
  gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("1.14906474e-41;1.14920487e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(69)
gg.editAll("1.14892461e-41", gg.TYPE_FLOAT)
gg.clearResults()
  gg.toast("Wall and Color SNAPDRAGON 600 Activated")
end

function WHC615()
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP)
gg.searchNumber("3.2229865e-43;2.0;-1.0;-1.0;2.0:145", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("122", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_HEAP)
gg.searchNumber("3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("3.1809475e-43;3.1949605e-43;2.0;3.2089735e-43:53", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
  gg.clearResults()
  gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
  gg.searchNumber("1D;2D;91D:25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1;2;91", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(5)
  gg.editAll("5", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("Wall and Color SNAPDRAGON 615 Activated")
end



function WHC616()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults() 
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
  gg.setRanges(131072)
gg.searchNumber("8,196D;8,192D;8,200D::", 4, false, 536870912, 0, -1)
gg.searchNumber("8200", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("7", 4)
gg.clearResults()
  gg.toast("Wall and Color SNAPDRAGON 616 Activated")
end


function WHC625()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults() 
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("537133071;8200;1194380048:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0E8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Wall and Color SNAPDRAGON 625 Activated")
end

function WHC636()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("537133071;8200;1194380048:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0E8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Wall and Color SNAPDRAGON 636 Activated")
end

function WHC660()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("537133071;8200;1194380048:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0E8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Wall and Color SNAPDRAGON 660 Activated")
end

function WHC665()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.searchNumber("8200;8201", 4, false, 536870912, 0, -1)
gg.processResume()
gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("7", 4)
gg.processResume()
gg.toast("Wall and Color SNAPDRAGON 665 Activated")
end

function WHC675()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("537133071;8200;1194380048:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0E8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Wall and Color SNAPDRAGON 675 Activated")
end



function WHC710()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(63825)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Wall and Color SNAPDRAGON 710 Activated")
end

function WHC712()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(63825)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Wall and Color SNAPDRAGON 712 Activated")
end

function WHC720()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(63825)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Wall and Color SNAPDRAGON 720 Activated")
end


function WHC820()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(63825)
gg.editAll("6;7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Wall and Color SNAPDRAGON 820 Activated")
end



function WHC835()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO | gg.REGION_BAD)
gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(63825)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Wall and Color SNAPDRAGON 835 Activated")
end


function WHC845()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(63825)
gg.editAll("6;7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Wall and Color SNAPDRAGON 845 Activated")
end

function WHC855()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("537133066;8200;1194344459;8201:13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(63825)
gg.editAll("6;7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Wall and Color SNAPDRAGON 855 Activated")
end


function WE7420()
  gg.searchNumber("0.5;1.098618e-42;2.24207754e-44;2.69049305e-43;1.68155816e-44:645", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(25, nil, nil, nil, nil, nil, nil, nil, nil)
  do
    do
      for i, i in ipairs((gg.getResults(25, nil, nil, nil, nil, nil, nil, nil, nil))) do
        if i.flags == gg.TYPE_FLOAT then
          i.value = "0"
          i.freeze = true
        end
      end
    end
  end
  gg.addListItems((gg.getResults(25, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.processResume()
  gg.toast("Wall and Color EXYNOS 7420 Activated")
end

function WE7570()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("360;0;0;0;-640;1;1;1;0;0;0;0;1;360;640;0.5;0;0;0;0.5;1;1;0;0;0;0;0;1;1;1;1;1,098618e-48:373", gg.TYPE_FLOAT)
  gg.searchNumber("0.5", gg.TYPE_FLOAT)
  t = gg.getResults(10)
  gg.editAll("50", gg.TYPE_FLOAT)
  t[1].value = "50"
  t[2].value = "50"
  t[3].value = "50"
  t[4].value = "50"
  t[5].value = "50"
  t[6].value = "50"
  t[1].freeze = true
  t[2].freeze = true
  t[3].freeze = true
  t[4].freeze = true
  t[5].freeze = true
  t[6].freeze = true
  print("addListItems: ", gg.addListItems(t))
  gg.toast("Wall and Color EXYNOS 7570 Activated")
end

function WE7870()
  gg.searchNumber("0.5;0;1;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("2", gg.TYPE_FLOAT)
  gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("1", gg.TYPE_FLOAT)
  gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.addListItems((gg.getResults(99999, nil, nil, nil, nil, nil, nil, nil, nil)))
  gg.toast("Wall and Color EXYNOS 7870 Activated")
end

function KIRIN650()
  gg.clearResults()
  gg.searchNumber("8.4077908e-45;4.2038954e-45;1.5694543e-43;1.4012985e-45;2.8025969e-45;268.0;480.0;0.5:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
  do
    do
      for i, i in ipairs((gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil))) do
        if i.flags == gg.TYPE_FLOAT then
          i.value = "1"
          i.freeze = true
        end
      end
    end
  end
  gg.addListItems((gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)))
gg.toast("Wall and Color KIRIN 650 Activated")
end

function KIRIN658()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.5;1.4012985e-45;1.4012985e-45;3.8115318e-43;2.8025969e-45;2.2958874e-41:125", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)
  do
    do
      for i, i in ipairs((gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil))) do
        if i.flags == gg.TYPE_FLOAT then
          i.value = "20"
          i.freeze = true
        end
      end
    end
  end
  gg.addListItems((gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)))
gg.toast("Wall and Color KIRIN 658 Activated")
end

function KIRIN710()
  gg.clearResults()
  gg.searchNumber("1.8367379e-40;4.5917748e-40;4.2038954e-45;1.4012985e-45;1.793662e-43;1.4012985e-45;2.8025969e-45;1.1210388e-44;0.5:281", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(1, nil, nil, nil, nil, nil, nil, nil, nil)
  do
    do
      for i, i in ipairs((gg.getResults(1, nil, nil, nil, nil, nil, nil, nil, nil))) do
        if i.flags == gg.TYPE_FLOAT then
        end
      end
    end
  end
  gg.addListItems((gg.getResults(1, nil, nil, nil, nil, nil, nil, nil, nil)))
gg.toast("Wall and Color KIRIN 710 Activated")
end

function KIRIN970()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("8;16;32;48;40::169", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("38", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("Wall and Color KIRIN 970 Activated")
end

function WMP10()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("7.70714155e-44;5.15677835e-43;0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  var = gg.getResults(20)
  gg.editAll("2", gg.TYPE_FLOAT)
  var = gg.getResults(100)
  gg.addListItems(var)
  gg.clearResults()
gg.toast("Wall and Color Activated")
end

function WMP22()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("4;4;2;6;5;5;1;1;1;3::769", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  var = gg.getResults(1)
  gg.editAll("140", gg.TYPE_FLOAT)
  var = gg.getResults(100)
  var[1].value = 140
  var[1].freeze = true
  gg.addListItems(var)
gg.toast("Wall and Color Activated")
end

function WMP23()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("7.70714155e-44;5.15677835e-43;0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  var = gg.getResults(20)
  gg.editAll("2", gg.TYPE_FLOAT)
  var = gg.getResults(100)
  gg.addListItems(var)
  gg.clearResults()
gg.toast("Wall and Color Activated")
end

function WMP60()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("5.1567783e-43;3.5873241e-43;3.2229865e-44;0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  var = gg.getResults(20)
  gg.editAll("2", gg.TYPE_FLOAT)
  var = gg.getResults(100)
  gg.addListItems(var)
  gg.clearResults()
gg.toast("Wall and Color Activated")
end

function WMP70()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.793662e-43;3.5873241e-43;1.1210388e-44;0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  var = gg.getResults(20)
  gg.editAll("2", gg.TYPE_FLOAT)
  var = gg.getResults(100)
  var[1].value = 2
  var[1].freeze = true
  var[2].value = 2
  var[2].freeze = true
  var[3].value = 2
  var[3].freeze = true
  var[4].value = 2
  var[4].freeze = true
  var[5].value = 2
  var[5].freeze = true
  var[6].value = 2
  var[6].freeze = true
  var[7].value = 2
  var[7].freeze = true
  var[8].value = 2
  var[8].freeze = true
  var[9].value = 2
  var[9].freeze = true
  gg.addListItems(var)
  gg.clearResults()
gg.toast("Wall and Color Activated")
end

function WMX20()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("0.5;360;640;1;1;1;-640;360::", gg.POINTER_WRITABLE, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.POINTER_WRITABLE, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  var = gg.getResults(20)
  gg.editAll("0", gg.POINTER_WRITABLE)
  var = gg.getResults(100)
  gg.addListItems(var)
  gg.clearResults()
  gg.clearResults()
  gg.searchNumber("56;64;48::35", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("47", gg.TYPE_DWORD)
gg.toast("Wall and Color Activated")
end

function WMX25()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("640.0;360;0.5;0;640;360;0.5;12000;0.27913400531;0.56855899096::", gg.POINTER_WRITABLE, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  gg.searchNumber("0.5", gg.POINTER_WRITABLE, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
  var = gg.getResults(20)
  gg.editAll("2", gg.POINTER_WRITABLE)
  var = gg.getResults(100)
  gg.addListItems(var)
  gg.clearResults()
gg.toast("Wall and Color Activated")
end

function CER()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("24;802824704;32;2::21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("24", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(5)
  gg.editAll("22", gg.TYPE_DWORD)
  gg.toast("Wall and Color Activated")
end

function CEW()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("Wall and Color Activated")
end

function CKG()
  gg.clearResults()
  gg.searchNumber("24;802824704;32;2:21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("24", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("20", gg.TYPE_DWORD)
  gg.processResume()
  gg.clearResults()
gg.toast("Wall and Color Activated")
end

function CKR()
  gg.clearResults()
  gg.searchNumber("24;802824704;32;2::21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.processResume()
  gg.refineNumber("24", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("22", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("Wall and Color Activated")
end

function CKW()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("40D;32D;16D;2D::37", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("42", gg.TYPE_DWORD)
  gg.toast("Wall and Color Activated")
end

function CKY()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16;32;40;48;40:41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("36", gg.TYPE_DWORD)
gg.toast("Wall and Color Activated")
end

function CMG()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16;32;40;48;40:41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("36", gg.TYPE_DWORD)
  gg.clearResults()
gg.toast("Wall and Color Activated")
end


function CMR()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("8;16;32;48;40::169", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("38", gg.TYPE_DWORD)
  gg.clearResults()
gg.toast("Wall and Color Activated")
end

function CMY()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16;32;40;48;40:41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("36", gg.TYPE_DWORD)
gg.toast("Wall and Color Activated")
end

function CMW()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("Wall and Color Activated")
end

function CMP22G()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16;29;29;56:21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("33", gg.TYPE_DWORD)
gg.toast("Wall and Color Activated")
end

function CMP22Y()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("16;29;29;56:21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("56", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(1)
  gg.editAll("32", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("64;32;65;33:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("65", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(3)
  gg.editAll("32", gg.TYPE_DWORD)
gg.toast("Wall and Color Activated")
end

function CMP60B()
  gg.clearResults()
  gg.setRanges(4)
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("802,824,192;48;937,041,920;40;736,370,688;32;802,824,192;48;802,824,192;16;802,824,192;2;2::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("28", gg.TYPE_DWORD)
gg.toast("Wall and Color Activated")
end

function CMP60R()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.68155816e-44F;1.62092562e-12F;3162688022693019688Q;1.62092562e-12F;2.24207754e-44F:241", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("3162688022693019688", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(25, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("38", gg.TYPE_QWORD)
  gg.toast("Wall and Color Activated")
end

function CMP60Y()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("1.68155816e-44F;1.62092562e-12F;3162688022693019688Q;1.62092562e-12F;2.24207754e-44F:241", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("3162688022693019688", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(25, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("36", gg.TYPE_QWORD)
gg.toast("Wall and Color Activated")
end







function MENUHACKSS()
MENUHACKS  = gg.multiChoice({
"💫Aimlock and Aimbot",
"🚀Anti Shake",
"🎮Less Recoil",
"🧙‍♂️Magic Bullet",
"☄️Small Crosshair",
"🌟Antenna",
"🔫High Damage",
"💀Headshot",
"⚓Instant Hit",
"🎁Speed Knock",
"🚧X Hit Effect",
"🧍Stand Scope On",
"🧍Stand Scope Off",
"🧎Front Scope On",
"🧎Front Scope Off",
"🧘Sit Scope On",
"🧘Sit Scope Off",
"🔥Unlimited Ammo",
 "⏪Back "
},nil,"")
  if MENUHACKS == nil then
  else
 if MENUHACKS[1] == true then
    AIMLOCK()
    end
    if MENUHACKS[2]  == true then
      AS()
    end
    if MENUHACKS[3]  == true then
     LESS()
    end
    if MENUHACKS[4]  == true then
     MAGIC()
    end
    if MENUHACKS[5]  == true then
      CROSS()
    end
    if MENUHACKS[6]  == true then
      AIM()
    end
    if MENUHACKS[7]  == true then
      HD()
    end
    if MENUHACKS[8]  == true then
      HS()
    end        
    if MENUHACKS[9]  == true then
     INSTANTHIT()
    end        
    if MENUHACKS[10]  == true then
      SPEEDK()
    end        
    if MENUHACKS[11]  == true then
      XEFFECT()
    end        
    if MENUHACKS[12]  == true then
      STANDSCOPEON()
    end        
    if MENUHACKS[13]  == true then
      STANDSCOPEOFF()
    end        
    if MENUHACKS[14]  == true then
      FRONTSCOPEON()
    end        
    if MENUHACKS[15]  == true then
      FRONTSCOPEOFF()
    end   
     if MENUHACKS[16]  == true then
      SITON()
    end 
     if MENUHACKS[17]  == true then
      SITOFF()
    end 
     if MENUHACKS[18]  == true then
      UNLIMITED()
    end        
    if MENUHACKS[19]  == true then
      HOME()
    end
   end
  GHA = -1
end





function AIMLOCK()
so = gg.getRangesList("libUE4.so")[1].start
  py = 39368524
  setvalue(so + py, 4, 0)
  so = gg.getRangesList("libUE4.so")[1].start
  py = 39368832
  setvalue(so + py, 4, 1152327680)
 so = gg.getRangesList("libUE4.so")[1].start
  py = 39368512
  setvalue(so + py, 4, 0)
     gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber('-299890176D;2046820354D;-494071768D', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber('2046820354', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(200)
    gg.editAll('2046820353', gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA)
    gg.searchNumber('360;0.0001;1478828288', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('0.0001', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll('9999', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber('0.0001;360.0;0.0;1,478,828,416.0', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('0.0001', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(2)
    gg.editAll('5000', gg.TYPE_FLOAT)
    gg.clearResults()
end

function AS()
so=gg.getRangesList('libUE4.so')[1].start
py=0x376E57C
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x381CCE0
setvalue(so+py,16,0)
end



function LESS()
so = gg.getRangesList("libUE4.so")[1].start
py = 20370680
setvalue(so + py, 16, 0)
end

function MAGIC()
so=gg.getRangesList('libUE4.so')[1].start
py=0x3C491D0
setvalue(so+py,16,40.0)
gg.searchNumber("-88.66608428955;26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-466", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("-88.73961639404;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-568", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("280", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_BAD)
  gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-460", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-560", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("360", gg.TYPE_FLOAT)
  gg.clearResults()
end


function CROSS()
so=gg.getRangesList('libUE4.so')[1].start
py=0x1C113E8
setvalue(so+py,16,1.40129846e-45)
end


function AIM()
 gg.clearResults ()
  gg.setRanges (gg.REGION_ANONYMOUS)
  gg.searchNumber ("88.50576019287F; 87.27782440186F; -100.91194152832F; 1F :: 13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber ("88.50576019287F; 87.27782440186F; 1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults (1000, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll ("1.96875; 1.96875; 999; 1.96875; 1.96875; 999", gg.TYPE_FLOAT)
  gg.clearResults ()
end



function HD()
so = gg.getRangesList("libUE4.so")[1].start
py = 21114620
setvalue(so + py, 16, 2)
end



function HS()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10) 
gg.editAll("245", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("25;30.5", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("300;305", 16)
gg.clearResults()
os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.pubg.krmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.ig/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.igce/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/cache/GCloud.ini")
  os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
  os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.iglite/cache/GCloud.ini")
  os.remove("/sdcard/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
end

function SPEEDK()
gg.setRanges(16384)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-511703038;-336586961:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-511703038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(2)
  gg.editAll("-476053504", gg.TYPE_DWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1.6615354e35;-5.8049376e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1903895621994000383", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("-1903895621994000382", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1.6615354e35;-5.8048945e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(6)
  gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(16384)
  gg.setRanges(16384)
  gg.setRanges(16384)
  gg.clearResults()
  gg.setRanges(16384)
  localdataType = 16
  localtb2 = {
    {0, 0}
  }
  SearchWrite({
    {-1.427811E28, 0},
    {1.8175359E-27, -8},
    {6.1630956E-33, -4}
  }, {
    {-1324327739884306432, -12}
  }, 16)
  gg.clearResults()
  gg.toast("Aimbot 360° Activated")
end


function SITON()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.clearResults()
gg.searchNumber("1,100,159,584", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1,122,159,584", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Sit Scope Activated")
end

function SITOFF()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.clearResults()
gg.searchNumber("1,122,159,584", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1,100,159,584", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Sit Scope Deactivated")
end



function STANDSCOPEON()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('4138667321167981973', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4138667321167981973', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4138667321167981973', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll('4848124999984742400', gg.TYPE_QWORD)
gg.clearResults()
gg.toast('Stand Scope Activated!')
end

function STANDSCOPEOFF()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('4848124999984742400', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4848124999984742400', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4848124999984742400', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll('4138667321167981973', gg.TYPE_QWORD)
gg.clearResults()
gg.toast("Stand Scope Deactivated")
end


function FRONTSCOPEON()
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber('3497450139768418399', gg.TYPE_QWORD)
frontscoppps1 = gg.getResults(69)
gg.editAll('9074961892185783746', gg.TYPE_QWORD)
gg.clearResults()
gg.toast("Stand Scope Front Activate")
end



function FRONTSCOPEOFF()
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber('9074961892185783746', gg.TYPE_QWORD)
frontscoppps1 = gg.getResults(69)
gg.editAll('3497450139768418399', gg.TYPE_QWORD)
gg.clearResults()
gg.toast("Stand Scope Front Deactivate")
frontscoppp = off
end




function INSTANTHIT()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Instant Hit Activated!")
end

function XEFFECT()
gg.clearResults()  
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults() 
gg.toast("Effect Hit X Enabled")
end



function UNLIMITED()
so=gg.getRangesList('libUE4.so')[1].start
py=0x1F02E04
setvalue(so+py,16,0,6281913639784)
so=gg.getRangesList('libUE4.so')[1].start
py=0x81913639784
setvalue(so+py,16,0)
end








function FUN()
FUNS  = gg.multiChoice({
"⚡Wide View",
"🌱No Grass",
"💨No Fog",
"☄️Blue Fog",
"🔥Dark Mode",
"🌌Black Sky",
"👀Black Person",
"🦸Flash Speed On",
"⛷️Flash Speed Off",
"🚔Fly Jeep Car",
"🚘Fly Dacia Car",
"🚆Fly Buggy Car",
"🚖Fly All Vehicles",
"🎶Speed Jeep And Dacia",
"🧙Unlimited Jeep Fuel And Gas ",
"⏪Back "
},nil,"")
    if FUNS[1]  ==true then
      WV()
      end
    if FUNS[2]  == true then
      NG()
    end    
    if FUNS[3]  == true then
      NF()
    end    
    if FUNS[4]  == true then
      BF()
    end
    if FUNS[5]  == true then
      DM()
    end   
    if FUNS[6]  == true then
      BS()   
    end
    if FUNS[7]  == true then
      BC()
    end            
     if FUNS[8]  == true then
      Flashon()
    end    
    if FUNS[9]  ==  true then
      Flashoff()
    end    
    if FUNS[10]  == true then
      a()
    end    
    if FUNS[11]  == true then
      b()
    end    
    if FUNS[12]  == true then
      c()
    end    
    if FUNS[13]  == true then
      FlyCar()
    end    
     if FUNS[14]  == true then
      SpeedCar()
    end 
     if FUNS[15]  == true then
      Fuel()
    end 
    if FUNS[16]  == true then
      HOME()
    end
GHA = -1
end




function BS()
so=gg.getRangesList('libUE4.so')[1].start
py=0x3AD36A0
setvalue(so+py,4,-1222130000)
end


function NF()
so=gg.getRangesList('libUE4.so')[1].start
py=0x2D0DA34
setvalue(so+py,16,0)
end


function NG()
so=gg.getRangesList('libUE4.so')[1].start
py=0x2559FE8
setvalue(so+py,4,0)
end


function BC()
so=gg.getRangesList('libUE4.so')[1].start
py=0x2D96C18
setvalue(so+py,16,10.0)
end


function BF()
so = gg.getRangesList("libUE4.so")[1].start
py = 47241768
setvalue(so + py, 4, 0)
so = gg.getRangesList("libUE4.so")[1].start
py = 47241784
setvalue(so + py, 4, 0)
end

function DM()
so = gg.getRangesList("libUE4.so")[1].start
py = 49260332
setvalue(so + py, 4, 0)
end


function WV()
so=gg.getRangesList('libUE4.so')[1].start
py=0x381FCB0
setvalue(so+py,16,254.70928955078)
end


function Flashon()
  gg.clearResults()
  gg.setVisible(false)
  gg.setRanges(16384)
  gg.searchNumber("-1.8638977e-20", 16)
  gg.getResults(1)
  gg.editAll("0", 16)
  gg.clearResults()
  so=gg.getRangesList("libUE4.so")[1].start 
local py=0x130DF00
setvalue(so+py,16,-2.82465518e28)
so=gg.getRangesList("libUE4.so")[1].start 
local py=0x130DF04
setvalue(so+py,16,-2.82465518e28)
gg.clearResults()
so=gg.getRangesList("libUE4.so")[1].start 
local py=0x130DF08
setvalue(so+py,16,-2.82465518e28)
gg.clearResults()
so=gg.getRangesList("libUE4.so")[1].start 
local py=0x130DF0C
setvalue(so+py,16,-2.82465518e28)
gg.clearResults()
gg.toast("FixLag Flash")
    end

function Flashoff()
  gg.clearResults()
  gg.setVisible(false)
  gg.setRanges(16384)
  gg.searchNumber("2.2760242e-30;0.0", 16)
  gg.refineAddress("54", -1, 16)
  gg.getResults(1)
  gg.editAll("-1.8638977e-20", 16)
  gg.clearResults()
end


function FlyCar()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980.0F;4,000.0F;0.30000001192F;5.0F::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-980.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(8000)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast("All Cars Fly")
  gg.setVisible(false)
end


function SpeedCar()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.647058857;0.30000001192;0.94117647409::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.647058857;0.30000001192::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.647058857;0.30000001192::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.647058857;0.30000001192::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("50.241295", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1000;10;4D;4D;50;5;2;0.03::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.03", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(280)
gg.editAll("-0.23", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Jeep And Dacia Speed On") 
end



function a()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(61, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("955", gg.TYPE_FLOAT)
gg.sleep(1000)
if revert ~= nil then
gg.setValues(revert)
gg.toast("Fly Jeep Car On")
end
gg.clearResults()
end

function b()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(61, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("999", gg.TYPE_FLOAT)
gg.sleep(1000)
if revert ~= nil then
gg.setValues(revert)
gg.toast("Fly Dacia Car On")
end
gg.clearResults()
end

function c()
gg.clearResults()
gg.processResume()
gg.searchNumber("0.00111111114;49.9999961853;24.99999809265", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0) -- S A E E D
gg.refineNumber("0.00111111114;49.9999961853;24.99999809265", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0) -- S A E E D
gg.refineNumber("0.00111111114;49.9999961853;24.99999809265", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0) -- S A E E D
gg.refineNumber("0.00111111114;49.9999961853;24.99999809265", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0) -- S A E E D
revert = gg.getResults(61, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0.04111111114", gg.TYPE_FLOAT)
gg.processResume()
gg.sleep(1000)
if revert ~= nil then gg.setValues(revert)
gg.toast("Fly Buggy Car On")
end
gg.clearResults()
end



function Fuel()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.647058857", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("-999", 16)
gg.toast("Unlimited Jeep Fuel And Gas")
end








function DATAONOFF()
gg.clearResults()                   
gg.setRanges(gg.REGION_CODE_APP)                 
gg.searchNumber('220676386071773185', gg.TYPE_QWORD)                  
gg.getResults(69)                 
gg.editAll('220676386036121600', gg.TYPE_QWORD)          
gg.toast("📵 ɪɴᴛᴇʀɴᴇᴛ ᴅɪsᴄᴏɴɴᴇᴄᴛᴇᴅ 📵")        
gg.sleep(6000)                 
gg.editAll('220676386071773185', gg.TYPE_QWORD)                 
gg.clearResults()
gg.toast("✅ ɪɴᴛᴇʀɴᴇᴛ ᴄᴏɴɴᴇᴄᴛᴇᴅ ✅")
end




function CLOSE()
gg.copyText("https://t.me/GAMINGHACKACTION")
print("\n\n🔥Join @GAMINGHACKACTION For More Hack🔥")
os.exit()
end

while true do
  Time = os.date("")
  if gg.isVisible(true) then
    gg.setVisible(false)
    HOME()
  end
  if GHA == 1 then
    HOME()
end
end

