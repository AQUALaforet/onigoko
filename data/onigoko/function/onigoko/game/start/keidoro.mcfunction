effect give @a[team=ice] resistance 1 5 true
execute positioned as @e[type=armor_stand,tag=keidoroexit] if entity @p[team=ice,distance=..0.5] run tag @p[team=ice,distance=..1] add exit
execute if entity @a[team=ice,tag=exit] run tellraw @a ["",{"selector":"@a[team=ice,tag=exit]","color":"gray"},{"text":"が脱走した!","color":"aqua"}]
team join nge @a[tag=exit]
tag @a[tag=exit] remove exit

execute as @a[scores={deathcount=1..}] at @s run function onigoko:system/advancement/oni_hurt_nge_2

execute as @a[scores={leave_game=1..}] at @s positioned as @e[type=armor_stand,tag=keidorospawn] run tp @s ~ ~ ~
team join ice @a[scores={leave_game=1..}]
execute as @a[scores={leave_game=1..}] at @s run scoreboard players set @s leave_game 2
scoreboard players set @a[scores={leave_game=2}] leave_game 0