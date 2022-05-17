tag @s add sh_phs

effect clear @e[tag=sh_atk] darkness
effect give @e[tag=sh_atk] darkness 9 0 true

execute as @a[tag=sh_eff] at @s anchored eyes run particle flash ~ ~ ~ 0.01 0.01 0.01 0.0001 3 force @s

scoreboard players set @s sh_phase_cd 0

function sculk_hive:behavior/attack/rage/2nd_ver

execute as @e[tag=sh_sdr] at @s run tag @s add sh_sdr_ready
execute as @e[tag=sh_sdr] at @s run function sculk_hive:behavior/soldier/burrow

bossbar set sculk_hive:health color pink

gamerule doWardenSpawning false

execute as @e[type=warden,distance=..32] at @s run function sculk_hive:behavior/general/kill_warden
