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


schedule clear onigoko:onigoko/countdown/1
schedule clear onigoko:onigoko/countdown/2
schedule clear onigoko:onigoko/countdown/3
schedule clear onigoko:onigoko/countdown/4
schedule clear onigoko:onigoko/countdown/5
schedule clear onigoko:onigoko/countdown/10
tellraw @a {"color":"red","text":"ゲームを強制終了しました。"}
execute positioned as @e[type=armor_stand,tag=lobbyspawn] run tp @a ~ ~ ~
gamemode adventure @a[gamemode=!spectator]