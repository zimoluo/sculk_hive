execute unless entity @e[tag=sh_cat_hp,distance=..0.16] if entity @s[tag=sh_cat_top] run function sculk_hive:behavior/cat/death/activate
execute unless entity @e[tag=sh_cat_hp,distance=..0.16] unless entity @s[tag=sh_cat_top] run function sculk_hive:behavior/cat/death/knockout