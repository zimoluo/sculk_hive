execute unless score @s sh_boom_cd matches 0.. run function sculk_hive:behavior/laser_weak_attack/reset_cd

execute if score @s sh_boom_cd matches 0.. run scoreboard players remove @s sh_boom_cd 1

execute if score @s sh_boom_cd matches 8..65 if predicate sculk_hive:chance/04 as @e[tag=sh_main, limit=1, sort=nearest] at @s run particle soul_fire_flame ~ ~1.2 ~ 0.25 0.25 0.25 0.0000001 15 force

execute if score @s sh_boom_cd matches 55 as @e[tag=sh_main, limit=1, sort=nearest] at @s run playsound minecraft:entity.warden.sonic_charge hostile @a ~ ~ ~ 4

execute if score @s sh_boom_cd matches 45 anchored eyes run summon marker ^ ^ ^ {Tags:["sh_part", "sh_laser_weak","sh_laser_weak_raw"]}
execute as @e[tag=sh_laser_weak_raw] at @s run function sculk_hive:behavior/laser_weak/init