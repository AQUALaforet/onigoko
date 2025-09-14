title @a times 0 25 0
team leave @a
scoreboard players set @s trigger_start 0
#ランダム鬼指定
execute if score random settings matches 0 if score mode settings matches 0..3 run scoreboard players operation oni_random settings = onik settings
execute if score random settings matches 0 if score mode settings matches 0..3 run function onigoko:system/select_oni/random
#execute if score mode settings matches 0..3 if score random settings matches 0 unless score count settings matches ..1 run tellraw @a ["",{"color":"yellow","text":"今回の鬼は"},{"color":"red","selector":"@a[team=oni]"},{"color":"yellow","text":"さんです。"}]
#鬼以外または全員を逃指定
execute if score mode settings matches 0..3 run team join nge @a[team=!oni,gamemode=!spectator]
execute if score mode settings matches 4 if score random settings matches 0 run team join nge @a[gamemode=!spectator]
execute if score mode settings matches 5 run team join nge @a[gamemode=!spectator]
execute if score mode settings matches 4 if score random settings matches 1 run team join nge @a[team=!oni,gamemode=!spectator]
#カウントダウン開始
execute if score mode settings matches 0..3 if entity @a[team=nge] unless score oni settings matches ..0 unless score count settings matches ..1 if score random settings matches 1 run function onigoko:onigoko/countdown/count
execute if entity @a[team=nge] if score random settings matches 0 unless score count settings matches ..1 run function onigoko:onigoko/countdown/count
execute if score mode settings matches 4 if entity @a[team=nge] unless score oni settings matches ..0 if score random settings matches 1 unless score count settings matches ..1 run function onigoko:onigoko/countdown/count
#ゲームモード変更
execute if entity @a[team=nge] unless score oni settings matches ..0 run gamemode adventure @a
#ゲーム開始メッセージ
execute if entity @a[team=nge] unless score oni settings matches ..0 if score random settings matches 1 unless score count settings matches ..1 run tellraw @a {"color":"yellow","text":"ゲームを開始します..."}
execute if entity @a[team=nge] if score random settings matches 0 unless score count settings matches ..1 run tellraw @a {"color":"yellow","text":"ゲームを開始します..."}
#エラーメッセージ
execute if score mode settings matches 0..3 if score random settings matches 1 if score oni settings matches ..0 run tellraw @s {"color":"red","text":"エラー:鬼が設定されていません。"}
execute if score mode settings matches 4 if score random settings matches 1 if score oni settings matches ..0 run tellraw @s {"color":"red","text":"エラー:鬼が設定されていません。"}
execute unless entity @a[team=nge] unless score count settings matches ..1 run tellraw @s ["",{"color":"red","text":"エラー:逃走者がいません。"}]
execute unless entity @a[team=nge] run team leave @a
execute if score count settings matches ..1 run tellraw @s {"color":"red","text":"エラー:人数が必要人数を満たしていません。"}