scoreboard players enable @s trigger_auto_start
scoreboard players enable @s trigger_end_time_set
scoreboard players set @s trigger_end_time_set -1
scoreboard players enable @s trigger_end_time

dialog show @s {"type":"minecraft:multi_action","title":"鬼ごっこ v2025.09.13","external_title":"","body":[{"type":"minecraft:plain_message","contents":{"text":"設定 - その他 - 自動開始・終了設定 - 歓談(終了)時間変更"}}],"inputs":[{"type":"minecraft:number_range","key":"end_time","width":240,"label":"秒数","start":0,"end":300,"step":5,"initial":60}],"can_close_with_escape":true,"actions":[{"label":"戻る","width":120,"action":{"type":"minecraft:run_command","command":"trigger trigger_auto_start set 1"}},{"label":"完了","width":120,"action":{"type":"minecraft:dynamic/run_command","template":"trigger trigger_end_time_set set $(end_time)"}}]}
