#減算

execute if score min time matches 0 if score sec time matches 0 if score sec2 time matches 0 run scoreboard players set sec2 time 1
execute if score min time matches ..-1 run scoreboard players set min time 0
scoreboard players remove sec2 time 1
execute if score sec2 time matches ..-1 run scoreboard players remove sec time 1
execute if score sec2 time matches ..-1 run scoreboard players set sec2 time 19
execute if score sec time matches ..-1 run scoreboard players remove min time 1
execute if score sec time matches ..-1 run scoreboard players set sec time 59
function onigoko:onigoko/game/sidebar/ingame with storage game:settings

#チェーン
execute if score mode settings matches 0 run function onigoko:onigoko/game/start/hueoni
execute if score mode settings matches 1 run function onigoko:onigoko/game/start/ice
execute if score mode settings matches 2 run function onigoko:onigoko/game/start/normal
execute if score mode settings matches 3 run function onigoko:onigoko/game/start/keidoro
execute if score mode settings matches 4 run function onigoko:onigoko/game/start/kawari
execute if score mode settings matches 5 run function onigoko:onigoko/game/start/tnttag

##花火
execute if score mode settings matches 0..4 if score firework settings matches 0 if score min time matches 5 if score sec time matches 0 if score sec2 time matches 0 run tellraw @a [{"text":"また、","color":"yellow"},{"text":"1","color":"green"},{"text":"分毎に逃走者の上に花火があがるようになりました。","color":"yellow"}]
execute if score mode settings matches 0..4 if score firework settings matches 0 if score sec time matches 0 if score sec2 time matches 0 if score min time matches 4..5 run execute as @a[team=nge] at @s run summon firework_rocket ~ ~ ~ {Life:40,LifeTime:60,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,has_trail:true,colors:[65527]}]}}}}
execute if score mode settings matches 0..4 if score firework settings matches 0 if score sec time matches 0 if score sec2 time matches 0 if score min time matches 1..3 run execute as @a[team=nge] at @s run summon firework_rocket ~ ~ ~ {Life:40,LifeTime:60,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[65527]}]}}}}
execute if score mode settings matches 0..4 if score firework settings matches 0 if score min time matches 0 if score sec time matches 30 if score sec2 time matches 0 run execute as @a[team=nge] at @s run summon firework_rocket ~ ~ ~ {Life:40,LifeTime:60,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[65527]}]}}}}
execute if score mode settings matches 0..4 if score firework settings matches 0 if score min time matches 0 if score sec time matches 30 if score sec2 time matches 0 run execute as @a[team=nge] at @s run effect give @s glowing 30 0 true
##残り時間
execute if score mode settings matches 0..4 if score sec time matches 0 if score sec2 time matches 0 if score min time matches 1..3 run tellraw @a ["",{"text":"残り","color":"yellow"},{"score":{"name":"min","objective":"time"},"color":"green"},{"text":"分","color":"yellow"}]
execute if score mode settings matches 0..4 if score min time matches 0 if score sec time matches 30 if score sec2 time matches 0 run tellraw @a [{"text":"残り","color":"yellow"},{"text":"30","color":"green"},{"text":"秒","color":"yellow"}]
execute if score mode settings matches 0..4 if score poison settings matches 0 if score min time matches 0 if score sec time matches 30 if score sec2 time matches 0 run tellraw @a [{"text":"逃走者","color":"aqua"},{"text":"に毒が付与されます。","color":"yellow"}]
execute if score mode settings matches 0..4 if score poison settings matches 0 if score min time matches 0 if score sec time matches 30 if score sec2 time matches 0 run effect give @a[team=nge] poison 30 0 true

#ゲーム終了検知
execute if score mode settings matches 0..4 if score nge settings matches ..0 run function onigoko:onigoko/game/oniend
execute if score mode settings matches 0..4 if score min time matches ..0 if score sec time matches ..0 run function onigoko:onigoko/game/end