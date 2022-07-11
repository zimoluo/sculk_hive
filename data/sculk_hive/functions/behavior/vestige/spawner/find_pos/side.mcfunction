scoreboard players add @s sh_pos_score 1
execute if score @s sh_pos_score <= @s sh_side as @e[tag=sh_temp] at @s run function sculk_hive:behavior/vestige/spawner/find_pos/side_tp
execute if score @s sh_pos_score <= @s sh_side run function sculk_hive:behavior/vestige/spawner/find_pos/side