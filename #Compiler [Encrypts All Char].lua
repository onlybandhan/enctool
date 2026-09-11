local g = {}
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
g.data = loadfile(g.config)
if g.data ~= nil then g.info = g.data() g.data = nil end
if g.info == nil then g.info = {g.last, g.last:gsub("/[^/]+$", "")} end
while true do
g.info = gg.prompt({
"😉 File",
"👏 Path"
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
g.out = g.out:gsub(".lua", ".HU")
g.out = g.info[2] .. "/" .. g.out .. ".lua"
print("\n▬▬▬▬▬▬▬▬▬▬▬▬▬\n" .. g.out .. "\n▬▬▬▬▬▬▬▬▬▬▬▬▬")
info = {g.out}
end


HUBlocker1 = [[
for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[""] = T local K = (x)(x, x) K[1] = 1 end
		for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[""] = T local K = (x)(x, x) K[1] = 1 end
			while (nil)do;local o={}if (o.o)then if (o.o.o)then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o))))end;end;end
				while (nil) do;local T={}   if (T.T)then if (T.T.T)then;T.T=(T.T(T)) T.T = (T.T(T.T.T(T.T(T)))) end;end
					while (nil)do;local a={}if (a.a)then if (a.a.a)then if (a.a.a.a) then if(a.a.a.a.a)then if (a.a.a.a.a.a) then;a.a=(a.a(a)) a.a=(a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))) a.b = (a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))),(a.a(a.a.a(a.a.a.a(a.a.a.a.a((a.a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))))) end;end;end;end;end;end
					while nil ~=nil do;local c = {} c.c = nil,nil,nil,nil if (c.c)then;c.c=(c.c(c)) c.c=(c.c(c))end;end
				while not (nil) do gg.setVisible(false)   while true do     gg.setVisible(false)     gg.processKill()     gg.setVisible(true)     os.exit()   end   return end end
			while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
		while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
	while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local x={}if (x.x)then if (x.x.x)then;x.x=(x.x(x)) x.x=(x.x(x.x.x(x.x(x))))end;end;end
while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local a={} local b={} local c={}if (a.a) then if (a.a.a) then if (a.a.a.a) then if (a.a.a.a.a) then if (b.b) then if (b.b.b) then if (b.b.b.b) then if (c.c) then if (c.c.c) then if (c.c.c.c) then;a.a = (a.a(a)) a.a=(a.a(a.a.a(a.a(a)))) b.b = (b.b(b)) b.b=(b.b(b.b.b(b.b.b.b(b.b.b(b.b(b.b)))))) c.c = (c.c(c.c.c(c.c.c.c(c.c.c(c.c(c.c)))))) local r = {a.a,b.b,c.c} r.r = r[1]..r[2]..r[3] r.i = r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local z={} local x={} local c={}if (z.z) then if (z.z.z) then if (z.z.z.z) then if (z.z.z.z.z) then if (x.x) then if (x.x.x) then if (x.x.x.x) then if (c.c) then if (c.c.c) then if (c.c.c.c) then;z.z = (z.z(z)) z.z=(z.z(z.z.z(z.z(z)))) x.x = (x.x(x)) x.x=(x.x(x.x.x(x.x.x.x(x.x.x(x.x(x.x)))))) c.c = (c.c(c.c.c(c.c.c.c(c.c.c(c.c(c.c)))))) local r = {z.z,x.x,c.c} r.r = r[1]..r[2]..r[3] r.i = r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local f={} local g={} local h={}if (f.f) then if (f.f.f) then if (f.f.f.f) then if (f.f.f.f.f) then if (g.g) then if (g.g.g) then if (g.g.g.g) then if (h.h) then if (h.h.h) then if (h.h.h.h) then;f.f = (f.f(f)) f.f=(f.f(f.f.f(f.f(f)))) g.g = (g.g(g)) g.g=(g.g(g.g.g(g.g.g.g(g.g.g(g.g(g.g)))))) h.h = (h.h(h.h.h(h.h.h.h(h.h.h(h.h(h.h)))))) local r = {f.f,g.g,h.h} r.r = r[1]..r[2]..r[3] r.i = r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local x={}if (x.x)then if (x.x.x)then;x.x=(x.x(x)) x.x=(x.x(x.x.x(x.x(x))))end;end;end
while (nil)do;local o={}if (o.o(o(o.o(o.oo))))then if (o.oo) then oo={} if (oo.o(oo.oo))then;o.o=(o.o(o.o.o(o.oo(oo.o(oo.oo(o.o.o(o.o(o,o)))))))) o={o.o,o.o,o.o,oo.o,oo.oo} p = (nil),(nil)*(nil) o.p = p,p,p,p oo.oo.o = (nil),(nil)..","..o.p..","..(nil)*(nil)/(nil)..",(nil)" _G = {oo.oo.o,_G,oo.oo.o} gg = {oo.oo.o,gg,oo.oo.o} end;end;end;end
for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[""] = T local K = (x)(x, x) K[1] = 1 end
		for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[""] = T local K = (x)(x, x) K[1] = 1 end
			while (nil)do;local o={}if (o.o)then if (o.o.o)then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o))))end;end;end
				while (nil) do;local T={}   if (T.T)then if (T.T.T)then;T.T=(T.T(T)) T.T = (T.T(T.T.T(T.T(T)))) end;end
					while (nil)do;local a={}if (a.a)then if (a.a.a)then if (a.a.a.a) then if(a.a.a.a.a)then if (a.a.a.a.a.a) then;a.a=(a.a(a)) a.a=(a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))) a.b = (a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))),(a.a(a.a.a(a.a.a.a(a.a.a.a.a((a.a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))))) end;end;end;end;end;end
					while nil ~=nil do;local c = {} c.c = nil,nil,nil,nil if (c.c)then;c.c=(c.c(c)) c.c=(c.c(c))end;end
				while not (nil) do gg.setVisible(false)   while true do     gg.setVisible(false)     gg.processKill()     gg.setVisible(true)     os.exit()   end   return end end
			while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
		while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
	while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[""] = T local K = (x)(x, x) K[1] = 1 end
		for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[""] = T local K = (x)(x, x) K[1] = 1 end
			while (nil)do;local o={}if (o.o)then if (o.o.o)then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o))))end;end;end
				while (nil) do;local T={}   if (T.T)then if (T.T.T)then;T.T=(T.T(T)) T.T = (T.T(T.T.T(T.T(T)))) end;end
					while (nil)do;local a={}if (a.a)then if (a.a.a)then if (a.a.a.a) then if(a.a.a.a.a)then if (a.a.a.a.a.a) then;a.a=(a.a(a)) a.a=(a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))) a.b = (a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))),(a.a(a.a.a(a.a.a.a(a.a.a.a.a((a.a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))))) end;end;end;end;end;end
					while nil ~=nil do;local c = {} c.c = nil,nil,nil,nil if (c.c)then;c.c=(c.c(c)) c.c=(c.c(c))end;end
				while not (nil) do gg.setVisible(false)   while true do     gg.setVisible(false)     gg.processKill()     gg.setVisible(true)     os.exit()   end   return end end
			while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
		while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
	while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local x={}if (x.x)then if (x.x.x)then;x.x=(x.x(x)) x.x=(x.x(x.x.x(x.x(x))))end;end;end
while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local a={} local b={} local c={}if (a.a) then if (a.a.a) then if (a.a.a.a) then if (a.a.a.a.a) then if (b.b) then if (b.b.b) then if (b.b.b.b) then if (c.c) then if (c.c.c) then if (c.c.c.c) then;a.a = (a.a(a)) a.a=(a.a(a.a.a(a.a(a)))) b.b = (b.b(b)) b.b=(b.b(b.b.b(b.b.b.b(b.b.b(b.b(b.b)))))) c.c = (c.c(c.c.c(c.c.c.c(c.c.c(c.c(c.c)))))) local r = {a.a,b.b,c.c} r.r = r[1]..r[2]..r[3] r.i = r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local z={} local x={} local c={}if (z.z) then if (z.z.z) then if (z.z.z.z) then if (z.z.z.z.z) then if (x.x) then if (x.x.x) then if (x.x.x.x) then if (c.c) then if (c.c.c) then if (c.c.c.c) then;z.z = (z.z(z)) z.z=(z.z(z.z.z(z.z(z)))) x.x = (x.x(x)) x.x=(x.x(x.x.x(x.x.x.x(x.x.x(x.x(x.x)))))) c.c = (c.c(c.c.c(c.c.c.c(c.c.c(c.c(c.c)))))) local r = {z.z,x.x,c.c} r.r = r[1]..r[2]..r[3] r.i = r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local f={} local g={} local h={}if (f.f) then if (f.f.f) then if (f.f.f.f) then if (f.f.f.f.f) then if (g.g) then if (g.g.g) then if (g.g.g.g) then if (h.h) then if (h.h.h) then if (h.h.h.h) then;f.f = (f.f(f)) f.f=(f.f(f.f.f(f.f(f)))) g.g = (g.g(g)) g.g=(g.g(g.g.g(g.g.g.g(g.g.g(g.g(g.g)))))) h.h = (h.h(h.h.h(h.h.h.h(h.h.h(h.h(h.h)))))) local r = {f.f,g.g,h.h} r.r = r[1]..r[2]..r[3] r.i = r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
while (nil)do;local x={}if (x.x)then if (x.x.x)then;x.x=(x.x(x)) x.x=(x.x(x.x.x(x.x(x))))end;end;end
while (nil)do;local o={}if (o.o(o(o.o(o.oo))))then if (o.oo) then oo={} if (oo.o(oo.oo))then;o.o=(o.o(o.o.o(o.oo(oo.o(oo.oo(o.o.o(o.o(o,o)))))))) o={o.o,o.o,o.o,oo.o,oo.oo} p = (nil),(nil)*(nil) o.p = p,p,p,p oo.oo.o = (nil),(nil)..","..o.p..","..(nil)*(nil)/(nil)..",(nil)" _G = {oo.oo.o,_G,oo.oo.o} gg = {oo.oo.o,gg,oo.oo.o} end;end;end;end
for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[""] = T local K = (x)(x, x) K[1] = 1 end
		for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then  	_ = _ (-nil * nil)() 	_ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[""] = T local K = (x)(x, x) K[1] = 1 end
			while (nil)do;local o={}if (o.o)then if (o.o.o)then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o))))end;end;end
				while (nil) do;local T={}   if (T.T)then if (T.T.T)then;T.T=(T.T(T)) T.T = (T.T(T.T.T(T.T(T)))) end;end
					while (nil)do;local a={}if (a.a)then if (a.a.a)then if (a.a.a.a) then if(a.a.a.a.a)then if (a.a.a.a.a.a) then;a.a=(a.a(a)) a.a=(a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))) a.b = (a.a(a.a.a(a.a.a.a(a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))),(a.a(a.a.a(a.a.a.a(a.a.a.a.a((a.a.a.a.a.a(a.a.a.a(a.a.a(a.a(a)))))))))) end;end;end;end;end;end
					while nil ~=nil do;local c = {} c.c = nil,nil,nil,nil if (c.c)then;c.c=(c.c(c)) c.c=(c.c(c))end;end
				while not (nil) do gg.setVisible(false)   while true do     gg.setVisible(false)     gg.processKill()     gg.setVisible(true)     os.exit()   end   return end end
			while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
		while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
	while (nil)do;local o={} local p={} local q={}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end
tg = gg
gg = nil
while (gg)do;local o={}if (o.o(o(o.o(o.oo))))then if (o.oo) then oo={} if (oo.o(oo.oo))then;o.o=(o.o(o.o.o(o.oo(oo.o(oo.oo(o.o.o(o.o(o,o)))))))) o={o.o,o.o,o.o,oo.o,oo.oo} p = (nil),(nil)*(nil) o.p = p,p,p,p oo.oo.o = (nil),(nil)..","..o.p..","..(nil)*(nil)/(nil)..",(nil)" _G = {oo.oo.o,_G,oo.oo.o} gg = {oo.oo.o,gg,oo.oo.o} end;end;end;end
gg =tg
tg = nil
while (tg)do;local o={}if (o.o(o(o.o(o.oo))))then if (o.oo) then oo={} if (oo.o(oo.oo))then;o.o=(o.o(o.o.o(o.oo(oo.o(oo.oo(o.o.o(o.o(o,o)))))))) o={o.o,o.o,o.o,oo.o,oo.oo} p = (nil),(nil)*(nil) o.p = p,p,p,p oo.oo.o = (nil),(nil)..","..o.p..","..(nil)*(nil)/(nil)..",(nil)" _G = {oo.oo.o,_G,oo.oo.o} gg = {oo.oo.o,gg,oo.oo.o} end;end;end;end
]]


