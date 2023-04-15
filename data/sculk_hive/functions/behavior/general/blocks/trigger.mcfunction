function sculk_hive:behavior/general/blocks/repair_body

playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 4 1.5

particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.00001 50 force

effect give @e[tag=sh_atk, distance=..4.5] darkness 10 0 true
effect give @e[tag=sh_atk, distance=..4.5] mining_fatigue 10 1
execute as @e[tag=sh_atk, distance=..4.5] at @s run function sculk_hive:behavior/damage/boom_1