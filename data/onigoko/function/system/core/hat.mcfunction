clear @a[tag=inv] leather_helmet
clear @a[tag=inv2] leather_helmet
clear @a[team=!oni] leather_helmet
execute if score mode settings matches 0..4 run item replace entity @a[team=oni,tag=!inv,tag=!inv2,nbt=!{Inventory:[{id:"minecraft:leather_helmet"}]}] armor.head with leather_helmet[unbreakable={},enchantments={"minecraft:binding_curse":1,"minecraft:vanishing_curse":1},dyed_color=16711680] 1
execute if score mode settings matches 5 run item replace entity @a[tag=!inv,tag=!inv2,team=oni] armor.head with tnt[enchantments={"minecraft:binding_curse":1,"minecraft:vanishing_curse":1}]