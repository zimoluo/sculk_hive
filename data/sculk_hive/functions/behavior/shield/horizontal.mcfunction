execute unless score @s sh_shd_h matches 0..359 run scoreboard players set @s sh_shd_h 0

scoreboard players add @s sh_shd_h 30

execute store result entity @s Rotation[0] float 1 run scoreboard players get @s sh_shd_h

execute at @s run function sculk_hive:behavior/shield/vertical

execute if score @s sh_shd_h matches 0..359 run function sculk_hive:behavior/shield/horizontal