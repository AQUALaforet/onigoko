effect give @a[team=!oni] weakness 1 10 true
execute as @a[scores={deathcount=1..}] at @s run function onigoko:system/advancement/oni_hurt_nge_2

execute as @a[scores={leave_game=1..}] at @s run gamemode spectator @s
execute as @a[scores={leave_game=1..}] at @s run team leave @s
execute as @a[scores={leave_game=1..}] at @s run scoreboard players set @s leave_game 2
scoreboard players set @a[scores={leave_game=2}] leave_game 0