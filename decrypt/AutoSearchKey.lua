local pa = "/storage/emulated/0/#1SAMPAH/[BydzNS]KING_GAMING_V6.TG.lua"
io.input(pa, "r")
ngehe = io.read("*a")
repeat
ngehe = ngehe:gsub('"(.-)"', function(c)
c = #c / 4
return c
end)
until ngehe:match('"(.-)"') == nil
io.output(pa.."TEST", "w")
io.write(ngehe)