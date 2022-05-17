execute positioned ~-2 ~-2 ~-2 run place template sculk_hive:boss/body

playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 2 1.5

particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.00001 50 force

effect give @e[tag=sh_atk, distance=..4.5] darkness 10 0 true
effect give @e[tag=sh_atk, distance=..4.5] mining_fatigue 10 1
effect give @e[tag=sh_atk, tag=sh_atk_normal, distance=..4.5] instant_damage 1 0 true
effect give @e[tag=sh_atk, tag=sh_atk_undead, distance=..4.5] instant_health 1 0 true