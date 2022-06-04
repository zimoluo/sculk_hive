execute as @e[tag=sh_smn, tag=sh_smn_raw] at @s run function sculk_hive:summon/convert
execute as @e[tag=sh_smn_special] at @s if block ~ ~ ~ sculk run function sculk_hive:summon/structure_tick

execute as @e[tag=sh_smn] at @s run function sculk_hive:summon/detect

execute as @e[tag=sh_smn_cd] at @s run function sculk_hive:summon/cd