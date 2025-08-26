scoreboard players reset ingame_0 game
scoreboard players reset ingame_1 game
scoreboard players reset ingame_2 game
scoreboard players reset ingame_3 game
scoreboard players set prepare_0 game 0
scoreboard players set prepare_1 game 1
scoreboard players set prepare_2 game 2
execute if score auto_start settings matches 0 run scoreboard players set prepare_-1 game -1
execute if score end settings matches 1..2 run scoreboard players set prepare_-1 game -1
scoreboard players display numberformat prepare_0 game blank
scoreboard players display numberformat prepare_1 game blank
scoreboard players display numberformat prepare_2 game blank
execute if score auto_start settings matches 0 run scoreboard players display numberformat prepare_-1 game blank
execute if score end settings matches 1..2 run scoreboard players display numberformat prepare_-1 game blank
execute if score mode settings matches 5 run scoreboard players reset prepare_0 game

execute if score auto_start settings matches 1 if score end settings matches 0 run scoreboard players reset prepare_-1 game
$scoreboard players display name prepare_1 game ["",{"text":"参加人数:","color":"yellow"},{"text":"$(count)","color":"yellow"},{"text":"人","color":"yellow"}]
$execute unless score mode settings matches 5 run scoreboard players display name prepare_0 game ["",{"text":"鬼人数:$(onik)人","color":"red"}]
execute if score mode settings matches 0 run scoreboard players display name prepare_2 game [{"text":"モード:","color":"yellow"},{"text":"増え鬼","color":"green"}]
execute if score mode settings matches 1 run scoreboard players display name prepare_2 game [{"text":"モード:","color":"yellow"},{"text":"氷鬼","color":"green"}]
execute if score mode settings matches 2 run scoreboard players display name prepare_2 game [{"text":"モード:","color":"yellow"},{"text":"通常鬼","color":"green"}]
execute if score mode settings matches 3 run scoreboard players display name prepare_2 game [{"text":"モード:","color":"yellow"},{"text":"ケイドロ","color":"green"}]
execute if score mode settings matches 4 run scoreboard players display name prepare_2 game [{"text":"モード:","color":"yellow"},{"text":"代わり鬼","color":"green"}]
execute if score mode settings matches 5 run scoreboard players display name prepare_2 game [{"text":"モード:","color":"yellow"},{"text":"TNT Tag","color":"green"}]

$execute if score auto_start settings matches 0 if score auto_start_count settings matches 0 run scoreboard players display name prepare_-1 game ["",{"text":"待機中...","color":"yellow"},{"text":"(最低$(auto_start_player)人)","color":"gray"},{"text":"","color":"yellow"}]
$execute if score auto_start settings matches 0 if score auto_start_count settings matches 1.. if score auto_start_sec time matches 10.. run scoreboard players display name prepare_-1 game ["",{"text":"開始まで:","color":"yellow"},{"text":"$(auto_start_count)","color":"green"},{"text":"秒","color":"yellow"}]
$execute if score auto_start settings matches 0 if score auto_start_count settings matches 1.. if score auto_start_sec time matches 3..9 run scoreboard players display name prepare_-1 game ["",{"text":"開始まで:","color":"yellow"},{"text":"$(auto_start_count)","color":"yellow"},{"text":"秒","color":"yellow"}]
$execute if score auto_start settings matches 0 if score auto_start_count settings matches 1.. if score auto_start_sec time matches 0..2 run scoreboard players display name prepare_-1 game ["",{"text":"開始まで:","color":"yellow"},{"text":"$(auto_start_count)","color":"red"},{"text":"秒","color":"yellow"}]
$execute if score end settings matches 1..2 run scoreboard players display name prepare_-1 game ["",{"text":"歓談タイム:","color":"yellow"},{"text":"$(end_sec)","color":"green"},{"text":"秒","color":"yellow"}]