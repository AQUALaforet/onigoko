scoreboard players remove countdown2 time 1
execute if score countdown time matches 1.. if score countdown2 time matches ..-1 run scoreboard players remove countdown time 1
execute if score countdown time matches 0.. if score countdown2 time matches ..-1 run scoreboard players set countdown2 time 19

#チェーン
execute if score mode settings matches 0 run function onigoko:onigoko/game/start/hueoni
execute if score mode settings matches 1 run function onigoko:onigoko/game/start/ice
execute if score mode settings matches 2 run function onigoko:onigoko/game/start/normal
execute if score mode settings matches 3 run function onigoko:onigoko/game/start/keidoro
execute if score mode settings matches 4 run function onigoko:onigoko/game/start/kawari
execute if score mode settings matches 5 run function onigoko:onigoko/game/start/tnttag

function onigoko:onigoko/game/sidebar/wait_ingame with storage game:settings