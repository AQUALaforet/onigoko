scoreboard players enable @s trigger_auto_start
scoreboard players enable @s trigger_auto_start_player_set
scoreboard players enable @s trigger_auto_start_player

dialog show @s {"type":"minecraft:multi_action","title":"鬼ごっこ v1.2.1a","external_title":"","body":[{"type":"minecraft:plain_message","contents":{"text":"設定 - その他 - 自動開始・終了設定 - 最低開始人数変更"}}],"inputs":[{"type":"minecraft:number_range","key":"auto_start_player","label":"人数","start":2,"end":100,"step":1,"initial":2}],"can_close_with_escape":true,"actions":[{"label":"戻る","width":120,"action":{"type":"minecraft:run_command","command":"trigger trigger_auto_start set 1"}},{"label":"完了","width":120,"action":{"type":"minecraft:dynamic/run_command","template":"trigger trigger_auto_start_player_set set $(auto_start_player)"}}]}