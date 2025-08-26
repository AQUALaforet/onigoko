effect give @a[team=oni] speed 1 3 true
effect give @a[team=nge] speed 1 2 true
effect give @a resistance 1 0 true
effect give @a regeneration 1 10 true
tag @a[scores={health=..14}] add tnt2
gamemode spectator @a[tag=tnt2]
execute if entity @a[tag=tnt2,team=nge] run tellraw @a ["",{"color":"aqua","selector":"@a[tag=tnt2,team=nge]"},{"color":"red","text":"は爆発に巻き込まれた"}]
team leave @a[tag=tnt2]
tag @a[tag=tnt2] remove tnt2
effect give @a[scores={health=..19}] instant_health 1 5 true
item replace entity @a[team=oni] hotbar.0 with tnt
item replace entity @a[team=oni] hotbar.1 with tnt
item replace entity @a[team=oni] hotbar.2 with tnt
item replace entity @a[team=oni] hotbar.3 with tnt
item replace entity @a[team=oni] hotbar.4 with tnt
item replace entity @a[team=oni] hotbar.5 with tnt
item replace entity @a[team=oni] hotbar.6 with tnt
item replace entity @a[team=oni] hotbar.7 with tnt
item replace entity @a[team=oni] hotbar.8 with tnt
execute if score game settings matches 1 if score nge settings matches 1.. run scoreboard players set min time 0
execute if score game settings matches 1 if score nge settings matches 56.. run scoreboard players set sec time 65
execute if score game settings matches 1 if score nge settings matches 46..55 run scoreboard players set sec time 60
execute if score game settings matches 1 if score nge settings matches 37..45 run scoreboard players set sec time 55
execute if score game settings matches 1 if score nge settings matches 29..36 run scoreboard players set sec time 50
execute if score game settings matches 1 if score nge settings matches 22..28 run scoreboard players set sec time 45
execute if score game settings matches 1 if score nge settings matches 16..21 run scoreboard players set sec time 40
execute if score game settings matches 1 if score nge settings matches 11..15 run scoreboard players set sec time 35
execute if score game settings matches 1 if score nge settings matches 7..10 run scoreboard players set sec time 30
execute if score game settings matches 1 if score nge settings matches 4..6 run scoreboard players set sec time 25
execute if score game settings matches 1 if score nge settings matches 1..3 run scoreboard players set sec time 20
#execute if score game settings matches 1 run title @a actionbar ["",{"text":"逃","color":"aqua"},{"text":":","color":"yellow"},{"score":{"name":"nge","objective":"settings"},"color":"aqua"},{"text":"人","color":"yellow"},{"text":" ラウンド開始まで:","color":"yellow"},{"score":{"name":"countdown","objective":"time"},"color":"green"},{"text":"秒","color":"yellow"},{"text":" 鬼","color":"red"},{"text":":","color":"yellow"},{"score":{"name":"oni","objective":"settings"},"color":"red"},{"text":"人","color":"yellow"}]
#execute if score game settings matches 2 if score min time matches 1.. if score sec time matches 10.. run title @a actionbar ["",{"text":"逃","color":"aqua"},{"text":":","color":"yellow"},{"score":{"name":"nge","objective":"settings"},"color":"aqua"},{"text":"人 ラウンド終了まで:","color":"yellow"},{"score":{"name":"min","objective":"time"},"color":"red"},{"text":":","color":"red"},{"score":{"name":"sec","objective":"time"},"color":"red"},{"text":"秒","color":"yellow"},{"text":" 鬼","color":"red"},{"text":":","color":"yellow"},{"score":{"name":"oni","objective":"settings"},"color":"red"},{"text":"人","color":"yellow"}]
#execute if score game settings matches 2 if score min time matches 1.. if score sec time matches ..9 run title @a actionbar ["",{"text":"逃","color":"aqua"},{"text":":","color":"yellow"},{"score":{"name":"nge","objective":"settings"},"color":"aqua"},{"text":"人 ラウンド終了まで:","color":"yellow"},{"score":{"name":"min","objective":"time"},"color":"red"},{"text":":0","color":"red"},{"score":{"name":"sec","objective":"time"},"color":"red"},{"text":"秒","color":"yellow"},{"text":" 鬼","color":"red"},{"text":":","color":"yellow"},{"score":{"name":"oni","objective":"settings"},"color":"red"},{"text":"人","color":"yellow"}]
#execute if score game settings matches 2 if score min time matches ..0 run title @a actionbar ["",{"text":"逃","color":"aqua"},{"text":":","color":"yellow"},{"score":{"name":"nge","objective":"settings"},"color":"aqua"},{"text":"人 ラウンド終了まで:","color":"yellow"},{"score":{"name":"sec","objective":"time"},"color":"red"},{"text":"秒","color":"yellow"},{"text":" 鬼","color":"red"},{"text":":","color":"yellow"},{"score":{"name":"oni","objective":"settings"},"color":"red"},{"text":"人","color":"yellow"}]
execute if score game settings matches 2 if score min time matches ..0 if score sec time matches ..0 run scoreboard players set countdown time 9
execute if score game settings matches 2 if score min time matches ..0 if score sec time matches ..0 run scoreboard players set countdown2 time 19
execute if score game settings matches 2 if score min time matches ..0 if score sec time matches ..0 run tellraw @a [{"color":"red","selector":"@a[team=oni]"},{"color":"red","text":"は爆発してしまった"}]

