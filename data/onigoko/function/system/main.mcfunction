#減算
execute if score game settings matches 2 if score min time matches 0 if score sec time matches 0 if score sec2 time matches 0 run scoreboard players set sec2 time 1
execute if score game settings matches 2 if score min time matches ..-1 run scoreboard players set min time 0
execute if score game settings matches 2 run scoreboard players remove sec2 time 1
execute if score game settings matches 2 if score sec2 time matches ..-1 run scoreboard players remove sec time 1
execute if score game settings matches 2 if score sec2 time matches ..-1 run scoreboard players set sec2 time 19
execute if score game settings matches 2 if score sec time matches ..-1 run scoreboard players remove min time 1
execute if score game settings matches 2 if score sec time matches ..-1 run scoreboard players set sec time 59
execute if score game settings matches 1 run scoreboard players remove countdown2 time 1
execute if score game settings matches 1 if score countdown time matches 1.. if score countdown2 time matches ..-1 run scoreboard players remove countdown time 1
execute if score game settings matches 1 if score countdown time matches 0.. if score countdown2 time matches ..-1 run scoreboard players set countdown2 time 19

#ゲーム設定
execute if entity @e[type=minecraft:vex,tag=oniremove] run kill @e[type=minecraft:armor_stand,tag=onikime]
kill @e[type=vex,tag=oniremove]
execute if entity @e[type=minecraft:vex,tag=onispawnremove] run kill @e[type=minecraft:armor_stand,tag=onispawn]
kill @e[type=vex,tag=onispawnremove]
execute if entity @e[type=minecraft:vex,tag=lobbyremove] run kill @e[type=minecraft:armor_stand,tag=lobbyspawn]
kill @e[type=vex,tag=lobbyremove]
execute if entity @e[type=minecraft:vex,tag=spawnremove] run kill @e[type=minecraft:armor_stand,tag=spawn]
kill @e[type=vex,tag=spawnremove]
execute if entity @e[type=minecraft:vex,tag=keidorospawnremove] run kill @e[type=minecraft:armor_stand,tag=keidorospawn]
kill @e[type=vex,tag=keidorospawnremove]
execute if entity @e[type=minecraft:vex,tag=keidoroexitremove] run kill @e[type=minecraft:armor_stand,tag=keidoroexit]
kill @e[type=vex,tag=keidoroexitremove]
execute if entity @e[type=minecraft:vex,tag=keidoroexitngeremove] run kill @e[type=minecraft:armor_stand,tag=keidoroexitnge]
kill @e[type=vex,tag=keidoroexitngeremove]
execute as @a at @s run attribute @s attack_speed base set 100

#エフェクト
effect give @a[scores={food=..19}] saturation 1 1 true
effect give @a[team=!oni,team=!nge] weakness 1 10 true

#ゲーム設定検知
execute store result score onikime settings if entity @e[type=armor_stand,tag=onikime]
execute store result score onispawn settings if entity @e[type=armor_stand,tag=onispawn]
execute store result score lobbyspawn settings if entity @e[type=armor_stand,tag=lobbyspawn]
execute store result score spawn settings if entity @e[type=armor_stand,tag=spawn]
execute store result score oni settings if entity @a[team=oni]
execute store result score nge settings if entity @a[team=nge]
execute store result score count settings if entity @a[gamemode=!spectator]
execute store result score ice settings if entity @a[team=ice]

#ゲーム終了検知
execute if score mode settings matches 0..4 if score game settings matches 2 if score nge settings matches ..0 run function onigoko:onigoko/game/oniend
execute if score mode settings matches 0..4 if score game settings matches 2 if score min time matches ..0 if score sec time matches ..0 run function onigoko:onigoko/game/end

#帽子
clear @a[tag=inv] leather_helmet
clear @a[tag=inv2] leather_helmet
clear @a[team=!oni] leather_helmet
execute if score mode settings matches 0..4 run item replace entity @a[team=oni,tag=!inv,tag=!inv2,nbt=!{Inventory:[{id:"minecraft:leather_helmet"}]}] armor.head with leather_helmet[unbreakable={},enchantments={"minecraft:binding_curse":1,"minecraft:vanishing_curse":1},dyed_color=16711680] 1
execute if score mode settings matches 5 run item replace entity @a[tag=!inv,tag=!inv2,team=oni] armor.head with tnt[enchantments={"minecraft:binding_curse":1,"minecraft:vanishing_curse":1}]