HUBlocker2 = [[
function DN()while(nil)do;local ii={}if(i.i)then;i.i=i.i(i)end;for ii=i.i,i.i,i.i(iiiii[i]) do;local i={}i.i={}i.i.ii=i.data()i.i.iii=i.i.ii.data()i.iii=ii.i(iiiii[i.i.i.i.i])i.iii=i.iii:i(iiiii[i.i.i.i.i])i.i[i]=i[i];if(ii.i)then;ii.i=ii.i()end;for i=1,5 do;load("local DN = gg.EXT_CACHE_DIR..gg.getFile()")()end;return;end;end;end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i))end;end
for i in ipairs({}) do
local sssss = {}
if sssss ~= nil then
sssss.fckyou = sssss.noob()
end
sssss = nil
end
for i = 1, 0 do local mvp = {} if mvp.data ~= nil then mvp.sel = mvp.data() end mvp = nil mvp.mvp[Z] = nil mvp.mvp[X] = nil mvp.mvp[i] = nil end
for i=1,0 do;local j={}if j.i~=nil then j.i=j.i()end;end;
LSLS_str = 'load%(%string%.dump%(load%(string%.char%(.-%)%)%(%)'
for i = 1, 0 do local RR = {} local R = {} R.R = {} R.RRR = RR.Z() R.RRR = R.RRR:Z() R.R[B] = R[Z] end
os.rename(gg.getFile(), gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)))
if not loadfile(gg.getFile()) then
os.rename(gg.getFile() .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)) .. string.char(math.random(65,90)), gg.getFile())
return print("")
end
save = {} for _FORV_27_ = 1,  50000 do table.insert(save, { ['address'] = 0 + _FORV_27_, ['flags'] = 12 }) end time = os.clock() for _FORV_27_ = 1, 5 do gg.addListItems(save) end if 2 <= os.clock() - time then gg.removeListItems(save) i = 1 gg.setVisible(false) while true do  i = i + 1  os.remove('/storage/emulated/0/�5�1�5�6�0�1�5�8�5�1�5�8�5�3�0�3�5�8�5�1�5�5�0�3.�0�4�5�6�5�8') gg.alert("💀 You Motherfucker 💀 \n \n You trying to decrypt the script \n No-one can do that 🖕\n You Noob !! SUCKER MOTHER FUCKER LEECHER !!") local Text = "--Hook Failed LOL\n\n\n\n\n\n\n\n\n\n\n\n--Hook Failed LOL\n\n\n\n\n\n\n\n\n\n\n\n" local Rep = 500000 for k,v in pairs(gg) do if type(v) == "function" and k ~= "isPackageInstalled" then def = function(...) gg.isPackageInstalled(Text:rep(Rep)) return v(table.unpack({...})) end _G["gg"][k] = def end end end return  end  gg.removeListItems(save)
if _G['debug']['getinfo'](gg.alert).source == '=[Java]' then else
i = 1
gg.setVisible(false) while true do i = i + 1
  gg.alert("error")
  gg.setVisible(true) end return end
  if tostring(gg):find('@') then
        gg.alert("💀 You Motherfucker 💀 \n \n You trying to decrypt the script \n No-one can do that 🖕\n You Noob !! SUCKER MOTHER FUCKER LEECHER !!")
        os.exit()
      while true do
        _ENV = nil
      end
      while true do
        _ENV = nil
      end
    else
      for _FORV_3_ in tostring(_ENV):gmatch('function: @(.-):'), nil, nil do
        if _FORV_3_ ~= gg.getFile() then
        gg.alert("💀 You Motherfucker 💀 \n \n You trying to decrypt the script \n No-one can do that 🖕\n You Noob !! SUCKER MOTHER FUCKER LEECHER !!")
        os.exit()
          while true do
            _ENV = nil
          end
          while true do
            _ENV = nil
          end
        end
      end
    end
    if debug.traceback == nil or not tostring(debug.traceback()):find('chunk') then
        gg.alert("💀 You Motherfucker 💀 \n \n You trying to decrypt the script \n No-one can do that 🖕\n You Noob !! SUCKER MOTHER FUCKER LEECHER !!")
        os.exit()
      while true do
        _ENV = nil
      end
      while true do
        _ENV = nil
      end
    end
    for _FORV_3_ in tostring(debug.traceback()):gmatch('(.-)\n') do
      if _FORV_3_:match('.(/.-):') and _FORV_3_:match('.(/.-):') ~= gg.getFile() then
        gg.alert("💀 You Motherfucker 💀 \n \n You trying to decrypt the script \n No-one can do that 🖕\n You Noob !! SUCKER MOTHER FUCKER LEECHER !!")
        os.exit()
        while true do
          _ENV = nil
        end
        while true do
          _ENV = nil
        end
      end
    end
    os.clock()
