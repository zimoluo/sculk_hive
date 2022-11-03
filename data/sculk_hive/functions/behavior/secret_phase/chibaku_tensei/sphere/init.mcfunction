particle soul_fire_flame ~ ~ ~ 1.4 1.4 1.4 0.000001 15
particle sculk_soul ~ ~ ~ 1.4 1.4 1.4 0.000001 8


execute unless score @s sh_shd_count matches 0..8 run scoreboard players set @s sh_shd_count 0

scoreboard players add @s sh_shd_count 1

execute if score @s sh_shd_count matches 8 at @s run function sculk_hive:behavior/secret_phase/chibaku_tensei/sphere/trigger

function sculk_hive:behavior/secret_phase/chibaku_tensei/sphere/break_block