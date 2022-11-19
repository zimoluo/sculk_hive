execute unless score @s sh_boom_cd matches 0.. run function sculk_hive:behavior/final_attack/ultra/reset_cd

execute if score @s sh_boom_cd matches 0.. run scoreboard players remove @s sh_boom_cd 1

execute if score @s sh_boom_cd matches 90 as @e[tag=sh_main, limit=1, sort=nearest] at @s run function sculk_hive:behavior/final_attack/ultra/effect
execute if score @s sh_boom_cd matches 90 run function sculk_hive:behavior/final_attack/ultra/boom

execute if score @s sh_boom_cd matches 75 as @e[tag=sh_main, limit=1, sort=nearest] at @s run function sculk_hive:behavior/final_attack/ultra/effect
execute if score @s sh_boom_cd matches 75 run function sculk_hive:behavior/final_attack/ultra/boom

execute if score @s sh_boom_cd matches 5..60 if predicate sculk_hive:chance/04 as @e[tag=sh_main, limit=1, sort=nearest] at @s run particle soul_fire_flame ~ ~1.2 ~ 0.3 0.3 0.3 0.0000001 20 force

execute if score @s sh_boom_cd matches 50 as @e[tag=sh_main, limit=1, sort=nearest] at @s run playsound minecraft:entity.warden.sonic_charge hostile @a ~ ~ ~ 4

execute if score @s sh_boom_cd matches 40 anchored eyes run summon marker ^ ^ ^ {Tags:["sh_part", "sh_laser","sh_laser_raw"]}
execute as @e[tag=sh_laser_raw] at @s run function sculk_hive:behavior/laser/init
