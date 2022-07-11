scoreboard players add @s sh_pos_score 1
execute if score @s sh_pos_score <= @s sh_forward as @e[tag=sh_temp] at @s run function sculk_hive:behavior/vestige/spawner/find_pos/forward_tp
execute if score @s sh_pos_score <= @s sh_forward run function sculk_hive:behavior/vestige/spawner/find_pos/forward