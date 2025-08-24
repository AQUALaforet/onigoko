tag @r[tag=onik] add onir
team join oni @a[tag=onir]
execute if entity @a[tag=onir] run tellraw @a ["",{"color":"yellow","text":"今回の鬼は"},{"color":"red","selector":"@a[tag=onir]"},{"color":"yellow","text":"さんです。"}]
tag @a[tag=onir] remove onir
execute unless entity @a[tag=onik] run tellraw @s {"color":"red","text":"エラー:鬼を選定できませんでした。"}