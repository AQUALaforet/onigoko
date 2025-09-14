execute positioned as @e[type=armor_stand,tag=keidoroexit] if entity @p[team=!ice,distance=..0.5] run tag @p[team=!ice,distance=..1] add exitnge
execute unless score mode settings matches 3 positioned as @e[type=armor_stand,tag=keidoroexit] if entity @p[team=ice,distance=..0.5] run tag @p[team=ice,distance=..1] add exitnge
execute positioned as @e[type=armor_stand,tag=keidoroexitnge] run tp @a[tag=exitnge] ~ ~ ~
tag @a[tag=exitnge] remove exitnge