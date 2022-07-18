execute if predicate sculk_hive:chance/05 run scoreboard players set @s sh_bot_special_type 0
execute if predicate sculk_hive:chance/02 run scoreboard players set @s sh_bot_special_type 2
execute if score @e[tag=sh_main,limit=1, sort=nearest] sh_cat_count <= CAT sh_constant if predicate sculk_hive:chance/01 run scoreboard players set @s sh_bot_special_type 1