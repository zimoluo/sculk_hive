execute unless score @s sh_shd_v matches -89..10 run scoreboard players set @s sh_shd_v 10

scoreboard players remove @s sh_shd_v 8

execute store result entity @s Rotation[1] float 1 run scoreboard players get @s sh_shd_v

execute at @s positioned ~ ~0.1 ~ run particle soul_fire_flame ^ ^ ^3.5 0.001 0.001 0.001 0.000001 1 force

execute if score @s sh_shd_v matches -89..10 run function sculk_hive:behavior/shield/vertical