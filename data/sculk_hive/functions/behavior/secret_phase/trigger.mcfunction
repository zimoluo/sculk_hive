execute as @a[tag=sh_atk, distance=..64, predicate=!sculk_hive:behavior/has_night_vision] run effect give @s darkness 10 0 true

playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 4.5 0.7
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 4.5 0.9
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 4.5 1.3
playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 4.5 1.2
playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 4.5 0.8

particle minecraft:sculk_soul ~ ~ ~ 3 3 3 0.00001 100 force
particle minecraft:soul_fire_flame ~ ~ ~ 3 3 3 0.1 250 force
particle minecraft:soul_fire_flame ~ ~ ~ 1.5 1.5 1.5 0.0000001 100 force

execute as @a[tag=sh_eff, distance=..64] at @s anchored eyes run particle flash ^ ^ ^ 0.01 0.01 0.01 0.0001 3 force @s