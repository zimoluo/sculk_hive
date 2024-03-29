execute as @e[tag=sh_smn_raw] at @s run function sculk_hive:summon/convert
execute as @e[tag=sh_smn_special_raw] at @s run function sculk_hive:summon/convert_special
execute as @e[tag=sh_smn_fire_raw] at @s run function sculk_hive:summon/convert_fire

execute if predicate sculk_hive:chance/025 as @e[tag=sh_smn, tag=!sh_smn_special] at @s align xyz positioned ~0.5 ~-0.5 ~0.5 run particle sculk_soul ~ ~ ~ 0.5 0.5 0.5 0.0001 2
execute if predicate sculk_hive:chance/025 as @e[tag=sh_smn, tag=!sh_smn_special] at @s align xyz positioned ~0.5 ~-0.5 ~0.5 run particle soul_fire_flame ~ ~ ~ 0.5 0.5 0.5 0.0001 2

execute if predicate sculk_hive:chance/05 as @e[tag=sh_smn, tag=!sh_smn_special] at @s if block ~ ~-1 ~ sculk if block ~ ~-2 ~ sculk if block ~1 ~-2 ~ sculk if block ~-1 ~-2 ~ sculk if block ~ ~-2 ~1 sculk if block ~ ~-2 ~-1 sculk if block ~1 ~-2 ~1 #soul_fire_base_blocks if block ~-1 ~-2 ~1 #soul_fire_base_blocks if block ~1 ~-2 ~-1 #soul_fire_base_blocks if block ~-1 ~-2 ~-1 #soul_fire_base_blocks if block ~2 ~-2 ~ sculk if block ~-2 ~-2 ~ sculk if block ~ ~-2 ~2 sculk if block ~ ~-2 ~-2 sculk if block ~2 ~-1 ~ sculk_catalyst if block ~-2 ~-1 ~ sculk_catalyst if block ~ ~-1 ~2 sculk_catalyst if block ~ ~-1 ~-2 sculk_catalyst align xyz positioned ~0.5 ~-0.5 ~0.5 run particle sculk_soul ~ ~ ~ 0.7 0.7 0.7 0.0001 4
execute if predicate sculk_hive:chance/05 as @e[tag=sh_smn, tag=!sh_smn_special] at @s if block ~ ~-1 ~ sculk if block ~ ~-2 ~ sculk if block ~1 ~-2 ~ sculk if block ~-1 ~-2 ~ sculk if block ~ ~-2 ~1 sculk if block ~ ~-2 ~-1 sculk if block ~1 ~-2 ~1 #soul_fire_base_blocks if block ~-1 ~-2 ~1 #soul_fire_base_blocks if block ~1 ~-2 ~-1 #soul_fire_base_blocks if block ~-1 ~-2 ~-1 #soul_fire_base_blocks if block ~2 ~-2 ~ sculk if block ~-2 ~-2 ~ sculk if block ~ ~-2 ~2 sculk if block ~ ~-2 ~-2 sculk if block ~2 ~-1 ~ sculk_catalyst if block ~-2 ~-1 ~ sculk_catalyst if block ~ ~-1 ~2 sculk_catalyst if block ~ ~-1 ~-2 sculk_catalyst align xyz positioned ~0.5 ~-0.5 ~0.5 run particle soul_fire_flame ~ ~ ~ 0.7 0.7 0.7 0.0001 4

execute as @e[tag=sh_smn, tag=!sh_smn_special, tag=!sh_smn_disabled] at @s run function sculk_hive:summon/detect
execute as @e[tag=sh_smn, tag=!sh_smn_special] at @s if block ~ ~ ~ sculk_shrieker run function sculk_hive:summon/detect_disabled
execute as @e[tag=sh_smn, tag=!sh_smn_special] if data storage sculk_hive:data {world:{difficulty: 0}} run tag @s add sh_smn_disabled
execute as @e[tag=sh_smn, tag=!sh_smn_special, tag=sh_smn_disabled] at @s unless block ~ ~ ~ sculk_shrieker run tag @s remove sh_smn_disabled

execute unless data storage sculk_hive:data {world:{difficulty: 0}} as @e[tag=sh_smn_special, tag=!sh_smn_special_ready] at @s positioned ~-10.5 ~-1 ~-10.5 if entity @a[gamemode=!spectator, dx=20, dy=5, dz=20] at @s if loaded ~60 ~ ~60 if loaded ~-60 ~ ~60 if loaded ~60 ~ ~-60 if loaded ~-60 ~ ~-60 run function sculk_hive:summon/structure_special/init

execute as @e[tag=sh_smn_special_ready] at @s run function sculk_hive:summon/structure_special/main_tick
execute as @e[tag=sh_smn_fire_ready] at @s run function sculk_hive:summon/structure_special/fire_tick

execute as @e[tag=sh_smn_cd] at @s run function sculk_hive:summon/cd

execute as @e[tag=sh_smn_item] at @s run function sculk_hive:summon/structure_special/item