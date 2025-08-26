title @a times 0 25 0
team leave @a
#ランダム鬼指定
execute if score random settings matches 1 if score mode settings matches 0..4 run function onigoko:system/select_oni/main
execute if score random settings matches 0 if score mode settings matches 0..3 run scoreboard players operation oni_random settings = onik settings
execute if score random settings matches 0 if score mode settings matches 0..3 run function onigoko:system/select_oni/random
#execute if score mode settings matches 0..3 if score random settings matches 0 unless score count settings matches ..1 run tellraw @a ["",{"color":"yellow","text":"今回の鬼は"},{"color":"red","selector":"@a[team=oni]"},{"color":"yellow","text":"さんです。"}]
#鬼以外または全員を逃指定
execute if score mode settings matches 0..3 run team join nge @a[team=!oni,gamemode=!spectator]
execute if score mode settings matches 4 if score random settings matches 0 run team join nge @a[gamemode=!spectator]
execute if score mode settings matches 5 run team join nge @a[gamemode=!spectator]
execute if score mode settings matches 4 if score random settings matches 1 run team join nge @a[team=!oni,gamemode=!spectator]
#ゲームモード変更
gamemode adventure @a[gamemode=!spectator]
#ゲーム開始メッセージ


scoreboard players set @a spawn_inv 0
function onigoko:onigoko/countdown/start/count