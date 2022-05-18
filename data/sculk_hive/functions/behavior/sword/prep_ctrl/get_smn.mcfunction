kill @e[tag=sh_dpy]

execute positioned ~-2 ~ ~-2 run place template sculk_hive:boss/summon
execute if predicate sculk_hive:chance/05 positioned ~-1 ~1 ~-1 run setblock ~ ~ ~ air
execute if predicate sculk_hive:chance/05 positioned ~1 ~1 ~-1 run setblock ~ ~ ~ air
execute if predicate sculk_hive:chance/05 positioned ~-1 ~1 ~1 run setblock ~ ~ ~ air
execute if predicate sculk_hive:chance/05 positioned ~1 ~1 ~1 run setblock ~ ~ ~ air

summon marker ~ ~2 ~ {Tags:["sh_smn"]}

execute as @a[distance=..16] at @s anchored eyes run particle flash ^ ^ ^ 0.0001 0.0001 0.0001 0.0001 3 force @s
particle flash ~ ~1 ~ 0.1 0.1 0.1 0.0001 5 force

playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 2 1.5
playsound minecraft:entity.warden.emerge hostile @a ~ ~ ~ 2 1.5

particle minecraft:sculk_soul ~ ~2 ~ 0.5 0.5 0.5 0.00001 150 force

kill @e[tag=sh_prep]
kill @s