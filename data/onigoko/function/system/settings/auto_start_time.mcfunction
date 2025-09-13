scoreboard players enable @s trigger_auto_start
scoreboard players enable @s trigger_auto_start_time_set
scoreboard players enable @s trigger_auto_start_time

dialog show @s {"type":"minecraft:multi_action","title":"鬼ごっこ v2025.09.13","external_title":"","body":[{"type":"minecraft:plain_message","contents":{"text":"設定 - その他 - 自動開始・終了設定 - 開始時間変更"}}],"inputs":[{"type":"minecraft:number_range","key":"auto_start_time","width":240,"label":"秒数","start":1,"end":300,"step":5,"initial":30}],"can_close_with_escape":true,"actions":[{"label":"戻る","width":120,"action":{"type":"minecraft:run_command","command":"trigger trigger_auto_start set 1"}},{"label":"完了","width":120,"action":{"type":"minecraft:dynamic/run_command","template":"trigger trigger_auto_start_time_set set $(auto_start_time)"}}]}