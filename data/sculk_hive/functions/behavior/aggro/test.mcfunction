scoreboard players set @s sh_cat_ttl 0

execute store success score @s sh_cat_ttl on target if entity @s

execute unless score @s sh_cat_ttl matches 1.. run function sculk_hive:behavior/aggro/set_aggro