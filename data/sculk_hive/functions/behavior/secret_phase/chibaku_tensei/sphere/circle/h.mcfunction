execute unless score @s sh_shd_h matches 0..359 run scoreboard players set @s sh_shd_h 0

scoreboard players add @s sh_shd_h 5

execute store result entity @s Rotation[0] float 1 run scoreboard players get @s sh_shd_h

execute at @s positioned ~ ~0.1 ~ run particle soul_fire_flame ^ ^ ^8 0.001 0.001 0.001 0.000001 1 force

execute if score @s sh_shd_h matches 0..359 run function sculk_hive:behavior/secret_phase/chibaku_tensei/sphere/circle/h
execute if score @s sh_shd_h matches 360.. run function sculk_hive:behavior/secret_phase/chibaku_tensei/sphere/spikes/init