execute if predicate sculk_hive:chance/06 run scoreboard players set @s sh_bot_special_type 0
execute if predicate sculk_hive:chance/06 run scoreboard players set @s sh_bot_special_type 1
execute if data storage sculk_hive:data {world:{difficulty:2}} if predicate sculk_hive:chance/05 run scoreboard players set @s sh_bot_special_type 2
execute if data storage sculk_hive:data {world:{difficulty:3}} if predicate sculk_hive:chance/07 run scoreboard players set @s sh_bot_special_type 2
execute if data storage sculk_hive:data {world:{difficulty:1}} if predicate sculk_hive:chance/025 run scoreboard players set @s sh_bot_special_type 2