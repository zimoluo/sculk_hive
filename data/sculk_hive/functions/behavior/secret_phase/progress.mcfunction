execute if score @s sh_phase_cd matches 0.. if score @s sh_phase_cd <= FOURTH_PHASE sh_constant run scoreboard players add @s sh_phase_cd 1
execute if score @s sh_phase_cd matches 120 run function sculk_hive:behavior/secret_phase/rise
execute if score @s sh_phase_cd matches 270 run function sculk_hive:behavior/secret_phase/trigger

execute if score @s sh_phase_cd >= FOURTH_PHASE sh_constant run function sculk_hive:behavior/secret_phase/death/init

execute if score @s sh_phase_cd matches 311.. if score @s sh_phase_cd < FOURTH_PHASE sh_constant unless entity @a[gamemode=!spectator, distance=..64] run function sculk_hive:behavior/secret_phase/despawn
execute if score @s sh_phase_cd matches 311.. if score @s sh_phase_cd < FOURTH_PHASE sh_constant run function sculk_hive:behavior/secret_phase/other_attack