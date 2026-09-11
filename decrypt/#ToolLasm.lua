local g = {}
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
g.xn_xnn_uf__xks = loadfile(g.config)
if g.xn_xnn_uf__xks ~= nil then g.info = g.xn_xnn_uf__xks() g.xn_xnn_uf__xks = nil end
if g.info == nil then g.info = {g.last, g.last:gsub("/[^/]+$", "")} end
while true do
g.info = gg.prompt({
"File",
"path"
},g.info,{
"file",
"path"
})
if g.info == nil then
return
end
gg.saveVariable(g.info, g.config)
g.last = g.info[1]
if loadfile(g.last) == nil then
return gg.alert([[⚠️Script not Found! ⚠️]])
else
g.out = g.last:match("[^/]+$")
g.out = g.out:gsub(".lua", ".Fix")
g.out = g.info[2] .. "/" .. g.out .. ".lua"
print("\n▬▬▬▬▬▬▬▬▬▬▬▬▬\n" .. g.out .. "\n▬▬▬▬▬▬▬▬▬▬▬▬▬")
info = {g.out}
end
local xn_xnn_uf__xks = io.input(g.last):read('*a')
io.output(g.out, "w")
io.write(xn_xnn_uf__xks) 
xn_xnn_uf__xks = string.dump(load(xn_xnn_uf__xks), true, true)
xn_xnn_uf__xks = gg.internal2(load(xn_xnn_uf__xks), g.out)
io.input(g.out, "r")
xn_xnn_uf__xks = io.read("*a")
xn_xnn_uf__xks = xn_xnn_uf__xks:gsub("linedefined [^\n]*","linedefined 0"):gsub("lastlinedefined [^\n]*","lastlinedefined 0"):gsub("numparams [^\n]*","numparams 0"):gsub("	",""):gsub("\n\n","\n"):gsub("[^\n]*RETURN  ; garbage\n",""):gsub(".maxstacksize [^\n]*\n.end",".maxstacksize 250\nRETURN\n.end\n")
xn_xnn_uf__xks = string.gsub(string.dump(load(xn_xnn_uf__xks),true),"LuaR","LuaR",1)
io.open(g.out,"w"):write(xn_xnn_uf__xks):close()
gg.alert("Done :D")
return  
end 
