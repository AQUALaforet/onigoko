team modify ice color gray
scoreboard players set countdown time 29
scoreboard players set countdown2 time 19
execute positioned as @e[type=armor_stand,tag=spawn,limit=1] run tp @a[team=nge] ~ ~ ~
effect give @a[team=oni] weakness 30 120 true
effect give @a[team=nge] speed 30 6 true
schedule function onigoko:onigoko/game/30s 29s
scoreboard players set @a[team=nge] inv 0
scoreboard players set @a[team=nge] inv2 0
scoreboard players set @a[team=nge] inv3 0
scoreboard players set @a[team=oni] inv 0
scoreboard players set @a[team=oni] inv2 0
scoreboard players set @a[team=oni] inv3 0
scoreboard players set @a[team=nge] speed 0
scoreboard players set @a[team=nge] speed2 0
scoreboard players set @a[team=nge] speed3 0
scoreboard players set @a[team=oni] speed 0
scoreboard players set @a[team=oni] speed2 0
scoreboard players set @a[team=oni] speed3 0
team modify nge nametagVisibility hideForOtherTeams
team modify oni nametagVisibility hideForOtherTeams