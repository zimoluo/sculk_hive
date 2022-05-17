execute unless score @s sh_cd matches 0..8 run scoreboard players set @s sh_cd 0

scoreboard players add @s sh_cd 1

execute if score @s sh_cd matches 8 at @s run function sculk_hive:behavior/shield/trigger