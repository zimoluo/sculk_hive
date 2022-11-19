tag @s add sh_fourth

effect clear @e[tag=sh_atk, distance=..64] darkness

effect clear @e[tag=sh_atk, distance=..64] wither
effect clear @e[tag=sh_atk, distance=..64] darkness
effect clear @e[tag=sh_atk, distance=..64] slowness
effect clear @e[tag=sh_atk, distance=..64] mining_fatigue
effect clear @e[tag=sh_atk, distance=..64] weakness

effect give @a[tag=sh_atk, distance=..64] instant_health 1 1 true

playsound minecraft:entity.wither.death hostile @a ~ ~ ~ 4.5 0.7
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 4.5 0.9
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 4.5 1.3

particle minecraft:soul_fire_flame ~ ~ ~ 3 3 3 0.1 400 force

scoreboard players set @s sh_phase_cd 0

execute as @e[tag=sh_sdr, distance=..64] at @s run tag @s add sh_sdr_ready
execute as @e[tag=sh_sdr, distance=..64] at @s run function sculk_hive:behavior/soldier/burrow

function sculk_hive:behavior/general/shrieker_off

execute as @e[type=warden,distance=..64] at @s run function sculk_hive:behavior/general/kill_warden

kill @e[tag=sh_part,tag=!sh_main, tag=!sh_spr_tgt, tag=!sh_sdr, tag=!sh_rdr, distance=..70]
