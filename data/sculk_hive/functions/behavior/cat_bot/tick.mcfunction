execute if score @s sh_cat_ttl matches 0.. run scoreboard players remove @s sh_cat_ttl 1

execute if score @s sh_cat_ttl matches 0 if score @s sh_cat_span matches 1.. run function sculk_hive:behavior/cat_bot/step
execute if score @s sh_cat_ttl matches 0 if score @s sh_cat_span matches ..-1 run function sculk_hive:behavior/cat_bot/step

execute if score @s sh_cat_span matches 0 run kill @s