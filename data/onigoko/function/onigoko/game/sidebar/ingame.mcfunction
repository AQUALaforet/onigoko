scoreboard players reset prepare_0 game
scoreboard players reset prepare_1 game
scoreboard players reset prepare_2 game
scoreboard players set ingame_0 game 0
execute if score mode settings matches 1 run scoreboard players set ingame_1 game 1
execute if score mode settings matches 3 run scoreboard players set ingame_1 game 1
scoreboard players set ingame_2 game 2
scoreboard players set ingame_3 game 3
scoreboard players display numberformat ingame_0 game blank
execute if score mode settings matches 1 run scoreboard players display numberformat ingame_1 game blank
execute if score mode settings matches 3 run scoreboard players display numberformat ingame_1 game blank
scoreboard players display numberformat ingame_2 game blank
scoreboard players display numberformat ingame_3 game blank
execute if score mode settings matches 0 run scoreboard players reset ingame_1
execute if score mode settings matches 2 run scoreboard players reset ingame_1
execute if score mode settings matches 4.. run scoreboard players reset ingame_1
# 通常モードの時間表示（緑色：5分以上）
$execute unless score mode settings matches 5 if score min time matches 5.. if score sec time matches 10.. run scoreboard players display name ingame_3 game ["",{"text":"残り時間:","color":"green"},{"text":"$(min)分$(sec)秒","color":"green"}]
$execute unless score mode settings matches 5 if score min time matches 5.. if score sec time matches ..9 run scoreboard players display name ingame_3 game ["",{"text":"残り時間:","color":"green"},{"text":"$(min)分0$(sec)秒","color":"green"}]
# 通常モードの時間表示（黄色：1-4分）
$execute unless score mode settings matches 5 if score min time matches 1..4 if score sec time matches 10.. run scoreboard players display name ingame_3 game ["",{"text":"残り時間:","color":"yellow"},{"text":"$(min)分$(sec)秒","color":"yellow"}]
$execute unless score mode settings matches 5 if score min time matches 1..4 if score sec time matches ..9 run scoreboard players display name ingame_3 game ["",{"text":"残り時間:","color":"yellow"},{"text":"$(min)分0$(sec)秒","color":"yellow"}]
# 通常モードの時間表示（赤色：1分未満）
$execute unless score mode settings matches 5 if score min time matches ..0 if score sec time matches 10.. run scoreboard players display name ingame_3 game ["",{"text":"残り時間:","color":"red"},{"text":"$(min)分$(sec)秒","color":"red"}]
$execute unless score mode settings matches 5 if score min time matches ..0 if score sec time matches ..9 run scoreboard players display name ingame_3 game ["",{"text":"残り時間:","color":"red"},{"text":"$(min)分0$(sec)秒","color":"red"}]

# TNTタグモードの時間表示
$execute if score mode settings matches 5 if score sec time matches 30.. run scoreboard players display name ingame_3 game ["",{"text":"残り時間:","color":"green"},{"text":"$(sec)秒","color":"green"}]
$execute if score mode settings matches 5 if score sec time matches 11..29 run scoreboard players display name ingame_3 game ["",{"text":"残り時間:","color":"yellow"},{"text":"$(sec)秒","color":"yellow"}]
$execute if score mode settings matches 5 if score sec time matches ..10 run scoreboard players display name ingame_3 game ["",{"text":"残り時間:","color":"red"},{"text":"$(sec)秒","color":"red"}]

# チーム情報表示
$scoreboard players display name ingame_2 game ["",{"text":"逃走者:$(nge)人","color":"aqua"}]
$execute if score mode settings matches 1 run scoreboard players display name ingame_1 game {"text":"凍結:$(ice)人","color":"dark_aqua"}
$execute if score mode settings matches 3 run scoreboard players display name ingame_1 game {"text":"牢獄:$(ice)人","color":"gray"}
$execute unless score mode settings matches 5 run scoreboard players display name ingame_0 game ["",{"text":"鬼:$(oni)人","color":"red"}]
$execute if score mode settings matches 5 run scoreboard players display name ingame_0 game ["",{"text":"爆弾:$(oni)人","color":"red"}]