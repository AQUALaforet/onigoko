clear @s packed_ice
effect give @s invisibility 5 1 true
scoreboard players set @s spawn_inv 100
advancement revoke @s only onigoko:nge_hurt_ice
attribute @s jump_strength base reset
attribute @s knockback_resistance base reset
scoreboard players set @s ice4 100
effect clear @s blindness
effect clear @s slowness
team join nge

tellraw @a ["",{"selector":"@s","color":"dark_aqua"},{"text":"が","color":"aqua"},{"selector":"@a[tag=nge_attack_ice]","color":"aqua"},{"text":"によって溶けた","color":"aqua"}]
tag @a remove nge_attack_ice