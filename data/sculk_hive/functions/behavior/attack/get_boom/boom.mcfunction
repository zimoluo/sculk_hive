tag @s remove sh_boomed
scoreboard players set @s sh_boom_cd 0

execute as @e[tag=sh_main, limit=1, sort=nearest] at @s run summon marker ~ ~0.7 ~ {Tags:["sh_part","sh_boom", "sh_boom_raw"]}
execute as @e[tag=sh_main, limit=1, sort=nearest] at @s positioned ~ ~1.2 ~ run particle soul_fire_flame ~ ~ ~ 0.3 0.3 0.3 0.1 80 force

execute as @e[tag=sh_main, limit=1, sort=nearest] at @s run playsound minecraft:entity.warden.sonic_boom hostile @a ~ ~ ~ 3.5 1.5

tag @s add sh_target
execute as @e[tag=sh_boom_raw] at @s run function sculk_hive:behavior/boom/init
tag @s remove sh_target
