function sculk_hive:behavior/health_calc/add_hp/final

scoreboard players set @s sh_dynamic_hp_calc 2
scoreboard players operation @s sh_dynamic_hp_entry *= @s sh_dynamic_hp_calc