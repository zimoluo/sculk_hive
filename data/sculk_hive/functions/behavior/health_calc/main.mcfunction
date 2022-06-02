scoreboard players set @s sh_dynamic_hp_player_multiplier 0

execute as @a[tag=sh_atk, distance=..64] run scoreboard players add @e[tag=sh_main, limit=1, sort=nearest] sh_dynamic_hp_player_multiplier 1

execute if score @s sh_dynamic_hp_player_multiplier matches ..0 run scoreboard players set @s sh_dynamic_hp_player_multiplier 1