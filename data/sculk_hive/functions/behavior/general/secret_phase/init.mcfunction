execute unless entity @s[tag=sh_2nd] run tag @s add sh_2nd

tag @s add sh_phs
tag @s add sh_phs_secret

effect clear @e[tag=sh_atk, distance=..64] darkness
effect give @e[tag=sh_atk, distance=..64] darkness 9 0 true

execute as @a[tag=sh_eff, distance=..64] at @s anchored eyes run particle flash ^ ^ ^ 0.01 0.01 0.01 0.0001 3 force @s

scoreboard players set @s sh_phase_cd 0

function sculk_hive:behavior/attack/rage/secret

execute as @e[tag=sh_sdr, distance=..64] at @s run tag @s add sh_sdr_ready
execute as @e[tag=sh_sdr, distance=..64] at @s run function sculk_hive:behavior/soldier/burrow

function sculk_hive:behavior/general/shrieker_off

execute as @e[type=warden,distance=..64] at @s run function sculk_hive:behavior/general/kill_warden
