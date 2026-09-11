gg.alert('😎Создатель JOKER CMERT подписывайтесь на канал и ставьте лайкосы под видосы👌буду очень благодарен')
gg.toast('🎯СОЗДАТЕЛЬ JOKER CMERT SKRIPT V.3.0🎯')
gg.alert('🚫Приятной игры и за одно не забудьте ставить лайки+подписка🚫')
HOMEDM = 1

function HOME()
LB = gg.choice({
"💥Игра💥",
"🏠Гараж🏠",
"🤘Афтор🤘",
"🔴Выход🔴",
},nil,"😎Создатель JOKER CMERT😎")
if LB == 1 then GAME() end
if LB == 2 then GARAGE() end
if LB == 3 then AUTORS() end
if LB == 4 then EXIT() end
HOMEDM = -1
end

function EXIT()
EX = gg.alert('✊Выйти?✊','✋Да✋','🤘Нет🤘')

if EX == 1 then da() end
if EX == 2 then HOME() end
end

function da()
os.exit()
gg.print('😎Создатель JOKER CMERT😎')
end

function GAME()
gm = gg.multiChoice({
"🚀Чит старт🚀",
"💸Деньги в первой миссии💸",
"💵50к в маке💵",
"💨Адский выхлоп💨",
"💳Машина за 99 лям 1 долар(рынок)💳",
"🎯Меню/пневмо подвески🎯",
"🤘Гравитация🤘",
"🔴Назад🔴",
},nil,"😎Создатель JOKER CMERT😎")
if gm == nil then else
if gm[1] == true then cheatstart() end
if gm[2] == true then perviy() end
if gm[3] == true then makdak() end
if gm[4] == true then vixlop() end
if gm[5] == true then joker() end
if gm[6] == true then jol() end
if gm[7] == true then gokj() end
if gm[8] == true then HOME() end
end
end

function cheatstart()
CHE = gg.alert('🌶Выберите вариант🌶','🚀Чит старт🚀','🚘Обычный старт🚘','🔴Назад🔴')

if CHE == 1 then cheat() end
if CHE == 2 then uncheat() end
if CHE == 3 then HOME() end
end

