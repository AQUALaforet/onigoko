scoreboard players set @s trigger_tpspawn 0
execute positioned as @e[type=armor_stand,tag=lobbyspawn] run tp @a ~ ~ ~
tellraw @s {"color":"yellow","text":"プレイヤーをスポーン場所にTPさせました。"}