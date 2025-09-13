effect give @a[team=!oni] weakness 1 10 true
#effect give @a[scores={health=..10}] instant_health 1 5 true
execute as @a[scores={deathcount=1..}] at @s run function onigoko:system/advancement/oni_hurt_nge_2
execute as @a[scores={leave_game=1..}] at @s positioned as @e[type=armor_stand,tag=onispawn,limit=1,sort=random] run tp @s ~ ~1 ~
execute as @a[scores={leave_game=1..}] at @s run team join oni @s
execute as @a[scores={leave_game=1..}] at @s run scoreboard players set @s leave_game 2
scoreboard players set @a[scores={leave_game=2}] leave_game 0