execute if score game settings matches 0..1 run effect give @a[team=oni] weakness 1 100 true
#チェーン
execute if score game settings matches 1..2 if score mode settings matches 0 run function onigoko:onigoko/game/start/hueoni
execute if score game settings matches 1..2 if score mode settings matches 1 run function onigoko:onigoko/game/start/ice
execute if score game settings matches 1..2 if score mode settings matches 2 run function onigoko:onigoko/game/start/normal
execute if score game settings matches 1..2 if score mode settings matches 3 run function onigoko:onigoko/game/start/keidoro
execute if score game settings matches 1..2 if score mode settings matches 4 run function onigoko:onigoko/game/start/kawari
execute if score game settings matches 1..2 if score mode settings matches 5 run function onigoko:onigoko/game/start/tnttag

execute unless score mode settings matches 1 as @a at @s run attribute @s knockback_resistance base set 0

#鬼決め
execute as @a at @s if entity @e[type=armor_stand,tag=onikime,dy=2] run tag @s add onik
execute as @a at @s unless entity @e[type=armor_stand,tag=onikime,dy=2] run tag @s remove onik

#タイトルバー
function onigoko:onigoko/main/titlebar

#透明化減算・停止
scoreboard players remove @a[scores={inv=..-1}] inv2 1
execute as @a at @s if score @s inv matches ..-1 run function onigoko:onigoko/chain/inv1

scoreboard players remove @a[scores={inv2=..-1}] inv3 1
execute as @a at @s if score @s inv2 matches ..-1 run function onigoko:onigoko/chain/inv2

scoreboard players set @a[scores={inv3=..0,inv2=..0}] inv3 0
execute as @a at @s if score @s inv2 matches ..0 if score @s inv3 matches ..0 run function onigoko:onigoko/chain/inv3

#氷鬼
clear @a[team=!ice] packed_ice
kill @e[type=item,nbt={Item:{id:"minecraft:tnt"}}]
scoreboard players remove @a[scores={ice4=1..}] ice4 1
scoreboard players set @a[scores={ice4=..-1}] ice4 0
effect give @a[scores={ice4=1..}] invisibility 1 0 true
clear @a[team=!oni] tnt
#残り時間イベント
##時間追加
execute if score game settings matches 2 run function onigoko:onigoko/main/timeadd

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

#透明化処理
execute if score inv settings matches 0 run function onigoko:onigoko/main/invisible

#俊敏処理
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

execute store result storage game:settings oni int 1 run scoreboard players get oni settings
execute store result storage game:settings onik int 1 run scoreboard players get onik settings
execute store result storage game:settings nge int 1 run scoreboard players get nge settings
execute store result storage game:settings ice int 1 run scoreboard players get ice settings
execute store result storage game:settings count int 1 run scoreboard players get count settings
execute store result storage game:settings countdown int 1 run scoreboard players get countdown time
execute store result storage game:settings min int 1 run scoreboard players get min time
execute store result storage game:settings sec int 1 run scoreboard players get sec time
execute store result storage game:settings set_min int 1 run scoreboard players get min min
execute store result storage game:settings set_sec int 1 run scoreboard players get sec sec
execute store result storage game:settings auto_start_player int 1 run scoreboard players get auto_start_player settings
execute store result storage game:settings auto_start_count int 1 run scoreboard players get auto_start_sec time
execute store result storage game:settings end_sec int 1 run scoreboard players get end_sec time
execute if score game settings matches 0 run function onigoko:onigoko/game/sidebar/prepare with storage game:settings
execute if score game settings matches 1 run function onigoko:onigoko/game/sidebar/wait_ingame with storage game:settings
execute if score game settings matches 2 run function onigoko:onigoko/game/sidebar/ingame with storage game:settings

execute as @a[scores={delay=0}] at @s run scoreboard players add @s delay 1
execute as @a[scores={delay=1..}] at @s run function onigoko:system/advancement/oni_hurt_nge_2
execute as @a[scores={delay=1..}] at @s run scoreboard players set @s delay 0

execute if score game settings matches 0 run tag @a[tag=tnt2] remove tnt2

