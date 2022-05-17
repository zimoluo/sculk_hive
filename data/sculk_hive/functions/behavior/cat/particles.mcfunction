execute unless score @s sh_cat_span matches 0 if predicate sculk_hive:chance/01 run particle sculk_soul ~ ~0.7 ~ 0.6 0.4 0.6 0.000001 5 force
execute unless score @s sh_cat_span matches 0 if predicate sculk_hive:chance/01 run particle sculk_charge_pop ~ ~0.7 ~ 0.8 0.4 0.6 0.000001 5 force

execute if score @s sh_cat_span matches 0 if predicate sculk_hive:chance/03 run particle soul_fire_flame ~ ~0.7 ~ 0.3 0.3 0.3 0.0000001 5 force