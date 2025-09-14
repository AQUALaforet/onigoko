execute if score speed settings matches 0 as @a[team=nge,tag=speed,nbt={SelectedItem:{id:"minecraft:feather",count:1,components:{"minecraft:custom_name":{"color":"aqua","italic":false,"text":"俊敏"}}}}] at @s run effect give @s speed 1 3 true
execute if score speed settings matches 0 as @a[team=oni,tag=speed,nbt={SelectedItem:{id:"minecraft:feather",count:1,components:{"minecraft:custom_name":{"color":"aqua","italic":false,"text":"俊敏"}}}}] at @s run effect give @s speed 1 5 true
execute if score speed settings matches 0 as @a[team=!ice,tag=speed,nbt=!{SelectedItem:{id:"minecraft:feather",count:1,components:{"minecraft:custom_name":{"color":"aqua","italic":false,"text":"俊敏"}}}}] at @s run effect clear @s speed
execute if score speed settings matches 0 run scoreboard players remove @a[team=!ice,nbt={SelectedItem:{id:"minecraft:feather",count:1,components:{"minecraft:custom_name":{"color":"aqua","italic":false,"text":"俊敏"}}}}] speed 1
execute if score speed settings matches 0 as @a[team=!ice] at @s if entity @s[nbt={SelectedItem:{id:"minecraft:feather",count:1,components:{"minecraft:custom_name":{"color":"aqua","italic":false,"text":"俊敏"}}}}] run tag @s add speed
execute if score speed settings matches 0 as @a[team=!ice] at @s unless entity @s[nbt={SelectedItem:{id:"minecraft:feather",count:1,components:{"minecraft:custom_name":{"color":"aqua","italic":false,"text":"俊敏"}}}}] run tag @s remove speed
execute if score speed settings matches 0 run tag @p[tag=speed,scores={speed2=..0,speed3=..0}] remove speed

execute if score speed settings matches 0 run scoreboard players remove @a[team=!ice,scores={speed=..-1}] speed2 1
execute if score speed settings matches 0 as @a[team=!ice,scores={speed=..-1}] at @s run function onigoko:onigoko/chain/sp1

execute if score speed settings matches 0 run scoreboard players remove @a[team=!ice,scores={speed2=..-1}] speed3 1
execute if score speed settings matches 0 as @a[team=!ice,scores={speed2=..-1}] at @s run function onigoko:onigoko/chain/sp2

execute if score speed settings matches 0 run scoreboard players set @a[team=!ice,scores={speed3=..0,speed2=..0}] speed3 0
execute if score speed settings matches 0 as @a[team=!ice,scores={speed3=..0,speed=..0}] at @s run function onigoko:onigoko/chain/sp3