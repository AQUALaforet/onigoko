scoreboard players enable @s trigger_settings_other
scoreboard players enable @s trigger_auto_start
scoreboard players enable @s trigger_auto_start_enable
scoreboard players enable @s trigger_auto_start_disable
scoreboard players enable @s trigger_auto_start_time
scoreboard players enable @s trigger_auto_start_player
scoreboard players enable @s trigger_end_time

execute if score auto_start settings matches 0 run dialog show @s {"type":"minecraft:multi_action","title":"鬼ごっこ 設定","external_title":"","body":[{"type":"minecraft:plain_message","contents":"その他 - 自動開始・終了設定"}],"can_close_with_escape":true,"actions":[{"label":["自動開始: ",{"text":"有効","color":"green"}],"width":120,"action":{"type":"minecraft:run_command","command":"trigger trigger_auto_start_disable set 1"}},{"label":["最低開始人数変更"],"width":120,"action":{"type":"minecraft:run_command","command":"trigger trigger_auto_start_player set 1"}},{"label":["開始時間変更"],"width":120,"action":{"type":"minecraft:run_command","command":"trigger trigger_auto_start_time set 1"}},{"label":["歓談(終了)時間変更"],"width":120,"action":{"type":"minecraft:run_command","command":"trigger trigger_end_time set 1"}},{"label":"戻る","width":120,"action":{"type":"minecraft:run_command","command":"trigger trigger_settings_other set 1"}}]}

execute if score auto_start settings matches 1 run dialog show @s {"type":"minecraft:multi_action","title":"鬼ごっこ 設定","external_title":"","body":[{"type":"minecraft:plain_message","contents":"その他 - 自動開始・終了設定"}],"can_close_with_escape":true,"actions":[{"label":["自動開始: ",{"text":"無効","color":"red"}],"width":120,"action":{"type":"minecraft:run_command","command":"trigger trigger_auto_start_enable set 1"}},{"label":["最低開始人数変更"],"width":120,"action":{"type":"minecraft:run_command","command":"trigger trigger_auto_start_player set 1"}},{"label":["開始時間変更"],"width":120,"action":{"type":"minecraft:run_command","command":"trigger trigger_auto_start_time set 1"}},{"label":["歓談(終了)時間変更"],"width":120,"action":{"type":"minecraft:run_command","command":"trigger trigger_end_time set 1"}},{"label":"戻る","width":120,"action":{"type":"minecraft:run_command","command":"trigger trigger_settings_other set 1"}}]}
