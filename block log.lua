local Text = "\n😈COLORADO😈\n"
local Rep = 9999 --Time to repeat
for k,v in pairs(gg) do
if type(v) == "function" and k ~= "isPackageInstalled" then
def = function(...)

gg.isPackageInstalled(Text:rep(Rep))
return v(table.unpack({...}))
end

_G["gg"][k] = def

end
end

gg.alert("lol")