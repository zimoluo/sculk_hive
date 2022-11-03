execute if predicate sculk_hive:chance/09 run scoreboard players set @s sh_bot_special_type 1
execute if data storage sculk_hive:data {world:{difficulty:2}} if predicate sculk_hive:chance/075 run scoreboard players set @s sh_bot_special_type 2
execute if data storage sculk_hive:data {world:{difficulty:3}} if predicate sculk_hive:chance/09 run scoreboard players set @s sh_bot_special_type 2
execute if data storage sculk_hive:data {world:{difficulty:1}} if predicate sculk_hive:chance/067 run scoreboard players set @s sh_bot_special_type 2