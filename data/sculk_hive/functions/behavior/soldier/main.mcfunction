execute if entity @s[tag=!sh_sdr_raw] unless entity @s[tag=sh_sdr_ready] unless entity @s[tag=sh_sdr_disp] run function sculk_hive:behavior/soldier/tick_1
execute if entity @s[tag=sh_sdr_ready] unless entity @s[tag=sh_sdr_disp] run function sculk_hive:behavior/soldier/tick_2
execute if entity @s[tag=sh_sdr_disp] run function sculk_hive:behavior/soldier/tick_3

execute if entity @s[tag=sh_sdr_ready] unless entity @s[tag=sh_sdr_disp] run function sculk_hive:behavior/soldier/horseman/detect
execute if entity @s[tag=sh_sdr_ready] unless entity @s[tag=sh_sdr_disp] as @e[tag=sh_rdr] at @s run function sculk_hive:behavior/soldier/horseman/detect

particle sculk_soul ~ ~1 ~ 0.5 0.5 0.5 0.000001 2 force
execute anchored eyes run particle soul_fire_flame ^ ^ ^ 0.3 0.3 0.3 0.000001 1 force
execute anchored eyes run particle sculk_soul ^ ^ ^ 0.3 0.3 0.3 0.000001 1 force

execute unless entity @e[tag=sh_main, distance=..64] unless entity @s[tag=sh_sdr_disp] run tag @s add sh_sdr_ready
execute unless entity @e[tag=sh_main, distance=..64] unless entity @s[tag=sh_sdr_disp] run function sculk_hive:behavior/soldier/burrow