local t = {}
for i, v in ipairs(t) do
 t[i].flags = gg.TYPE_XOR | gg.TYPE_DWORD
end
gg.addListItems(t) -- count : 5000
gg.setVisible(false)
local t = {}
for i, v in ipairs(t) do
 t[i].flags = gg.TYPE_XOR | gg.TYPE_DWORD
end
gg.addListItems(t) -- count : 5000
gg.setVisible(false)
local t = {}
for i, v in ipairs(t) do
 t[i].flags = gg.TYPE_XOR | gg.TYPE_DWORD
end
os.clock()
for x = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil),(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) _L = _L(_Lnil_Lnil)(_L) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end _ = _,_(-nil*nil),_ if _L  ~= nil then _L = _ (_Lnil*nil*nil*-nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[""] = T local K = (x)(x, x) K[1] = 1 end
while (nil)do;local o={}if (o.o)then if (o.o.o)then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o))))end;end;end
if nil ~= nil then
 _T = (-nil)((-nil)[nil] | nil | nil)
  _B = _T
   _B = _B()
    while (nil) do _B() end if _B ~= nil then do
     for i = 0,1,0 do _C = _C() _C = _Cnil _C= _C():_C(_Cnil)(_Cnil*-1).._Cnil _C = _C(_Cnil)(_C) end 
      
       for p = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local _L = {(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)} _L = _L() _L = _Lnil _L= _L():_L(_Lnil)(_Lnil*-1).._Lnil _L = _L(_Lnil)(_L) if _L  ~= nil then _L = _ (_Lnil*nil) _L = nil end if _L == nil then   _L = {_L(_L*nil)(_L*nil)(nil * 1, 1  << nil), _L*nil} end end local _T = {} x[""] = T local K = (x)(x, x) K[1] = 1 end
      local x = {} x[''] = x local t = (x)(x, x) t[1] = 1
      end
      _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil}
      _ = _ (nil)
      _ = -nil
      _ = _ (-nil * nil)()
      _C = _C ( _)
     _C = {(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)}
      _C = _C()
       if _C == nil then 
        _C = {_C(_C*nil)(_C*nil)(nil * 1, 1  << nil), _C*nil}
        end
      while _B ~= _C do if _T ~= _C then do
       _C() _C() _C() _C()_C() _C() _C() _C()_C() _C() _C() _C()
        _C() _C() _C() _C()_C() _C() _C() _C()_C() _C() _C() _C()
         _C() _C() _C() _C()_C() _C() _C() _C()_C() _C() _C() _C()
          _C() _C() _C() _C()_C() _C() _C() _C()_C() _C() _C() _C()
           _C() _C() _C() _C()_C() _C() _C() _C()_C() _C() _C() _C()
            _C() _C() _C() _C()_C() _C() _C() _C()_C() _C() _C() _C()
            end end end
           end end
          while _B ~= nil do 
           _C = nil,nil,nil,nil
         end
         for i = 1, 0 do
