tag @s add sh_smn_special_ready

execute if data storage sculk_hive:data {world:{globalSoundEvents: 1b}} as @a at @s anchored eyes run playsound entity.wither.spawn hostile @s ^ ^ ^ 1 1
execute if data storage sculk_hive:data {world:{globalSoundEvents: 0b}} run playsound entity.wither.spawn hostile @a ~ ~1.5 ~ 10 1

execute positioned ~ ~1.5 ~ run particle flame ~ ~ ~ 3 1.5 3 0.000001 150 force

tag @e[tag=sh_smn_fire, distance=..256] add sh_smn_fire_ready

scoreboard players set @s sh_cd 300

fill ~-4 ~-1 ~-4 ~4 ~2 ~4 air replace vine