execute as @e[tag=sh_smn_raw] at @s run function sculk_hive:summon/convert
execute as @e[tag=sh_smn_special_raw] at @s run function sculk_hive:summon/convert_special
execute as @e[tag=sh_smn_fire_raw] at @s run function sculk_hive:summon/convert_fire

execute as @e[tag=sh_smn, tag=!sh_smn_special, tag=!sh_smn_disabled] at @s run function sculk_hive:summon/detect
execute as @e[tag=sh_smn, tag=!sh_smn_special] at @s if block ~ ~ ~ sculk_shrieker run function sculk_hive:summon/detect_disabled
execute as @e[tag=sh_smn, tag=!sh_smn_special] if data storage sculk_hive:data {world:{difficulty: 0}} run tag @s add sh_smn_disabled
execute as @e[tag=sh_smn, tag=!sh_smn_special, tag=sh_smn_disabled] at @s unless block ~ ~ ~ sculk_shrieker run tag @s remove sh_smn_disabled

execute unless data storage sculk_hive:data {world:{difficulty: 0}} as @e[tag=sh_smn_special, tag=!sh_smn_special_ready] at @s positioned ~-10.5 ~-1 ~-10.5 if entity @a[gamemode=!spectator, dx=20, dy=5, dz=20] at @s unless block ~30 ~ ~30 void_air unless block ~-30 ~ ~30 void_air unless block ~30 ~ ~-30 void_air unless block ~-30 ~ ~-30 void_air run function sculk_hive:summon/structure_special/init

execute as @e[tag=sh_smn_special_ready] at @s run function sculk_hive:summon/structure_special/main_tick
execute as @e[tag=sh_smn_fire_ready] at @s run function sculk_hive:summon/structure_special/fire_tick

execute as @e[tag=sh_smn_cd] at @s run function sculk_hive:summon/cd

execute as @e[tag=sh_smn_item] at @s run function sculk_hive:summon/structure_special/item

execute as @e[tag=sh_vestige_spawn_center] at @s if entity @e[tag=sh_smn, tag=!sh_smn_special,distance=..3] run kill @e[tag=sh_smn_fire,distance=..256]