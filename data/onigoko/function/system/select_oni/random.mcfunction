execute if score oni_random settings matches 1.. run tag @r[team=!oni,tag=!onikr,limit=1] add onikr
tag @a[tag=onikr] add onikr2
team join oni @a[tag=onikr]
tag @a[tag=onikr] remove onikr
scoreboard players remove oni_random settings 1
execute if score oni_random settings matches 0 run tellraw @a ["",{"color":"yellow","text":"今回ランダムで選択された鬼は"},{"color":"red","selector":"@a[tag=onikr2]"},{"color":"yellow","text":"さんです。"}]
execute if score oni_random settings matches 0 run tag @a remove onikr2
execute unless score oni_random settings matches 0 run function onigoko:system/select_oni/random