execute unless score @s sh_boom_cd matches 0.. run scoreboard players set @s sh_boom_cd 0

execute if score @s sh_boom_cd matches 0.. run scoreboard players add @s sh_boom_cd 1

execute if score @s sh_boom_cd >= BOOM_WARN sh_constant run particle sculk_soul ~ ~0.1 ~ 0.3 0.1 0.3 0.0001 2 force
execute if score @s sh_boom_cd = BOOM_WARN sh_constant run playsound minecraft:entity.warden.sonic_charge hostile @s ~ ~ ~ 3.5 1.5
execute if score @s sh_boom_cd = BOOM sh_constant run function sculk_hive:behavior/attack/get_boom/boom