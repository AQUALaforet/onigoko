#減算

execute if score game settings matches 2 run function onigoko:system/ingame
execute if score game settings matches 1 run function onigoko:system/prepare_ingame

#ゲーム設定
function onigoko:system/core/set_items
execute as @a at @s run attribute @s attack_speed base set 100

#エフェクト
effect give @a[scores={food=..19}] saturation 1 1 true
effect give @a[team=!oni,team=!nge,gamemode=!creative,gamemode=!spectator] weakness 1 10 true

#ゲーム設定検知
execute store result score onikime settings if entity @e[type=armor_stand,tag=onikime]
execute store result score onispawn settings if entity @e[type=armor_stand,tag=onispawn]
execute store result score lobbyspawn settings if entity @e[type=armor_stand,tag=lobbyspawn]
execute store result score spawn settings if entity @e[type=armor_stand,tag=spawn]
execute store result score oni settings if entity @a[team=oni]
execute store result score nge settings if entity @a[team=nge]
execute store result score count settings if entity @a[gamemode=!spectator]
execute store result score ice settings if entity @a[team=ice]


#帽子
function onigoko:system/core/hat


execute if score game settings matches 0..1 run effect give @a[team=oni] weakness 1 100 true
#チェーン

execute unless score mode settings matches 1 as @a at @s run attribute @s knockback_resistance base set 0

#鬼決め
execute as @a at @s if entity @e[type=armor_stand,tag=onikime,dy=2] run tag @s add onik
execute as @a at @s unless entity @e[type=armor_stand,tag=onikime,dy=2] run tag @s remove onik

#タイトルバー
function onigoko:onigoko/main/titlebar

#透明化減算・停止
function onigoko:system/core/items/invisible

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

#透明化処理
execute if score inv settings matches 0 run function onigoko:onigoko/main/invisible

#俊敏処理
function onigoko:system/core/items/speed
function onigoko:system/core/storage_score

execute if score game settings matches 0 run function onigoko:onigoko/game/sidebar/prepare with storage game:settings

execute as @a[scores={delay=0}] at @s run scoreboard players add @s delay 1
execute as @a[scores={delay=1..}] at @s run function onigoko:system/advancement/oni_hurt_nge_2
execute as @a[scores={delay=1..}] at @s run scoreboard players set @s delay 0

execute if score game settings matches 0 run tag @a[tag=tnt2] remove tnt2

function onigoko:system/trigger

execute if score auto_start settings matches 0 if score game settings matches 0 if score end settings matches 0 run function onigoko:system/auto_start/main

execute if score end settings matches 1 run function onigoko:system/end/start
execute if score end settings matches 2 run function onigoko:system/end/main

execute if score adjust_oni settings matches 0 run function onigoko:system/adjust_oni/main

execute if score game settings matches 0 run scoreboard players set @a deathcount 0

scoreboard players remove @a[scores={death_interval=1..}] death_interval 1
execute if score mode settings matches 0 as @a[scores={death_interval=1}] positioned as @e[type=armor_stand,tag=onispawn,limit=1,sort=random] run tp @s ~ ~1 ~
execute if score mode settings matches 3 as @a[scores={death_interval=1}] positioned as @e[type=armor_stand,tag=keidorospawn] run tp @s ~ ~ ~
execute if score mode settings matches 4 as @a[scores={death_interval=1}] positioned as @e[type=armor_stand,tag=spawn,limit=1] run tp @s ~ ~ ~

execute as @a at @s if score water settings matches 0 if score death settings matches 1 if block ~ ~ ~ water run effect give @s[team=!oni] poison 1 4 true
execute as @a at @s if score water settings matches 0 if score death settings matches 1 if block ~ ~ ~ water run effect give @s[team=!oni] instant_health 1 0 true
execute as @a at @s if score water settings matches 0 if score death settings matches 0 if block ~ ~ ~ water run effect give @s[team=!oni] wither 1 1 true

execute as @a at @s if score water settings matches 0 if score death settings matches 0 unless block ~ ~ ~ water run effect clear @s wither

function onigoko:system/core/keidoro_exit