execute as @a at @s if score @s trigger_start matches 1 run function onigoko:onigoko/game/start
execute as @a[scores={trigger_start=1..}] at @s run scoreboard players set @s trigger_start 0

execute as @a at @s if score @s trigger_stop matches 1 run function onigoko:onigoko/game/stop
execute as @a[scores={trigger_stop=1..}] at @s run scoreboard players set @s trigger_stop 0

execute as @a at @s if score @s trigger_onikime matches 1 run function onigoko:onigoko/game/onikime
execute as @a[scores={trigger_onikime=1..}] at @s run scoreboard players set @s trigger_onikime 0

execute as @a at @s if score @s trigger_tpspawn matches 1 run function onigoko:system/command/teleportspawn
execute as @a[scores={trigger_tpspawn=1..}] at @s run scoreboard players set @s trigger_tpspawn 0

execute as @a at @s if score @s trigger_mode_0 matches 1 run function onigoko:onigoko/settings/mode/hueoni
execute as @a at @s if score @s trigger_mode_1 matches 1 run function onigoko:onigoko/settings/mode/ice
execute as @a at @s if score @s trigger_mode_2 matches 1 run function onigoko:onigoko/settings/mode/kawari
execute as @a at @s if score @s trigger_mode_3 matches 1 run function onigoko:onigoko/settings/mode/keidoro
execute as @a at @s if score @s trigger_mode_4 matches 1 run function onigoko:onigoko/settings/mode/normal
execute as @a at @s if score @s trigger_mode_5 matches 1 run function onigoko:onigoko/settings/mode/tnttag
execute as @a[scores={trigger_mode_0=1..}] at @s run scoreboard players set @s trigger_mode_0 0
execute as @a[scores={trigger_mode_1=1..}] at @s run scoreboard players set @s trigger_mode_1 0
execute as @a[scores={trigger_mode_2=1..}] at @s run scoreboard players set @s trigger_mode_2 0
execute as @a[scores={trigger_mode_3=1..}] at @s run scoreboard players set @s trigger_mode_3 0
execute as @a[scores={trigger_mode_4=1..}] at @s run scoreboard players set @s trigger_mode_4 0
execute as @a[scores={trigger_mode_5=1..}] at @s run scoreboard players set @s trigger_mode_5 0

execute as @a at @s if score @s trigger_settings_oni matches 1 run function onigoko:onigoko/settings/oni
execute as @a at @s if score @s trigger_settings_item matches 1 run function onigoko:onigoko/settings/item
execute as @a at @s if score @s trigger_settings_other matches 1 run function onigoko:onigoko/settings/other
execute as @a at @s if score @s trigger_settings_setitem matches 1 run function onigoko:onigoko/item/set_item
execute as @a[scores={trigger_settings_oni=1..}] at @s run scoreboard players set @s trigger_settings_oni 0
execute as @a[scores={trigger_settings_item=1..}] at @s run scoreboard players set @s trigger_settings_item 0
execute as @a[scores={trigger_settings_other=1..}] at @s run scoreboard players set @s trigger_settings_other 0
execute as @a[scores={trigger_settings_setitem=1..}] at @s run scoreboard players set @s trigger_settings_setitem 0

execute as @a at @s if score @s trigger_firework_disable matches 1 run function onigoko:onigoko/settings/disable/firework
execute as @a at @s if score @s trigger_firework_enable matches 1 run function onigoko:onigoko/settings/enable/firework
execute as @a at @s if score @s trigger_poison_disable matches 1 run function onigoko:onigoko/settings/disable/poison
execute as @a at @s if score @s trigger_poison_enable matches 1 run function onigoko:onigoko/settings/enable/poison
execute as @a at @s if score @s trigger_glowing_disable matches 1 run function onigoko:onigoko/settings/disable/glowing
execute as @a at @s if score @s trigger_glowing_enable matches 1 run function onigoko:onigoko/settings/enable/glowing
execute as @a at @s if score @s trigger_random_disable matches 1 run function onigoko:onigoko/settings/disable/random
execute as @a at @s if score @s trigger_random_enable matches 1 run function onigoko:onigoko/settings/enable/random
execute as @a[scores={trigger_firework_disable=1..}] at @s run scoreboard players set @s trigger_firework_disable 0
execute as @a[scores={trigger_firework_enable=1..}] at @s run scoreboard players set @s trigger_firework_enable 0
execute as @a[scores={trigger_poison_disable=1..}] at @s run scoreboard players set @s trigger_poison_disable 0
execute as @a[scores={trigger_poison_enable=1..}] at @s run scoreboard players set @s trigger_poison_enable 0
execute as @a[scores={trigger_glowing_disable=1..}] at @s run scoreboard players set @s trigger_glowing_disable 0
execute as @a[scores={trigger_glowing_enable=1..}] at @s run scoreboard players set @s trigger_glowing_enable 0
execute as @a[scores={trigger_random_disable=1..}] at @s run scoreboard players set @s trigger_random_disable 0
execute as @a[scores={trigger_random_enable=1..}] at @s run scoreboard players set @s trigger_random_enable 0

