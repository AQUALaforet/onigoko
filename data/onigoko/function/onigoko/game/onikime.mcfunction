scoreboard players operation repeat_select_oni settings = onik settings
scoreboard players set @s trigger_onikime 0
execute if score repeat_select_oni settings matches 1.. run function onigoko:system/select_oni/main
execute unless entity @a[tag=onik] run tellraw @s {"color":"red","text":"エラー:鬼を選定できませんでした。"}