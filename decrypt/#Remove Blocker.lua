local SN = { }
SN.match = gg.getFile()
SN.variable = gg.EXT_CACHE_DIR .. "/" .. SN.match:match("[^/]+$") .. ".blocker"
SN.prompt = nil
if loadfile(SN.variable) ~= nil then
SN.prompt = loadfile(SN.variable)()
end
if SN.prompt == nil then
SN.prompt = {
	SN.match
	}
end
while true do
SN.prompt = gg.prompt({
	"🎟 Choose File :"
	},SN.prompt,{
		"file"
		})
if not SN.prompt then gg.alert("Script was cancelled") os.exit() end
gg.saveVariable(SN.prompt,SN.variable)
SN.DATA = io.input(SN.prompt[1]):read('*a')
if not load(SN.DATA) then print("⚠️ Failed To Disassemble Script ⚠️") gg.setVisible(true) break end
SN.output = SN.prompt[1]:gsub("/[^/]+$", "").."/Fixed.lua"
gg.internal2(load(string.dump(load(SN.DATA),true,true)),SN.output)
SN.DATA = io.input(SN.output):read("*a")
SN.DATA = SN.DATA:gsub("\t",""):gsub("linedefined %-(%d+)",function(num)
return "linedefined "..num
end):gsub("RETURN  ; garbage\n\n",""):gsub("%.numparams 250",".numparams 0")
SN.DATA = SN.DATA:gsub('MOVE v%d+ v%d+\n\nLOADBOOL v%d+ %d+\n\nTEST v%d+ %d+\n\nNEWTABLE v%d+ %d+ %d+\n\nLOADNIL v%d+..v%d+\n\nLOADNIL v%d+..v%d+\n\nLEN v%d+ v%d+\n\nEQ %d+ v%d+ v%d+\n\nUNM v%d+ v%d+\n\nLEN v%d+ v%d+\n\nGETTABLE v%d+ v%d+ v%d+\n\nRETURN \n\n','')
SN.DATA = SN.DATA:gsub('NEWTABLE v%d+ %d+ %d+\n\nNEWTABLE v%d+ %d+ %d+\n\nMOD v%d+ nil nil\n\nSETLIST v%d+..v%d+ %d+\n\nNEWTABLE v%d+ %d+ %d+\n\nMOD v%d+ nil nil\n\nSETLIST v%d+..v%d+ %d+\n\nSETLIST v%d+..v%d+ %d+\n\nMOVE v%d+ v%d+\n\nNEWTABLE v%d+ %d+ %d+\n\nMOD v%d+ nil nil\n\nSETLIST v%d+..v%d+ %d+\n\nGETTABUP v%d+ u%d+ v%d+\n\nSETTABLE v%d+ ".-" v%d+\n\n',"")
SN.DATA = SN.DATA:gsub('NEWTABLE v%d+ %d+ %d+\n\nNEWTABLE v%d+ %d+ %d+\n\nLOADNIL v%d+..v%d+\n\nBNOT v%d+ v%d+\n\nLOADNIL v%d+..v%d+\n\nUNM v%d+ v%d+\n\nMOD v%d+ v%d+ nil\n\nSETLIST v%d+..v%d+ %d+\n\nUNM v%d+ v%d+\n\nSETTABLE v%d+ v%d+ v%d+\n\nNEWTABLE v%d+ %d+ %d+\n\nBNOT v%d+ v%d+\n\nUNM v%d+ v%d+\n\nMOD v%d+ v%d+ v%d+\n\nSETLIST v%d+..v%d+ %d+\n\nNEWTABLE v%d+ %d+ %d+\n\nBNOT v%d+ v%d+\n\nUNM v%d+ v%d+\n\nMOD v%d+ v%d+ v%d+\n\nSETLIST v%d+..v%d+ %d+\n\nNEWTABLE v%d+ %d+ %d+\n\nLOADNIL v%d+..v%d+\n\nBNOT v%d+ v%d+\n\nLOADNIL v%d+..v%d+\n\nUNM v%d+ v%d+\n\nMOD v%d+ v%d+ nil\n\nSETLIST v%d+..v%d+ %d+\n\nUNM v%d+ v%d+\n\nGETTABLE v%d+ v%d+ v%d+\n\nCALL v%d+..v%d+ v%d+..v%d+\n\nNEWTABLE v%d+ %d+ %d+\n\nLOADNIL v%d+..v%d+\n\nBNOT v%d+ v%d+\n\nLOADNIL v%d+..v%d+\n\nUNM v%d+ v%d+\n\nMOD v%d+ v%d+ nil\n\nSETLIST v%d+..v%d+ %d+\n\nUNM v%d+ v%d+\n\nNEWTABLE v%d+ %d+ %d+\n\nLOADNIL v%d+..v%d+\n\nBNOT v%d+ v%d+\n\nLOADNIL v%d+..v%d+\n\nUNM v%d+ v%d+\n\nMOD v%d+ v%d+ nil\n\nSETLIST v%d+..v%d+ %d+\n\nSETTABLE v%d+ v%d+ v%d+\n\n','')
SN.DATA = SN.DATA:gsub('NEWTABLE v%d+ %d+ %d+\n\nNEWTABLE v%d+ %d+ %d+\n\nLOADNIL v%d+..v%d+\n\nMOD v%d+ v%d+ v%d+\n\nSETLIST v%d+..v%d+ %d+\n\nNEWTABLE v%d+ %d+ %d+\n\nLOADNIL v%d+..v%d+\n\nMOD v%d+ v%d+ v%d+\n\nSETLIST v%d+..v%d+ %d+\n\nSETLIST v%d+..v%d+ %d+\n\nMOVE v%d+ v%d+\n\nNEWTABLE v%d+ %d+ %d+\n\nLOADNIL v%d+..v%d+\n\nMOD v%d+ v%d+ v%d+\n\nSETLIST v%d+..v%d+ %d+\n\nGETTABUP v%d+ u%d+ v%d+\n\nSETTABLE v%d+ ".-" v%d+\n\n','')
SN.DATA = SN.DATA:gsub('NEWTABLE v%d+ %d+ %d+\n\nNEWTABLE v%d+ %d+ %d+\n\nLOADNIL v%d+..v%d+\n\nBNOT v%d+ v%d+\n\nLOADNIL v%d+..v%d+\n\nUNM v%d+ v%d+\n\nLOADNIL v%d+..v%d+\n\nMOD v%d+ v%d+ v%d+\n\nSETLIST v%d+..v%d+ %d+\n\nUNM v%d+ v%d+\n\nSETTABLE v%d+ v%d+ v%d+\n\nNEWTABLE v%d+ %d+ %d+\n\nBNOT v%d+ v%d+\n\nUNM v%d+ v%d+\n\nMOD v%d+ v%d+ v%d+\n\nSETLIST v%d+..v%d+ %d+\n\nNEWTABLE v%d+ %d+ %d+\n\nBNOT v%d+ v%d+\n\nUNM v%d+ v%d+\n\nMOD v%d+ v%d+ v%d+\n\nSETLIST v%d+..v%d+ %d+\n\nNEWTABLE v%d+ %d+ %d+\n\nLOADNIL v%d+..v%d+\n\nBNOT v%d+ v%d+\n\nLOADNIL v%d+..v%d+\n\nUNM v%d+ v%d+\n\nLOADNIL v%d+..v%d+\n\nMOD v%d+ v%d+ v%d+\n\nSETLIST v%d+..v%d+ %d+\n\nUNM v%d+ v%d+\n\nGETTABLE v%d+ v%d+ v%d+\n\nCALL v%d+..v%d+ v%d+..v%d+\n\nNEWTABLE v%d+ %d+ %d+\n\nLOADNIL v%d+..v%d+\n\nBNOT v%d+ v%d+\n\nLOADNIL v%d+..v%d+\n\nUNM v%d+ v%d+\n\nLOADNIL v%d+..v%d+\n\nMOD v%d+ v%d+ v%d+\n\nSETLIST v%d+..v%d+ %d+\n\nUNM v%d+ v%d+\n\nNEWTABLE v%d+ %d+ %d+\n\nLOADNIL v%d+..v%d+\n\nBNOT v%d+ v%d+\n\nLOADNIL v%d+..v%d+\n\nUNM v%d+ v%d+\n\nLOADNIL v%d+..v%d+\n\nMOD v%d+ v%d+ v%d+\n\nSETLIST v%d+..v%d+ %d+\n\nSETTABLE v%d+ v%d+ v%d+\n\n','')
SN.DATA = SN.DATA:gsub('LOADK v%d+ "mi"\n\nLOADK v%d+ "mi"\n\nGETTABLE v%d+ v%d+ v%d+\n\nCALL v%d+%.%.v%d+ v%d+%.%.v%d+\n\nSETTABLE v%d+ v%d+ v%d+\n\n',"")
SN.DATA = string.dump(load(SN.DATA),true,true)
io.open(SN.output,'w'):write(SN.DATA):close()
--[[
line = {}
for takeline in io.lines(SN.output) do
line[#line + 1] = takeline
end
]]--
break
end
