execute unless score @s sh_sdr_cd matches 0.. run function sculk_hive:behavior/soldier_attack/reset_cd

scoreboard players remove @s sh_sdr_cd 1

execute if score @s sh_sdr_cd matches 0 if score @s sh_sdr_count matches 0.. if score @s sh_sdr_count <= SDR sh_constant run function sculk_hive:behavior/soldier_attack/start