execute as @e[tag=sh_smn_raw] at @s run function sculk_hive:summon/convert
execute as @e[tag=sh_smn_special_raw] at @s run function sculk_hive:summon/convert_special
execute as @e[tag=sh_smn_fire_raw] at @s run function sculk_hive:summon/convert_fire

execute as @e[tag=sh_smn, tag=!sh_smn_special] at @s run function sculk_hive:summon/detect

execute unless data storage sculk_hive:data {world:{difficulty: 0}} as @e[tag=sh_smn_special, tag=!sh_smn_special_ready] at @s positioned ~-9.5 ~-1 ~-9.5 if entity @a[gamemode=!spectator, dx=18, dy=3, dz=18] at @s run function sculk_hive:summon/structure_special/init

execute as @e[tag=sh_smn_special_ready] at @s run function sculk_hive:summon/structure_special/main_tick
execute as @e[tag=sh_smn_fire_ready] at @s run function sculk_hive:summon/structure_special/fire_tick

execute as @e[tag=sh_smn_cd] at @s run function sculk_hive:summon/cd

execute as @e[tag=sh_smn_item] at @s run function sculk_hive:summon/structure_special/item