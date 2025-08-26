execute if score end_comma time matches 0.. run scoreboard players remove end_comma time 1
execute if score end_sec time matches 0.. if score end_comma time matches ..-1 run scoreboard players remove end_sec time 1
execute if score end_comma time matches ..-1 run scoreboard players set end_comma time 19

execute if score end_sec time matches 0 if score end_comma time matches 0 positioned as @e[type=armor_stand,tag=lobbyspawn] run tp @a ~ ~ ~
execute if score end_sec time matches 0 if score end_comma time matches 0 run team leave @a
execute if score end_sec time matches 0 if score end_comma time matches 0 if score mode settings matches 5 run gamemode adventure @a[gamemode=!creative]
execute if score end_sec time matches 0 if score end_comma time matches 0 run scoreboard players set end settings 0
execute if score end_sec time matches 0 if score end_comma time matches 0 if score auto_start settings matches 0 run scoreboard players set auto_start_count settings 0
execute if score end_sec time matches 0 if score end_comma time matches 0 run scoreboard players reset end_sec time