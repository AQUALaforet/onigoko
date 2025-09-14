scoreboard players remove @a[scores={inv=..-1}] inv2 1
execute as @a at @s if score @s inv matches ..-1 run function onigoko:onigoko/chain/inv1

scoreboard players remove @a[scores={inv2=..-1}] inv3 1
execute as @a at @s if score @s inv2 matches ..-1 run function onigoko:onigoko/chain/inv2

scoreboard players set @a[scores={inv3=..0,inv2=..0}] inv3 0
execute as @a at @s if score @s inv2 matches ..0 if score @s inv3 matches ..0 run function onigoko:onigoko/chain/inv3