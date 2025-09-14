#減算

execute if score min time matches 0 if score sec time matches 0 if score sec2 time matches 0 run scoreboard players set sec2 time 1
execute if score min time matches ..-1 run scoreboard players set min time 0
scoreboard players remove sec2 time 1
execute if score sec2 time matches ..-1 run scoreboard players remove sec time 1
execute if score sec2 time matches ..-1 run scoreboard players set sec2 time 19
execute if score sec time matches ..-1 run scoreboard players remove min time 1
execute if score sec time matches ..-1 run scoreboard players set sec time 59
function onigoko:onigoko/game/sidebar/ingame with storage game:settings