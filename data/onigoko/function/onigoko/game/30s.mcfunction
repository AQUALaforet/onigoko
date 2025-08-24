execute as @a at @s unless score mode settings matches 5 run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
execute if score mode settings matches 0..4 run tellraw @a {"color":"yellow","text":"鬼が開放されました。"}
execute if score mode settings matches 2 if score random settings matches 1 run tellraw @a {"color":"yellow","text":"鬼が開放されました。"}
execute if score mode settings matches 0..4 run execute positioned as @e[type=armor_stand,tag=onispawn,limit=1,sort=random] run tp @a[team=oni] ~ ~ ~
scoreboard players set game settings 2
execute if score inv settings matches 0 if score mode settings matches 0..3 run scoreboard players set @a[team=nge] inv 0
execute if score inv settings matches 0 if score mode settings matches 0..3 run scoreboard players operation @a[team=nge] inv2 = ninv2 settings
execute if score inv settings matches 0 if score mode settings matches 0..3 run scoreboard players operation @a[team=nge] inv3 = ninv3 settings
execute if score inv settings matches 0 if score mode settings matches 0..3 run scoreboard players set @a[team=oni] inv 0
execute if score inv settings matches 0 if score mode settings matches 0..3 run scoreboard players operation @a[team=oni] inv2 = oinv2 settings
execute if score inv settings matches 0 if score mode settings matches 0..3 run scoreboard players operation @a[team=oni] inv3 = oinv3 settings
execute if score speed settings matches 0 if score mode settings matches 0..3 run scoreboard players set @a[team=nge] speed 0
execute if score speed settings matches 0 if score mode settings matches 0..3 run scoreboard players operation @a[team=nge] speed2 = nsp2 settings
execute if score speed settings matches 0 if score mode settings matches 0..3 run scoreboard players operation @a[team=nge] speed3 = nsp3 settings
execute if score speed settings matches 0 if score mode settings matches 0..3 run scoreboard players set @a[team=oni] speed 0
execute if score speed settings matches 0 if score mode settings matches 0..3 run scoreboard players operation @a[team=oni] speed2 = osp2 settings
execute if score speed settings matches 0 if score mode settings matches 0..3 run scoreboard players operation @a[team=oni] speed3 = osp3 settings
execute if score inv settings matches 0 if score mode settings matches 4 run scoreboard players set @a[team=nge] inv 0
execute if score inv settings matches 0 if score mode settings matches 4 run scoreboard players operation @a[team=nge] inv2 = kinv2 settings
execute if score inv settings matches 0 if score mode settings matches 4 run scoreboard players operation @a[team=nge] inv3 = kinv3 settings
execute if score inv settings matches 0 if score mode settings matches 4 run scoreboard players set @a[team=oni] inv 0
execute if score inv settings matches 0 if score mode settings matches 4 run scoreboard players operation @a[team=oni] inv2 = kinv2 settings
execute if score inv settings matches 0 if score mode settings matches 4 run scoreboard players operation @a[team=oni] inv3 = kinv3 settings
execute if score speed settings matches 0 if score mode settings matches 4 run scoreboard players set @a[team=nge] speed 0
execute if score speed settings matches 0 if score mode settings matches 4 run scoreboard players operation @a[team=nge] speed2 = ksp2 settings
execute if score speed settings matches 0 if score mode settings matches 4 run scoreboard players operation @a[team=nge] speed3 = ksp3 settings
execute if score speed settings matches 0 if score mode settings matches 4 run scoreboard players set @a[team=oni] speed 0
execute if score speed settings matches 0 if score mode settings matches 4 run scoreboard players operation @a[team=oni] speed2 = ksp2 settings
execute if score speed settings matches 0 if score mode settings matches 4 run scoreboard players operation @a[team=oni] speed3 = ksp3 settings
execute if score mode settings matches 4 if score random settings matches 0 if score onik settings matches 2 run team join oni @r[limit=2,team=nge]
execute if score mode settings matches 4 if score random settings matches 0 if score onik settings matches 3 run team join oni @r[limit=3,team=nge]
execute if score mode settings matches 4 if score random settings matches 0 if score onik settings matches 4 run team join oni @r[limit=4,team=nge]
execute if score mode settings matches 4 if score random settings matches 0 if score onik settings matches 5 run team join oni @r[limit=5,team=nge]
execute if score mode settings matches 4 if score random settings matches 0 if score onik settings matches 6 run team join oni @r[limit=6,team=nge]
execute if score mode settings matches 4 if score random settings matches 0 if score onik settings matches 7 run team join oni @r[limit=7,team=nge]
execute if score mode settings matches 4 if score random settings matches 0 if score onik settings matches 8 run team join oni @r[limit=8,team=nge]
execute if score mode settings matches 4 if score random settings matches 0 if score onik settings matches 9 run team join oni @r[limit=9,team=nge]
execute if score mode settings matches 4 if score random settings matches 0 if score onik settings matches 10 run team join oni @r[limit=10,team=nge]
execute if score mode settings matches 4 if score random settings matches 0 run tellraw @a ["",{"color":"yellow","text":"今回の鬼は"},{"color":"red","selector":"@a[team=oni]"},{"color":"yellow","text":"さんです。"}]
#execute if score mode settings matches 5 run tellraw @a ["",{"color":"yellow","text":"今回爆弾を所持しているのは"},{"color":"red","selector":"@a[team=oni]"},{"color":"yellow","text":"さんです。"}]