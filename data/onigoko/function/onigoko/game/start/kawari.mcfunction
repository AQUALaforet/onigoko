effect give @a[team=!oni,gamemode=!creative,gamemode=!spectator] weakness 1 10 true
#effect give @a[scores={health=..10}] instant_health 1 5 true

execute as @a[scores={deathcount=1..}] at @s run function onigoko:system/advancement/oni_hurt_nge_2

execute as @a[scores={leave_game=1..}] at @s run effect give @s glowing 20 0 true
execute as @a[scores={leave_game=1..}] at @s run effect give @s slowness 15 127 true
execute as @a[scores={leave_game=1..}] at @s run scoreboard players set @s leave_game 2
scoreboard players set @a[scores={leave_game=2}] leave_game 0
