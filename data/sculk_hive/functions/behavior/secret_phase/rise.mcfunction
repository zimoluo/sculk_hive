playsound minecraft:entity.enderman.scream hostile @a ~ ~ ~ 4.5 0.7
playsound minecraft:entity.enderman.scream hostile @a ~ ~ ~ 4.5 1.4

playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 4.5 1.5
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 4.5 0.8
playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 4.5 1.2
playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 4.5 0.8

particle minecraft:sculk_soul ~ ~ ~ 3 3 3 0.00001 100 force
particle minecraft:soul_fire_flame ~ ~ ~ 1.5 1.5 1.5 0.0000001 100 force

execute as @a[tag=sh_eff, distance=..64] at @s anchored eyes run particle flash ^ ^ ^ 0.01 0.01 0.01 0.0001 3 force @s

summon marker ~ ~1.2 ~ {Tags:["sh_part", "sh_chit", "sh_chit_raw"]}
