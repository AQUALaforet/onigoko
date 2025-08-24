scoreboard players set game settings 0
team leave @a
#特殊アイテム削除
clear @a feather
clear @a glass_pane
team modify nge friendlyFire false
team modify oni friendlyFire false
team modify nge nametagVisibility hideForOtherTeams
team modify oni nametagVisibility hideForOtherTeams

effect clear @a
execute as @a at @s run attribute @s jump_strength base reset
execute as @a at @s run attribute @s knockback_resistance base reset
schedule clear onigoko:onigoko/countdown/start/count

gamemode adventure @a[gamemode=!creative]