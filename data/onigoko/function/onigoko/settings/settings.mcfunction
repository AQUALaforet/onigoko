tellraw @s [{"text":"数値を変更するには、該当の場所を選択後下線部の数値を変更します。","color":"gray"},"\n",{"text":"/scoreboard players set test test","color":"dark_gray"},{"text":" ","color":"gray"},{"text":"0","underlined":true,"color":"green"},"\n "]

tellraw @s [{"text":"鬼ごっこ v1.2.0a 旧設定\n","color":"yellow"},{"text":"------------------------------","bold":true,"color":"yellow"},"\n "]
execute if score timeadd settings matches 0 run tellraw @s [{"text":"時間追加: ","color":"yellow"},{"text":"有効 ","color":"green"},{"text":"[無効化]","color":"gold","click_event":{"action":"run_command","command":"/function onigoko:onigoko/settings/disable/timeadd"}},{"text":" ","color":"gold"},{"text":"[詳細]","color":"gold","click_event":{"action":"run_command","command":"/function onigoko:onigoko/settings/detail/timeadd"}},{"text":" "}]
execute if score timeadd settings matches 1 run tellraw @s [{"text":"時間追加: ","color":"yellow"},{"text":"無効","color":"red"},{"text":" ","color":"green"},{"text":"[有効化]","color":"gold","click_event":{"action":"run_command","command":"/function onigoko:onigoko/settings/enable/timeadd"}},{"text":" ","color":"gold"},{"text":"[詳細]","color":"gold","click_event":{"action":"run_command","command":"/function onigoko:onigoko/settings/detail/timeadd"}},{"text":" "}]
tellraw @s ["\n",{"text":"------------------------------","bold":true,"color":"yellow"}]




