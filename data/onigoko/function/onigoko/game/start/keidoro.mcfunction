effect give @a[team=ice] resistance 1 5 true
execute positioned as @e[type=armor_stand,tag=keidoroexit] if entity @p[team=ice,distance=..0.5] run tag @p[team=ice,distance=..1] add exit
execute if entity @a[team=ice,tag=exit] run tellraw @a ["",{"selector":"@a[team=ice,tag=exit]","color":"gray"},{"text":"\u304c\u8131\u8d70\u3057\u305f!","color":"aqua"}]
team join nge @a[tag=exit]
tag @a[tag=exit] remove exit