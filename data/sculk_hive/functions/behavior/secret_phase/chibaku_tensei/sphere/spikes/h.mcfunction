execute unless score @s sh_shd_h matches 0..359 run scoreboard players set @s sh_shd_h 0

scoreboard players add @s sh_shd_h 30

execute store result entity @s Rotation[0] float 1 run scoreboard players get @s sh_shd_h

execute if predicate sculk_hive:chance/002 at @s rotated ~ 0 run function sculk_hive:behavior/secret_phase/chibaku_tensei/sphere/spikes/spike

execute if score @s sh_shd_h matches 0..359 run function sculk_hive:behavior/secret_phase/chibaku_tensei/sphere/spikes/h
execute if score @s sh_shd_h matches 360 if predicate sculk_hive:chance/0004 at @s run function sculk_hive:behavior/secret_phase/chibaku_tensei/sphere/spikes/rod