execute as @a at @s if score @s trigger_settings_set_oni_player matches 1.. run function onigoko:system/settings/set_oni_player

execute as @a at @s if score @s trigger_settings_oni_player matches 1 run function onigoko:onigoko/settings/oni_player
execute as @a[scores={trigger_settings_oni_player=1..}] at @s run scoreboard players set @s trigger_settings_oni_player 0


execute as @a at @s if score @s trigger_settings_time matches 1 run function onigoko:system/settings/time/main with storage game:settings
execute as @a at @s if score @s trigger_settings_time_min matches 1 run function onigoko:system/settings/time/min
execute as @a at @s if score @s trigger_settings_time_sec matches 1 run function onigoko:system/settings/time/sec

execute as @a[scores={trigger_settings_time=1..}] at @s run scoreboard players set @s trigger_settings_time 0
execute as @a[scores={trigger_settings_time_min=1..}] at @s run scoreboard players set @s trigger_settings_time_min 0
execute as @a[scores={trigger_settings_time_sec=1..}] at @s run scoreboard players set @s trigger_settings_time_sec 0

execute as @a at @s if score @s trigger_settings_time_min_set matches 0.. run function onigoko:system/settings/time/min_set
execute as @a at @s if score @s trigger_settings_time_sec_set matches 0.. run function onigoko:system/settings/time/sec_set

execute as @a at @s if score @s trigger_inv_disable matches 1 run function onigoko:onigoko/settings/disable/inv
execute as @a at @s if score @s trigger_inv_enable matches 1 run function onigoko:onigoko/settings/enable/inv
execute as @a at @s if score @s trigger_speed_disable matches 1 run function onigoko:onigoko/settings/disable/speed
execute as @a at @s if score @s trigger_speed_enable matches 1 run function onigoko:onigoko/settings/enable/speed
execute as @a[scores={trigger_inv_disable=1..}] at @s run scoreboard players set @s trigger_inv_disable 0
execute as @a[scores={trigger_inv_enable=1..}] at @s run scoreboard players set @s trigger_inv_enable 0
execute as @a[scores={trigger_speed_disable=1..}] at @s run scoreboard players set @s trigger_speed_disable 0
execute as @a[scores={trigger_speed_enable=1..}] at @s run scoreboard players set @s trigger_speed_enable 0

execute as @a at @s if score @s trigger_auto_start matches 1 run function onigoko:system/settings/auto_start
execute as @a[scores={trigger_auto_start=1..}] at @s run scoreboard players set @s trigger_auto_start 0

execute as @a at @s if score @s trigger_auto_start_enable matches 1 run function onigoko:system/settings/auto_start/enable
execute as @a at @s if score @s trigger_auto_start_disable matches 1 run function onigoko:system/settings/auto_start/disable
execute as @a at @s if score @s trigger_adjust_oni_enable matches 1 run function onigoko:system/settings/adjust_oni/enable
execute as @a at @s if score @s trigger_adjust_oni_disable matches 1 run function onigoko:system/settings/adjust_oni/disable

execute as @a[scores={trigger_auto_start_enable=1..}] at @s run scoreboard players set @s trigger_auto_start_enable 0
execute as @a[scores={trigger_auto_start_disable=1..}] at @s run scoreboard players set @s trigger_auto_start_disable 0
execute as @a[scores={trigger_adjust_oni_enable=1..}] at @s run scoreboard players set @s trigger_adjust_oni_enable 0
execute as @a[scores={trigger_adjust_oni_disable=1..}] at @s run scoreboard players set @s trigger_adjust_oni_disable 0

