particle minecraft:sonic_boom ~ ~ ~ 0.0001 0.0001 0.0001 1 1 force
particle minecraft:sonic_boom ^1.5 ^ ^ 0.0001 0.0001 0.0001 1 1 force
particle minecraft:sonic_boom ^-1.5 ^ ^ 0.0001 0.0001 0.0001 1 1 force

execute if predicate sculk_hive:chance/01 run playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 4 1.5

execute positioned ~-1.5 ~-0.8 ~-1.5 if entity @e[tag=sh_atk, dx=2, dz=2, dy=0.6] run function sculk_hive:behavior/ultra_boom/explode
tp @s ^ ^ ^0.8