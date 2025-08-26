tag @r[tag=onik,team=!oni] add onir
team join oni @a[tag=onir]
tag @a[tag=onir] remove onir
scoreboard players remove repeat_select_oni settings 1

execute if score repeat_select_oni settings matches 0 run tellraw @a ["",{"color":"yellow","text":"今回の鬼は"},{"color":"red","selector":"@a[team=oni]"},{"color":"yellow","text":"さんです。"}]
execute if score repeat_select_oni settings matches 0 store result score current_oni settings if entity @a[team=oni]
execute if score repeat_select_oni settings matches 0 if score current_oni settings < onik settings run scoreboard players operation oni_random settings = onik settings
execute if score repeat_select_oni settings matches 0 if score current_oni settings < onik settings run scoreboard players operation oni_random settings -= current_oni settings
execute if score repeat_select_oni settings matches 0 if score current_oni settings < onik settings if score oni_random settings matches 1.. unless score mode settings matches 4 run function onigoko:system/select_oni/random
execute if score repeat_select_oni settings matches 1.. run function onigoko:system/select_oni/main