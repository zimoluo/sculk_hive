execute if score @s sh_cat_ttl matches 0.. run scoreboard players remove @s sh_cat_ttl 1

execute if score @s sh_cat_ttl matches 0 if score @s sh_cat_span matches 1.. run function sculk_hive:behavior/cat/attack/init
execute if score @s sh_cat_ttl matches 0 if score @s sh_cat_span matches 1.. if predicate sculk_hive:chance/03 run function sculk_hive:behavior/cat/attack/init
execute if score @s sh_cat_ttl matches 0 if score @s sh_cat_span matches ..-1 run function sculk_hive:behavior/cat/attack/init
execute if score @s sh_cat_ttl matches 0 if score @s sh_cat_span matches ..-1 if predicate sculk_hive:chance/03 run function sculk_hive:behavior/cat/attack/init

execute if score @s sh_cat_ttl matches 0 if score @s sh_cat_span matches 0 run scoreboard players set @s sh_cat_ttl -1