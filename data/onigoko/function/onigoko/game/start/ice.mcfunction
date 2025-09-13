effect give @a[team=nge] strength 1 1 true
effect give @a[team=oni] resistance 1 255 true

execute as @a[scores={deathcount=1..}] at @s run function onigoko:system/advancement/oni_hurt_nge_2

execute as @a[scores={leave_game=1..}] at @s run team join ice @s
execute as @a[scores={leave_game=1..}] at @s run scoreboard players set @s leave_game 2
scoreboard players set @a[scores={leave_game=2}] leave_game 0

