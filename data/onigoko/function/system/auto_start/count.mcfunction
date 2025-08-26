execute if score auto_start_comma time matches 0.. run scoreboard players remove auto_start_comma time 1
execute if score auto_start_sec time matches 0.. if score auto_start_comma time matches ..-1 run scoreboard players remove auto_start_sec time 1
execute if score auto_start_comma time matches ..-1 run scoreboard players set auto_start_comma time 19

execute if score auto_start_sec time matches 60 if score auto_start_comma time matches 0 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1
execute if score auto_start_sec time matches 60 if score auto_start_comma time matches 0 as @a at @s run tellraw @s {"color":"yellow","text":"1分後に開始します..."}
execute if score auto_start_sec time matches 30 if score auto_start_comma time matches 0 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1
execute if score auto_start_sec time matches 30 if score auto_start_comma time matches 0 as @a at @s run tellraw @s {"color":"yellow","text":"30秒後に開始します..."}
execute if score auto_start_sec time matches 20 if score auto_start_comma time matches 0 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1
execute if score auto_start_sec time matches 20 if score auto_start_comma time matches 0 as @a at @s run tellraw @s {"color":"yellow","text":"20秒後に開始します..."}
execute if score auto_start_sec time matches 15 if score auto_start_comma time matches 0 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1
execute if score auto_start_sec time matches 15 if score auto_start_comma time matches 0 as @a at @s run tellraw @s {"color":"yellow","text":"15秒後に開始します..."}
execute if score auto_start_sec time matches 10 if score auto_start_comma time matches 0 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1
execute if score auto_start_sec time matches 10 if score auto_start_comma time matches 0 as @a at @s run title @s title {"color":"yellow","text":"10"}
execute if score auto_start_sec time matches 5 if score auto_start_comma time matches 0 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1
execute if score auto_start_sec time matches 5 if score auto_start_comma time matches 0 as @a at @s run title @s title {"color":"yellow","text":"5"}
execute if score auto_start_sec time matches 5 if score auto_start_comma time matches 0 if score random settings matches 1 if score mode settings matches 0..3 run function onigoko:system/auto_start/select_oni
execute if score auto_start_sec time matches 4 if score auto_start_comma time matches 0 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1
execute if score auto_start_sec time matches 4 if score auto_start_comma time matches 0 as @a at @s run title @s title {"color":"yellow","text":"4"}
execute if score auto_start_sec time matches 3 if score auto_start_comma time matches 0 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1
execute if score auto_start_sec time matches 3 if score auto_start_comma time matches 0 as @a at @s run title @s title {"color":"red","text":"3"}
execute if score auto_start_sec time matches 2 if score auto_start_comma time matches 0 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1
execute if score auto_start_sec time matches 2 if score auto_start_comma time matches 0 as @a at @s run title @s title {"color":"red","text":"2"}
execute if score auto_start_sec time matches 1 if score auto_start_comma time matches 0 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1
execute if score auto_start_sec time matches 1 if score auto_start_comma time matches 0 as @a at @s run title @s title {"color":"red","text":"1"}

execute if score auto_start_sec time matches 0 if score auto_start_comma time matches 0 run function onigoko:system/auto_start/start