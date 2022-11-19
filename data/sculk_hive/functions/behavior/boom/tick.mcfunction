particle minecraft:sonic_boom ~ ~ ~ 0.0001 0.0001 0.0001 1 1 force

execute if predicate sculk_hive:chance/01 run playsound minecraft:entity.vex.ambient hostile @a ~ ~ ~ 3 1.5

execute positioned ~-0.8 ~-0.8 ~-0.8 if entity @e[tag=sh_atk, dx=0.6, dz=0.6, dy=0.6] unless entity @e[tag=sh_main, tag=sh_2nd, distance=..64] run function sculk_hive:behavior/boom/explode
execute positioned ~-0.8 ~-0.8 ~-0.8 if entity @e[tag=sh_atk, dx=0.6, dz=0.6, dy=0.6] if entity @e[tag=sh_main, tag=sh_2nd, distance=..64] run function sculk_hive:behavior/boom/explode_2nd
tp @s ^ ^ ^0.8