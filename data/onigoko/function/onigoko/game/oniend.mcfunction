execute if score game settings matches 2 if score oni settings matches 1.. run tellraw @a ["",{"text":"\n"},{"color":"yellow","text":"ゲーム終了 "},{"color":"red","text":"鬼"},{"color":"yellow","text":"の勝利!"}]
execute if score game settings matches 2 if score oni settings matches 1.. run execute as @a at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 0.5 1
scoreboard players set min time 0
scoreboard players set sec time 0
scoreboard players set sec2 time 1
scoreboard players set game settings 0
scoreboard players set end settings 1
tag @a remove live
#特殊アイテム削除
clear @a feather
clear @a glass_pane
effect clear @a
gamemode adventure @a[gamemode=spectator]
team modify nge friendlyFire false
team modify nge nametagVisibility hideForOtherTeams
team modify oni nametagVisibility hideForOtherTeams
execute as @a at @s run attribute @s jump_strength base reset
execute as @a at @s run attribute @s knockback_resistance base reset