function sculk_hive:behavior/health_calc/main
scoreboard players set @s sh_dynamic_hp_entry 150


scoreboard players remove @s sh_dynamic_hp_player_multiplier 1
scoreboard players set @s sh_dynamic_hp_calc 25
scoreboard players operation @s sh_dynamic_hp_calc *= @s sh_dynamic_hp_player_multiplier

scoreboard players operation @s sh_dynamic_hp_entry += @s sh_dynamic_hp_calc
execute if score @s sh_dynamic_hp_entry matches 500.. run scoreboard players set @s sh_dynamic_hp_entry 500