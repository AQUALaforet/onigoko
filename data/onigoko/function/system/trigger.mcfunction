execute as @a at @s if score @s trigger_start matches 1 run function onigoko:onigoko/game/start
execute as @a at @s if score @s trigger_stop matches 1 run function onigoko:onigoko/game/stop
execute as @a at @s if score @s trigger_onikime matches 1 run function onigoko:onigoko/game/onikime
execute as @a at @s if score @s trigger_tpspawn matches 1 run function onigoko:system/command/teleportspawn

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

execute as @a at @s if score @s trigger_firework_disable matches 1 run function onigoko:system/settings/firework/disable
execute as @a at @s if score @s trigger_firework_enable matches 1 run function onigoko:system/settings/firework/enable
execute as @a at @s if score @s trigger_poison_disable matches 1 run function onigoko:system/settings/poison/disable
execute as @a at @s if score @s trigger_poison_enable matches 1 run function onigoko:system/settings/poison/enable
execute as @a at @s if score @s trigger_glowing_disable matches 1 run function onigoko:system/settings/glowing/disable
execute as @a at @s if score @s trigger_glowing_enable matches 1 run function onigoko:system/settings/glowing/enable
execute as @a at @s if score @s trigger_random_disable matches 1 run function onigoko:system/settings/random/disable
execute as @a at @s if score @s trigger_random_enable matches 1 run function onigoko:system/settings/random/enable

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

execute as @a at @s if score @s trigger_inv_disable matches 1 run function onigoko:system/settings/inv/disable
execute as @a at @s if score @s trigger_inv_enable matches 1 run function onigoko:system/settings/inv/enable
execute as @a at @s if score @s trigger_speed_disable matches 1 run function onigoko:system/settings/speed/disable
execute as @a at @s if score @s trigger_speed_enable matches 1 run function onigoko:system/settings/speed/enable

execute as @a at @s if score @s trigger_auto_start matches 1 run function onigoko:system/settings/auto_start
execute as @a[scores={trigger_auto_start=1..}] at @s run scoreboard players set @s trigger_auto_start 0

execute as @a at @s if score @s trigger_auto_start_enable matches 1 run function onigoko:system/settings/auto_start/enable
execute as @a at @s if score @s trigger_auto_start_disable matches 1 run function onigoko:system/settings/auto_start/disable
execute as @a at @s if score @s trigger_adjust_oni_enable matches 1 run function onigoko:system/settings/adjust_oni/enable
execute as @a at @s if score @s trigger_adjust_oni_disable matches 1 run function onigoko:system/settings/adjust_oni/disable

execute as @a at @s if score @s trigger_auto_start_player matches 1 run function onigoko:system/settings/auto_start_player
execute as @a at @s if score @s trigger_auto_start_time matches 1 run function onigoko:system/settings/auto_start_time
execute as @a at @s if score @s trigger_end_time matches 1 run function onigoko:system/settings/end_time

execute as @a[scores={trigger_auto_start_player=1..}] at @s run scoreboard players set @s trigger_auto_start_player 0
execute as @a[scores={trigger_auto_start_time=1..}] at @s run scoreboard players set @s trigger_auto_start_time 0
execute as @a[scores={trigger_end_time=1..}] at @s run scoreboard players set @s trigger_end_time 0

execute as @a at @s if score @s trigger_auto_start_player_set matches 2.. run function onigoko:system/settings/set_score/auto_start_player_set
execute as @a at @s if score @s trigger_auto_start_time_set matches 2.. run function onigoko:system/settings/set_score/auto_start_time_set
execute as @a at @s if score @s trigger_end_time_set matches 0.. run function onigoko:system/settings/set_score/end_time_set

execute as @a at @s if score @s trigger_settings_death_enable matches 1 run function onigoko:system/settings/death/enable
execute as @a at @s if score @s trigger_settings_death_disable matches 1 run function onigoko:system/settings/death/disable

execute as @a at @s if score @s trigger_settings_water_enable matches 1 run function onigoko:system/settings/water/enable
execute as @a at @s if score @s trigger_settings_water_disable matches 1 run function onigoko:system/settings/water/disable