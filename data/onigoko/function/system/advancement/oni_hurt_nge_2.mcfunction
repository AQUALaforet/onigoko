execute if score mode settings matches 0 run team join oni
scoreboard players set @s[scores={deathcount=1}] death_interval 3
execute if score mode settings matches 0 positioned as @e[type=armor_stand,tag=onispawn,limit=1,sort=random] run tp @s ~ ~1 ~

execute if score mode settings matches 1 run team join ice
execute if entity @s[scores={deathcount=1}] if score mode settings matches 2 positioned as @e[type=armor_stand,tag=spawn,limit=1] run tp @s ~ ~ ~
execute if score mode settings matches 1 run attribute @s jump_strength base set 0
execute if score mode settings matches 1 run attribute @s knockback_resistance base set 10
execute if score mode settings matches 1 run item replace entity @s armor.head with packed_ice[custom_name={"text":" "},enchantments={"minecraft:binding_curse":1,"minecraft:vanishing_curse":1}] 1
execute if score mode settings matches 1 run effect give @s blindness infinite 0 true
execute if score mode settings matches 1 run effect give @s slowness infinite 50 true

execute if score mode settings matches 2 run gamemode spectator @s
execute if score mode settings matches 2 run team leave @s

execute if entity @s[scores={deathcount=0}] if score mode settings matches 3 run execute positioned as @e[type=armor_stand,tag=keidorospawn] run tp @s ~ ~ ~
execute if score mode settings matches 3 run team join ice

execute if entity @s[scores={deathcount=0}] if score mode settings matches 4 run team join nge @a[tag=oni_hurt_nge]
execute if entity @s[scores={deathcount=0}] if score mode settings matches 4 run team join oni
execute if entity @s if score mode settings matches 4 run effect give @s blindness 10 0 true
execute if entity @s if score mode settings matches 4 run effect give @s slowness 10 50 true
execute if entity @s[scores={deathcount=0}] if score mode settings matches 4 run effect give @s weakness 10 200 true
execute if entity @s[scores={deathcount=1}] if score mode settings matches 4 run effect give @s glowing 15 0 true

execute if entity @s[scores={deathcount=0}] if score mode settings matches 5 run team join nge @a[tag=oni_hurt_nge]
execute if entity @s[scores={deathcount=0}] if score mode settings matches 5 run team join oni

effect clear @s[scores={deathcount=0}] glowing

execute if entity @s[scores={deathcount=0}] if score mode settings matches 0 run tellraw @a ["",{"selector":"@s","color":"aqua"},{"text":"は","color":"red"},{"selector":"@a[tag=oni_hurt_nge]","color":"red"},{"text":"に捕まった","color":"red"}]
execute if entity @s[scores={deathcount=0}] if score mode settings matches 1 run tellraw @a ["",{"selector":"@s","color":"dark_aqua"},{"text":"が","color":"aqua"},{"selector":"@a[tag=oni_hurt_nge]","color":"red"},{"text":"によって凍ってしまった","color":"aqua"}]
execute if entity @s[scores={deathcount=0}] if score mode settings matches 2..3 run tellraw @a ["",{"selector":"@s","color":"aqua"},{"text":"は","color":"red"},{"selector":"@a[tag=oni_hurt_nge]","color":"red"},{"text":"に捕まった","color":"red"}]
execute if entity @s[scores={deathcount=0}] if score mode settings matches 4 run tellraw @a ["",{"text":"鬼が","color":"yellow"},{"selector":"@a[tag=oni_hurt_nge]","color":"aqua"},{"text":"から","color":"yellow"},{"selector":"@s","color":"red"},{"text":"になりました","color":"yellow"}]
execute if entity @s[scores={deathcount=0}] if score mode settings matches 5 run tellraw @a ["",{"selector":"@s","color":"red"},{"text":"が爆弾を所持しています!","color":"yellow"}]

execute if entity @s[scores={deathcount=1}] if score mode settings matches 0 run tellraw @a ["",{"selector":"@s","color":"aqua"},{"text":"は","color":"red"},{"text":"自ら死を選んだ","color":"red"}]
execute if entity @s[scores={deathcount=1}] if score mode settings matches 1 run tellraw @a ["",{"selector":"@s","color":"dark_aqua"},{"text":"は","color":"aqua"},{"text":"自ら凍ることを選んだ","color":"aqua"}]
execute if entity @s[scores={deathcount=1}] if score mode settings matches 2..3 run tellraw @a ["",{"selector":"@s","color":"aqua"},{"text":"は","color":"red"},{"text":"自ら死を選んだ","color":"red"}]
execute if entity @s[scores={deathcount=1}] if score mode settings matches 4 run tellraw @a [{"selector":"@s","color":"aqua"},{"text":"は自ら死を選んだ","color":"red"}]
execute if entity @s[scores={deathcount=1}] if score mode settings matches 5 run tellraw @a ["",{"selector":"@s","color":"red"},{"text":"は死亡した","color":"yellow"}]



tag @a remove oni_hurt_nge


advancement revoke @a only onigoko:test/oni_hurt_nge

scoreboard players set @s delay -1
scoreboard players set @a[scores={deathcount=1..}] deathcount 0