execute if score game settings matches 2 if score min time matches ..0 if score sec time matches ..0 run execute as @a[team=oni] at @s run summon creeper ~ ~0.1 ~ {Invulnerable:1b,Fuse:0}
execute if score game settings matches 2 if score min time matches ..0 if score sec time matches ..0 run scoreboard players set game settings 1
execute if score game settings matches 1 if score countdown time matches ..0 if score countdown2 time matches ..0 if score nge settings matches 56.. run team join oni @r[limit=10,team=nge]
execute if score game settings matches 1 if score countdown time matches ..0 if score countdown2 time matches ..0 if score nge settings matches 46..55 run team join oni @r[limit=9,team=nge]
execute if score game settings matches 1 if score countdown time matches ..0 if score countdown2 time matches ..0 if score nge settings matches 37..45 run team join oni @r[limit=8,team=nge]
execute if score game settings matches 1 if score countdown time matches ..0 if score countdown2 time matches ..0 if score nge settings matches 29..36 run team join oni @r[limit=7,team=nge]
execute if score game settings matches 1 if score countdown time matches ..0 if score countdown2 time matches ..0 if score nge settings matches 22..28 run team join oni @r[limit=6,team=nge]
execute if score game settings matches 1 if score countdown time matches ..0 if score countdown2 time matches ..0 if score nge settings matches 16..21 run team join oni @r[limit=5,team=nge]
execute if score game settings matches 1 if score countdown time matches ..0 if score countdown2 time matches ..0 if score nge settings matches 11..15 run team join oni @r[limit=4,team=nge]
execute if score game settings matches 1 if score countdown time matches ..0 if score countdown2 time matches ..0 if score nge settings matches 7..10 run team join oni @r[limit=3,team=nge]
execute if score game settings matches 1 if score countdown time matches ..0 if score countdown2 time matches ..0 if score nge settings matches 4..6 run team join oni @r[limit=2,team=nge]
execute if score game settings matches 1 if score countdown time matches ..0 if score countdown2 time matches ..0 if score nge settings matches 2..3 run team join oni @r[limit=1,team=nge]
execute if score game settings matches 1 if score countdown time matches 0 if score countdown2 time matches 0 run tellraw @a [{"color":"yellow","text":"今回爆弾を所持しているのは"},{"color":"red","selector":"@a[team=oni]"},{"color":"yellow","text":"さんです。"}]
execute if score game settings matches 1 if score countdown time matches ..0 if score countdown2 time matches ..0 if score nge settings matches ..3 run execute positioned as @e[type=armor_stand,tag=spawn,limit=1] run tp @a[team=nge] ~ ~ ~
execute if score game settings matches 1 if score countdown time matches ..0 if score countdown2 time matches ..0 if score nge settings matches ..3 run execute positioned as @e[type=armor_stand,tag=spawn,limit=1] run tp @a[team=oni] ~ ~ ~
execute if score game settings matches 1 if score countdown time matches ..0 if score countdown2 time matches ..0 run execute as @a at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
execute if score game settings matches 1 if score countdown time matches ..0 if score countdown2 time matches ..0 run scoreboard players set game settings 2
execute if score nge settings matches 1 if score oni settings matches 0 run tellraw @a ["",{"color":"yellow","text":"ゲーム終了"}," ",{"color":"aqua","selector":"@a[team=nge]"},{"color":"yellow","text":"の勝利!"}]
execute if score nge settings matches 0 if score oni settings matches 0 run tellraw @a ["",{"color":"yellow","text":"ゲーム終了"}," ",{"color":"yellow","text":"勝者はいませんでした。"}]
execute if score nge settings matches 0..1 if score oni settings matches 0 run scoreboard players set end settings 1
execute if score nge settings matches 0..1 if score oni settings matches 0 run team leave @a
execute if score nge settings matches 0..1 if score oni settings matches 0 run execute as @a at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 0.5 1
execute if score nge settings matches 0..1 if score oni settings matches 0 run scoreboard players set game settings 0