function sculk_hive:behavior/health_calc/main
scoreboard players set @s sh_dynamic_hp_entry 60


scoreboard players remove @s sh_dynamic_hp_player_multiplier 1
scoreboard players set @s sh_dynamic_hp_calc 10
scoreboard players operation @s sh_dynamic_hp_calc *= @s sh_dynamic_hp_player_multiplier

scoreboard players operation @s sh_dynamic_hp_entry += @s sh_dynamic_hp_calc
execute if score @s sh_dynamic_hp_entry matches 200.. run scoreboard players set @s sh_dynamic_hp_entry 200