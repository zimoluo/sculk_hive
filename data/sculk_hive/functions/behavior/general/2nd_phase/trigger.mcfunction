tag @s add sh_2nd

scoreboard players set @s sh_last_max_hp 0

execute as @a[tag=sh_eff] at @s anchored eyes run particle flash ~ ~ ~ 0.01 0.01 0.01 0.0001 3 force @s

execute as @e[tag=sh_sey_hp] run data merge entity @s {Invulnerable:0b}

particle minecraft:sculk_soul ~ ~ ~ 2 2 2 0.00001 100 force
particle minecraft:soul_fire_flame ~ ~ ~ 2 2 2 0.00001 100 force
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 2 1.5
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 2 0.8
playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 2 1.2
playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 2 0.8

execute as @e[tag=sh_kck] run tag @s add sh_sey
execute as @e[tag=sh_sey] at @s run function sculk_hive:behavior/sentry/transform

effect clear @e[tag=sh_sey_hp] resistance

tag @s remove sh_phs

gamerule doWardenSpawning true