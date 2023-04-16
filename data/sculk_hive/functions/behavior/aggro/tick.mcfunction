execute unless score @s sh_aggro_cd matches 0..160 run scoreboard players set @s sh_aggro_cd 0
scoreboard players add @s sh_aggro_cd 1
execute if score @s sh_aggro_cd matches 160.. run function sculk_hive:behavior/aggro/do