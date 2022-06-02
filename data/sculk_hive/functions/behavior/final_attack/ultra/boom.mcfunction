execute as @e[tag=sh_main, limit=1, sort=nearest] at @s run summon marker ~ ~0.7 ~ {Tags:["sh_part","sh_ultra_boom", "sh_ultra_boom_raw"]}

tag @s add sh_target
execute as @e[tag=sh_ultra_boom_raw] at @s run function sculk_hive:behavior/ultra_boom/init
tag @s remove sh_target
