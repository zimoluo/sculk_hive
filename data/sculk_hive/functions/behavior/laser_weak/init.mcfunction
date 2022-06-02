tag @s remove sh_laser_weak_raw
scoreboard players set @s sh_boom_cd 35
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_boom_cd 3
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_boom_cd 3
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_boom_cd 3

tp @s ~ ~ ~ facing entity @e[tag=sh_spr_tgt,limit=1,sort=nearest] feet