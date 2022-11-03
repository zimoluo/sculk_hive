execute if score @s sh_phase_cd matches 0..160 run scoreboard players add @s sh_phase_cd 1
execute if score @s sh_phase_cd matches 160 run function sculk_hive:behavior/general/secret_phase/trigger