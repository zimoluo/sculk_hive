execute if score @s sh_chit_timer matches 1.. run scoreboard players remove @s sh_chit_timer 1

execute if predicate sculk_hive:chance/08 run particle soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0.000001 3

execute if score @s sh_chit_timer matches 0 run function sculk_hive:behavior/secret_phase/chibaku_tensei/ready_for_stage3