function cheat()
gg.searchNumber('700',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('5000000',gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('Смотри какой быстрый')
end

function uncheat()
gg.searchNumber('5000000',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('700',gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('А теперь как улитка')
end

function perviy()
gg.searchNumber('40',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('7000000',gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('Смотри какой богач(пройди два раза)')
end

function makdak()
gg.searchNumber('444444',gg.TYPE_DWORD)
gg.getResults(200000)
gg.editAll('50000000',gg.TYPE_DWORD)
gg.clearResults()
end

function vixlop()
gg.searchNumber('0.15',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('1.0',gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('Смотри как калаш')
end

function joker()
gg.searchNumber('99999999',gg.TYPE_DWORD)
gg.getResults(1000)
gg.editAll('1',gg.TYPE_DWORD)
gg.clearResults()
gg.toast('Едь на рынок и купи тачку за 99 лям')
end

function jol()
gg.alert('🔴Сначала зайди в гараж и сделай подвеску жесткость на максимум🔴')
GO = gg.choice({
"👌Маленькая пневма👌",
"☢Средняя пневма☢",
"♻Большая пневма♻",
"🚫Огромная пневма🚫",
"🔴Назад🔴",
},nil,"🎯Меню/пневмы🎯")
if GO == 1 then vb() end
if GO == 2 then bn() end
if GO == 3 then zx() end
if GO == 4 then nm() end
if GO == 5 then GARAGE() end
end

function vb()
gg.searchNumber('80000',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('5000',gg.TYPE_FLOAT)
gg.clearResults()
end

function bn()
gg.searchNumber('80000',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('10000',gg.TYPE_FLOAT)
gg.clearResults()
end

function zx()
gg.searchNumber('80000',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('15000',gg.TYPE_FLOAT)
gg.clearResults()
end

function nm()
gg.searchNumber('80000',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('20000',gg.TYPE_FLOAT)
gg.clearResults()
end

function gokj()
GOK = gg.alert('🌶Выберите вариант🌶','💷Включить💷','💥Выключить💥','🔴Назад🔴')

if GOK == 1 then grav() end
if GOK == 2 then ungrav() end
if GOK == 3 then HOME() end
end

function grav()
gg.searchNumber('5000',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('-17000',gg.TYPE_FLOAT)
gg.clearResults()
end

function ungrav()
gg.searchNumber('-17000',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('5000',gg.TYPE_FLOAT)
gg.clearResults()
end

function GARAGE() 
gar = gg.multiChoice({
"🌌Меню хрома🌌",
"👽Меню нло👽",
"👾Меню развала👾",
"📛Сохранить винил перед хромом📛",
"📵Вернуть винил после хрома📵",
"😃2000лс на все твои тачки😃",
"🚘Бесплатные моторы🚘",
"♻Нло на крыше♻",
"🌍Широкие колеса🌍",
"☢Хром с возможностью менять цвет☢",
"🔴Назад🔴",
},nil,'😎Создатель JOKER CMERT😎')
if gar == nil then else
if gar[1] == true then chrom() end
if gar[2] == true then nlo() end
if gar[3] == true then razval() end
if gar[4] == true then coxvin() end
if gar[5] == true then vernvin() end
if gar[6] == true then lopl() end
if gar[7] == true then motor() end
if gar[8] == true then neobi() end
if gar[9] == true then pik() end
if gar[10] == true then jokl() end
if gar[11] == true then HOME() end
end
end

function chrom()
gg.alert('🔴Поставь яркость на максимум🔴')
CR = gg.choice({
"⚫Темный хром⚫",
"🔘Светлый хром🔘",
"⚪Яркий хром хамелеон⚪",
"⭕Красивый хром хамелеон⭕",
"🔰Обычный хром хамелон🔰",
"🔴Назад🔴",
},nil,"🌌Меню/хрома🌌")
if CR == 1 then lok() end
if CR == 2 then rus() end
if CR == 3 then hj() end
if CR == 4 then ur() end
if CR == 5 then fg() end
if CR == 6 then GARAGE() end
end

function lok()
gg.searchNumber('1',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('-5',gg.TYPE_FLOAT)
gg.clearResults()
end

function rus() 
gg.searchNumber('1',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('50',gg.TYPE_FLOAT)
gg.clearResults()
end

function hj() 
gg.searchNumber('1',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('-10;-20;-30;40;50;60',gg.TYPE_FLOAT)
gg.clearResults()
end


function ur() 
gg.searchNumber('1',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('10;20;-50;-90;10;-11',gg.TYPE_FLOAT)
gg.clearResults()
end

function fg() 
gg.searchNumber('1',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('-50;-70;60;80;12;-67',gg.TYPE_FLOAT)
gg.clearResults()
end

function nlo()
gg.alert('🔴Сделай сброс в подвеске🔴')
NL = gg.choice({
"👾Меню летающего нло👾",
"😱Внутренний выступ😱",
"🤖Выдвинутый выступ🤖",
"💩Обычное нло💩",
"🔴Назад🔴",
},nil,"👽Меню/нло👽")
if NL == 1 then ji() end
if NL == 2 then io() end
if NL == 3 then gh() end
if NL == 4 then jp() end
if NL == 5 then GARAGE() end
end

function ji()
gg.alert('🔴Сделай сброс в подвеске🔴')
FL = gg.choice({
"⛏Летающее нло 50%⛏",
"🗿Летающее нло 60%🗿",
"🛢Летающее нло 70%🛢",
"🔩Летающее нло 80%🔩",
"🛠ИНСТРУКЦИЯ🛠",
"🔴Назад🔴",
},nil,"👽Меню/нло👽")
if FL == 1 then kl() end
if FL == 2 then go() end
if FL == 3 then cs() end
if FL == 4 then pb() end
if FL == 5 then lop() end
if FL == 6 then GARAGE() end
end

function kl() 
gg.searchNumber('0.22',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('2',gg.TYPE_FLOAT)
gg.clearResults() 
gg.searchNumber('-10',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('-50',gg.TYPE_FLOAT)
gg.clearResults()
end

function go() 
gg.searchNumber('0.22',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('2',gg.TYPE_FLOAT)
gg.clearResults() 
gg.searchNumber('-10',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('-60',gg.TYPE_FLOAT)
gg.clearResults()
end


function cs() 
gg.searchNumber('0.22',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('2',gg.TYPE_FLOAT)
gg.clearResults() 
gg.searchNumber('-10',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('-70',gg.TYPE_FLOAT)
gg.clearResults()
end

function pb() 
gg.searchNumber('0.22',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('2',gg.TYPE_FLOAT)
gg.clearResults() 
gg.searchNumber('-10',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('-70',gg.TYPE_FLOAT)
gg.clearResults()
end


function lop()
EG = gg.alert('😎для начало сделай сброс в подвеске и сделай наклон на максимум и удачи вам😎')
if EG == 1 then OK() end
if EG == 2 then HOME() end
end

function io()
gg.searchNumber('0.07',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('-0.6',gg.TYPE_FLOAT)
gg.clearResults()
end

function gh()
gg.searchNumber('0.07',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('0.6',gg.TYPE_FLOAT)
gg.clearResults()
end

function jp()
gg.searchNumber('0.22',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('1.5',gg.TYPE_FLOAT)
gg.clearResults()
end

function razval()
gg.alert('🔴Сделай Наклон на максимум🔴')
RAZ = gg.choice({
"🎖Развал со значением -50🎖",
"🎃Развал со значением -60🎃",
"🌐Развал со значением -70🌐",
"😀Развал со значением -80😀",
"🔴Назад🔴",
},nil,"Меню/развала")
if RAZ == 1 then jl() end
if RAZ == 2 then ps() end
if RAZ == 3 then lox() end
if RAZ == 4 then top() end
if RAZ == 5 then GARAGE() end
end

function jl() 
gg.searchNumber('-10',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('-50',gg.TYPE_FLOAT)
gg.clearResults()
end

function ps() 
gg.searchNumber('-10',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('-60',gg.TYPE_FLOAT)
gg.clearResults()
end

function lox() 
gg.searchNumber('-10',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('-70',gg.TYPE_FLOAT)
gg.clearResults()
end


function top() 
gg.searchNumber('-10',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('-80',gg.TYPE_FLOAT)
gg.clearResults()
end

function coxvin()
gg.searchNumber('1.000',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('1.123',gg.TYPE_FLOAT)
gg.clearResults()
end

function vernvin()
gg.searchNumber('-5',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('1.000',gg.TYPE_FLOAT)
gg.clearResults()
end

function lopl()
gg.alert('✊поставь в регионе поиска регион XA XS✊')
LO = gg.choice({
"👌2000HP отдельно👌",
"🤘3000NM отдельно🤘",
"😎2000HP 3000NM вместе😎",
"🔴Назад🔴",
},nil,"😃Меню 2000ЛС😃")
if LO == 1 then jop() end
if LO == 2 then hop() end
if LO == 3 then got() end
if LO == 4 then GARAGE() end
end

function jop()
gg.searchNumber('2000',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('-80',gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('Купи любой движок и готово')
end

function hop()
gg.searchNumber('3000',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('-90',gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('Купи любой движок и готово')
end

function got()
gg.searchNumber('2000',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('-80',gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber('3000',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('-90',gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('Купи любой движок и готово')
end


function motor()
MO = gg.choice({
"☢Бесплатный мотор за 5к☢",
"☡Бесплатный мотор за 10к☡",
"☠Бесплтаный мотор за 15к☠",
"☣Бесплатный мотор за 25к☣",
"🚩Бесплтаный мотор за 50к🚩",
"🏳Бесплатный мотор за 100к🏳",
"🏁Бесплатный мотор за 150к🏁",
"🏴Бесплатный мотор за 200к🏴",
"🚫Бесплатный мотор за 400к🚫",
"🔴Назад🔴",
},nil,"👌Создатель JOKER CMERT👌")
if MO == 1 then gol() end
if MO == 2 then rot() end
if MO == 3 then vot() end
if MO == 4 then kol() end
if MO == 5 then pol() end
if MO == 6 then zho() end
if MO == 7 then hyi() end
if MO == 8 then jora() end
if MO == 9 then pom() end
if MO == 10 then GARAGE() end
end

function gol()
gg.searchNumber('5000',gg.TYPE_DWORD)
gg.getResults(1000)
gg.editAll('0',gg.TYPE_DWORD)
gg.clearResults()
end

function rot()
gg.searchNumber('10000',gg.TYPE_DWORD)
gg.getResults(1000)
gg.editAll('0',gg.TYPE_DWORD)
gg.clearResults()
end

function vot()
gg.searchNumber('15000',gg.TYPE_DWORD)
gg.getResults(1000)
gg.editAll('0',gg.TYPE_DWORD)
gg.clearResults()
end

function kol()
gg.searchNumber('25000',gg.TYPE_DWORD)
gg.getResults(1000)
gg.editAll('0',gg.TYPE_DWORD)
gg.clearResults()
end

function pol()
gg.searchNumber('50000',gg.TYPE_DWORD)
gg.getResults(1000)
gg.editAll('0',gg.TYPE_DWORD)
gg.clearResults()
end

function zho()
gg.searchNumber('100000',gg.TYPE_DWORD)
gg.getResults(1000)
gg.editAll('0',gg.TYPE_DWORD)
gg.clearResults()
end

function hyi()
gg.searchNumber('150000',gg.TYPE_DWORD)
gg.getResults(1000)
gg.editAll('0',gg.TYPE_DWORD)
gg.clearResults()
end

function jora()
gg.searchNumber('200000',gg.TYPE_DWORD)
gg.getResults(1000)
gg.editAll('0',gg.TYPE_DWORD)
gg.clearResults()
end

function pom()
gg.searchNumber('400000',gg.TYPE_DWORD)
gg.getResults(1000)
gg.editAll('0',gg.TYPE_DWORD)
gg.clearResults()
end

function neobi()
gg.alert('🔴Сделай сброс в подвеске🔴')
ne = gg.choice({
"☡Верхние нло со значением -1☡",
"✊Верхние нло со значением -2✊",
"👌Верхние нло со значением -3👌",
"🔎Верхние нло со значением -4🔎",
"🔴Назад🔴",
},nil,"♻Меню/необычного нло♻")
if ne == 1 then od() end
if ne == 2 then dv() end
if ne == 3 then tr() end
if ne == 4 then ch() end
if ne == 5 then GARAGE() end
end

function od()
gg.searchNumber('0.220',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('-1',gg.TYPE_FLOAT)
gg.clearResults()
end

function dv()
gg.searchNumber('0.220',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('-2',gg.TYPE_FLOAT)
gg.clearResults()
end

function tr()
gg.searchNumber('0.220',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('-3',gg.TYPE_FLOAT)
gg.clearResults()
end

function ch()
gg.searchNumber('0.220',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('-4',gg.TYPE_FLOAT)
gg.clearResults()
end

function pik()
PI = gg.choice({
"🎯Маленькие колеса🎯",
"🏓Средние колеса🏓",
"♻Большие колеса♻",
"🌋Огромные колеса🌋",
"🔴Назад🔴",
},nil,"🌍Меню/ широкие колеса🌍")
if PI == 1 then zh() end
if PI == 2 then gy() end
if PI == 3 then fj() end
if PI == 4 then pl() end
if PI == 5 then GARAGE() end
end

function zh()
gg.searchNumber('1.200',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('-5',gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('Купи любые колеса и готово')
end


function gy()
gg.searchNumber('1.200',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('-10',gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('Купи любые колеса и готово')
end


function fj()
gg.searchNumber('1.200',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('-15',gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('Купи любые колеса и готово')
end

function pl()
gg.searchNumber('1.200',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('-20',gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('Купи любые колеса и готово')
end

function jokl()
JO = gg.choice({
"💥Хром1💥",
"🎯Хром2🎯",
"🔴Назад🔴",
},nil,"☢Меню хрома(под)☢")
if JO == 1 then gopn() end
if JO == 2 then gopl() end
if JO == 3 then GARAGE() end
end

function gopn()
gg.searchNumber('1.000',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('13;15',gg.TYPE_FLOAT)
gg.clearResults()
end


function gopl()
gg.searchNumber('1.000',gg.TYPE_FLOAT)
gg.getResults(1000)
gg.editAll('13;5',gg.TYPE_FLOAT)
gg.clearResults()
end

function AUTORS()
gg.alert('Автор данного вам скрипта JOKER CMERT буду очень благодарен если поставите лайк и подписку для вас это расплюнуть пожалуйста выслушайте меня моя цель 100 подписчиков👌✊','Ок')
if AU == 1 then OK() end
if AU == 2 then HOME() end
end

while true do
if gg.isVisible(false) then
HOMEDM = 1
gg.setVisible(false)
end
if HOMEDM == 1 then HOME() end
end
