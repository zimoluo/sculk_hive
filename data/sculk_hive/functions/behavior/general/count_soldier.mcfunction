scoreboard players set @s sh_sdr_count 0

execute as @e[tag=sh_sdr, distance=..64] run scoreboard players add @e[tag=sh_main, limit=1, sort=nearest] sh_sdr_count 1