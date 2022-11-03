execute unless score @s sh_shd_v matches -90..80 run scoreboard players set @s sh_shd_v -90

scoreboard players add @s sh_shd_v 5

execute store result entity @s Rotation[1] float 1 run scoreboard players get @s sh_shd_v

execute at @s run function sculk_hive:behavior/secret_phase/chibaku_tensei/sphere/latitude/h

execute if score @s sh_shd_v matches -90..80 run function sculk_hive:behavior/secret_phase/chibaku_tensei/sphere/latitude/v
execute if score @s sh_shd_v matches 81.. run function sculk_hive:behavior/secret_phase/chibaku_tensei/sphere/circle/init