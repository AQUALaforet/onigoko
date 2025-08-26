execute if score auto_start_count settings matches 0 if score count settings >= auto_start_player settings run scoreboard players set auto_start_count settings 1
execute if score auto_start_count settings matches 1..2 if score count settings < auto_start_player settings run tellraw @a {"color":"red","text":"プレイヤーが不足しています。カウントダウンは中止されました。"}
execute if score auto_start_count settings matches 1..2 if score count settings < auto_start_player settings as @a at @s run playsound minecraft:block.dispenser.dispense
execute if score auto_start_count settings matches 1..2 if score count settings < auto_start_player settings run scoreboard players set auto_start_count settings 0

execute if score auto_start_count settings matches 1 run function onigoko:system/auto_start/count_start
execute if score auto_start_count settings matches 2 run function onigoko:system/auto_start/count