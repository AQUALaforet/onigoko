#透明化処理
execute as @a[team=!ice,nbt={SelectedItem:{id:"minecraft:glass_pane",count:1}}] at @s run tag @s add inv
tag @a[team=!ice,scores={inv3=..0,inv2=..0}] remove inv
execute as @a[team=!ice,tag=inv] at @s run item replace entity @s enderchest.0 from entity @s hotbar.0
execute as @a[team=!ice,tag=inv] at @s run item replace entity @s enderchest.1 from entity @s hotbar.1
execute as @a[team=!ice,tag=inv] at @s run item replace entity @s enderchest.2 from entity @s hotbar.2
execute as @a[team=!ice,tag=inv] at @s run item replace entity @s enderchest.3 from entity @s hotbar.3
execute as @a[team=!ice,tag=inv] at @s run item replace entity @s enderchest.4 from entity @s hotbar.4
execute as @a[team=!ice,tag=inv] at @s run item replace entity @s enderchest.5 from entity @s hotbar.5
execute as @a[team=!ice,tag=inv] at @s run item replace entity @s enderchest.6 from entity @s hotbar.6
execute as @a[team=!ice,tag=inv] at @s run item replace entity @s enderchest.7 from entity @s hotbar.7
execute as @a[team=!ice,tag=inv] at @s run item replace entity @s enderchest.8 from entity @s hotbar.8
tag @p[team=!ice,tag=inv2,scores={inv2=..0,inv3=..0}] add inv3
tag @a[team=!ice,tag=inv] add inv2
clear @a[team=!ice,tag=inv2] glass_pane
tag @a[team=!ice,tag=inv] remove inv
execute as @a[team=!ice,tag=inv2,nbt={SelectedItem:{id:"minecraft:barrier"}}] run tag @s add inv3
item replace entity @a[team=!ice,tag=inv] weapon.mainhand with air
execute as @a[team=!ice,tag=inv2,nbt=!{SelectedItemSlot:0}] at @s run item replace entity @s hotbar.0 with barrier
execute as @a[team=!ice,tag=inv2,nbt=!{SelectedItemSlot:1}] at @s run item replace entity @s hotbar.1 with barrier
execute as @a[team=!ice,tag=inv2,nbt=!{SelectedItemSlot:2}] at @s run item replace entity @s hotbar.2 with barrier
execute as @a[team=!ice,tag=inv2,nbt=!{SelectedItemSlot:3}] at @s run item replace entity @s hotbar.3 with barrier
execute as @a[team=!ice,tag=inv2,nbt=!{SelectedItemSlot:4}] at @s run item replace entity @s hotbar.4 with barrier
execute as @a[team=!ice,tag=inv2,nbt=!{SelectedItemSlot:5}] at @s run item replace entity @s hotbar.5 with barrier
execute as @a[team=!ice,tag=inv2,nbt=!{SelectedItemSlot:6}] at @s run item replace entity @s hotbar.6 with barrier
execute as @a[team=!ice,tag=inv2,nbt=!{SelectedItemSlot:7}] at @s run item replace entity @s hotbar.7 with barrier
execute as @a[team=!ice,tag=inv2,nbt=!{SelectedItemSlot:8}] at @s run item replace entity @s hotbar.8 with barrier
execute as @a[team=!ice,tag=inv2] run scoreboard players remove @p[tag=inv2] inv 1
effect give @a[team=!ice,tag=inv2] invisibility 1 0 true
scoreboard players remove @a[scores={spawn_inv=1..}] spawn_inv 1
effect clear @a[team=!ice,tag=!inv2,scores={spawn_inv=..0}] invisibility
effect clear @a[team=!ice,tag=inv2] strength
effect give @a[team=oni,tag=inv2] weakness 1 10 true
execute if score game settings matches 2 run effect clear @a[team=oni,tag=!inv2] weakness
clear @a[team=!ice,tag=inv3] barrier
tag @a[team=!ice,tag=inv3] remove inv2
execute as @a[team=!ice,tag=inv3] at @s run item replace entity @s hotbar.0 from entity @s enderchest.0
execute as @a[team=!ice,tag=inv3] at @s run item replace entity @s hotbar.1 from entity @s enderchest.1
execute as @a[team=!ice,tag=inv3] at @s run item replace entity @s hotbar.2 from entity @s enderchest.2
execute as @a[team=!ice,tag=inv3] at @s run item replace entity @s hotbar.3 from entity @s enderchest.3
execute as @a[team=!ice,tag=inv3] at @s run item replace entity @s hotbar.4 from entity @s enderchest.4
execute as @a[team=!ice,tag=inv3] at @s run item replace entity @s hotbar.5 from entity @s enderchest.5
execute as @a[team=!ice,tag=inv3] at @s run item replace entity @s hotbar.6 from entity @s enderchest.6
execute as @a[team=!ice,tag=inv3] at @s run item replace entity @s hotbar.7 from entity @s enderchest.7
execute as @a[team=!ice,tag=inv3] at @s run item replace entity @s hotbar.8 from entity @s enderchest.8
execute as @a[team=!ice,tag=inv3] at @s run item replace entity @s enderchest.0 with air
execute as @a[team=!ice,tag=inv3] at @s run item replace entity @s enderchest.1 with air
execute as @a[team=!ice,tag=inv3] at @s run item replace entity @s enderchest.2 with air
execute as @a[team=!ice,tag=inv3] at @s run item replace entity @s enderchest.3 with air
execute as @a[team=!ice,tag=inv3] at @s run item replace entity @s enderchest.4 with air
execute as @a[team=!ice,tag=inv3] at @s run item replace entity @s enderchest.5 with air
execute as @a[team=!ice,tag=inv3] at @s run item replace entity @s enderchest.6 with air
execute as @a[team=!ice,tag=inv3] at @s run item replace entity @s enderchest.7 with air
execute as @a[team=!ice,tag=inv3] at @s run item replace entity @s enderchest.8 with air
tag @a[team=!ice,tag=inv3] remove inv3
