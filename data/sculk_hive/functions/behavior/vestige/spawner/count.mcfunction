scoreboard players set @s sh_sdr_count 0
execute as @e[tag=sh_guard,distance=..120] run scoreboard players add @e[tag=sh_vestige_spawn_center,limit=1,sort=nearest] sh_sdr_count 1