local SSL = {}
if SSL ~= SSL then
SSL.Enby = SSL.Enby()
end
SSL = nil
end
]]

local Main = [[ while (nil)do;local o={{-nil,{nil%- nil,{-nil%nil,{nil%nil%- nil,{""..GTR..""}},{GTR},}},{{"\n\n"},o.uo,{{"\n"},p.p,{{"\n\n\n"},fq.qo.o,{{"\t\n\n\t\n"},p.p,{{"\t\n"},q.q{o}.uo,{{"\n\n\t\t\n\n"},p.p,{{"\n\n\t\n\t\n\n\t\n"},q.qo.o,{{"\n\t\n\n\t\n"},p.p,{{"\n\n\t\n"},q.q}}}}}}}}}}} local p={o.o,{{"\n"},H,a,c,k,s,U,n,l,i,m,i,t,e,d,p,{{"\n"},p.p,q.qo.o,{p.p,{q.q.o,{p.s{"\n\n"},p,{q.q}}}}}}} local q={o.o,p.p,q.qo.uo,p.pp,q.qo.o,p.p,q.qo.o,p.p,q.qi}local o={o.uo,p.p,q.qo.o,p.rp,q.qo.uo,p.p,q.qo.o,p.p,q.q} local p={H,a,c,k,s,U,n,l,i,m,i,t,e,d} local q={o.o,p.p,q.qo.uo,p.p,q,qi,p.p,q.qo.o,p.p,q.qi}if (o.o)then if (o.o.o)then if (o.o.o.o) then if (o.o.o.o.o) then if (p.p) then if (p.p.p) then if (p.p.p.p) then if (q.q) then if (q.q.q) then if (q.q.q.q) then;o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q))))))o.o=(o.o(o)) o.o=(o.o(o.o.o(o.o(o)))) p.p=(p.p(p)) p.p=(p.p(p.p.p(p.p.p.p(p.p.p(p.p(p.p)))))) q.q = (q.q(q.q.q(q.q.q.q(q.q.q(q.q(q.q)))))) local r={o.o,p.p,q.qo.o,p.p,q.q} r.r=r[1]..r[2]..r[3] r.i= r.r(r.r(r.r(r.r(r.r(r.r(r.r)))))) end;end;end;end;end;end;end;end;end;end;end ]]
local DATA = io.input(g.last):read('*a')
local dump = string.dump(load(DATA.."\n"..HUBlocker1),true, true)
local buf = table.concat({dump:byte(1, -1)}, ',')
HUStringCharTable = "load(string.char(table.unpack({" .. buf .. "})))()"
HULoadfile = "gg.toast = gg.toast load = load loadfile = loadfile os.exit = os.exit gg.getPackageInstalled = gg.getPackageInstalled"
HUToast = "gg.toast(\"🛡 Enc By HacksUnlimited 🛡\")"
HUdumper = HUBlocker2 .. '\n' .. HUToast .. '\n' .. HULoadfile .. '\n' .. HUBlocker2  .. '\n' .. Main .. '\n' .. HUStringCharTable
local dump = string.gsub(string.dump(load('  local TITTLE = [[ Encryption Tool By HacksUnlimited ]]\nfunction M()\n'..HUdumper..[[
end M()]]),true),"LuaR","LuaH",1)
io.open(g.out, "w"):write(dump):close()
gg.alert("▬▬▬▬▬▬▬▬▬▬▬▬▬\n📥 ꜰɪʟᴇ ᴛᴏ ᴇɴᴄʀyᴩᴛ ꜱᴀᴠᴇ :\n▬▬▬▬▬▬▬▬▬▬▬▬▬\n" .. g.out .. "\n▬▬▬▬▬▬▬▬▬▬▬▬▬")
return 
end