execute as @a at @s if score @s trigger_auto_start_player matches 1 run function onigoko:system/settings/auto_start_player
execute as @a at @s if score @s trigger_auto_start_time matches 1 run function onigoko:system/settings/auto_start_time
execute as @a at @s if score @s trigger_end_time matches 1 run function onigoko:system/settings/end_time

execute as @a[scores={trigger_auto_start_player=1..}] at @s run scoreboard players set @s trigger_auto_start_player 0
execute as @a[scores={trigger_auto_start_time=1..}] at @s run scoreboard players set @s trigger_auto_start_time 0
execute as @a[scores={trigger_end_time=1..}] at @s run scoreboard players set @s trigger_end_time 0

execute as @a at @s if score @s trigger_auto_start_player_set matches 2.. run function onigoko:system/settings/set_score/auto_start_player_set
execute as @a at @s if score @s trigger_auto_start_time_set matches 2.. run function onigoko:system/settings/set_score/auto_start_time_set
execute as @a at @s if score @s trigger_end_time_set matches 0.. run function onigoko:system/settings/set_score/end_time_set

execute if score auto_start settings matches 0 if score game settings matches 0 if score end settings matches 0 run function onigoko:system/auto_start/main

execute if score end settings matches 1 run function onigoko:system/end/start
execute if score end settings matches 2 run function onigoko:system/end/main

execute if score adjust_oni settings matches 0 run function onigoko:system/adjust_oni/main

execute as @a at @s if score @s trigger_settings_death_enable matches 1 run function onigoko:system/settings/death/enable
execute as @a at @s if score @s trigger_settings_death_disable matches 1 run function onigoko:system/settings/death/disable
execute as @a[scores={trigger_settings_death_enable=1..}] at @s run scoreboard players set @s trigger_settings_death_enable 0
execute as @a[scores={trigger_settings_death_disable=1..}] at @s run scoreboard players set @s trigger_settings_death_disable 0

execute as @a at @s if score @s trigger_settings_water_enable matches 1 run function onigoko:system/settings/water/enable
execute as @a at @s if score @s trigger_settings_water_disable matches 1 run function onigoko:system/settings/water/disable

execute as @a[scores={trigger_settings_water_enable=1..}] at @s run scoreboard players set @s trigger_settings_water_enable 0
execute as @a[scores={trigger_settings_water_disable=1..}] at @s run scoreboard players set @s trigger_settings_water_disable 0

execute if score game settings matches 0 run scoreboard players set @a deathcount 0

scoreboard players remove @a[scores={death_interval=1..}] death_interval 1
execute if score mode settings matches 0 as @a[scores={death_interval=1}] positioned as @e[type=armor_stand,tag=onispawn,limit=1,sort=random] run tp @s ~ ~1 ~
execute if score mode settings matches 3 as @a[scores={death_interval=1}] positioned as @e[type=armor_stand,tag=keidorospawn] run tp @s ~ ~ ~
execute if score mode settings matches 4 as @a[scores={death_interval=1}] positioned as @e[type=armor_stand,tag=spawn,limit=1] run tp @s ~ ~ ~

execute as @a at @s if score water settings matches 0 if score death settings matches 1 if block ~ ~ ~ water run effect give @s poison 1 4 true
execute as @a at @s if score water settings matches 0 if score death settings matches 1 if block ~ ~ ~ water run effect give @s instant_health 1 0 true
execute as @a at @s if score water settings matches 0 if score death settings matches 0 if block ~ ~ ~ water run effect give @s wither 1 1 true

execute as @a at @s if score water settings matches 0 if score death settings matches 0 unless block ~ ~ ~ water run effect clear @s wither

execute positioned as @e[type=armor_stand,tag=keidoroexit] if entity @p[team=!ice,distance=..0.5] run tag @p[team=!ice,distance=..1] add exitnge
execute unless score mode settings matches 3 positioned as @e[type=armor_stand,tag=keidoroexit] if entity @p[team=ice,distance=..0.5] run tag @p[team=ice,distance=..1] add exitnge
execute positioned as @e[type=armor_stand,tag=keidoroexitnge] run tp @a[tag=exitnge] ~ ~ ~
tag @a[tag=exitnge] remove exitnge