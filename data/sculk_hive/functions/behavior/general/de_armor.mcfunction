summon item ~ ~0.15 ~ {Item:{id:sculk, Count:1b}, PickupDelay: 20s, Tags:["sh_temp"], Motion:[0d, 0d, 0d]}
data modify entity @e[tag=sh_temp, limit=1] Item set from entity @s ArmorItems[1]
execute if predicate sculk_hive:chance/03 run data modify entity @e[tag=sh_temp, limit=1] Motion[0] set value 0.03d
execute if predicate sculk_hive:chance/03 run data modify entity @e[tag=sh_temp, limit=1] Motion[0] set value 0.06d
execute if predicate sculk_hive:chance/03 run data modify entity @e[tag=sh_temp, limit=1] Motion[0] set value -0.03d
execute if predicate sculk_hive:chance/03 run data modify entity @e[tag=sh_temp, limit=1] Motion[0] set value -0.06d
execute if predicate sculk_hive:chance/03 run data modify entity @e[tag=sh_temp, limit=1] Motion[2] set value 0.03d
execute if predicate sculk_hive:chance/03 run data modify entity @e[tag=sh_temp, limit=1] Motion[2] set value 0.06d
execute if predicate sculk_hive:chance/03 run data modify entity @e[tag=sh_temp, limit=1] Motion[2] set value -0.03d
execute if predicate sculk_hive:chance/03 run data modify entity @e[tag=sh_temp, limit=1] Motion[2] set value -0.06d
execute if predicate sculk_hive:chance/03 run data modify entity @e[tag=sh_temp, limit=1] Motion[1] set value 0.01d
execute if predicate sculk_hive:chance/03 run data modify entity @e[tag=sh_temp, limit=1] Motion[1] set value 0.02d
execute if predicate sculk_hive:chance/03 run data modify entity @e[tag=sh_temp, limit=1] Motion[1] set value 0.05d
tag @e[tag=sh_temp] remove sh_temp

item replace entity @s armor.legs with air

playsound minecraft:entity.armor_stand.break block @a ~ ~ ~ 3
particle minecraft:explosion ~ ~1.5 ~ 0.3 0.4 0.3 0.00001 3 force
particle block oak_planks ~ ~1.5 ~ 0.3 0.45 0.3 0.0001 20 force