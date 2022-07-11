playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 2 0.3
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 2 0.7
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 2 0.9
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 2 1.3
playsound minecraft:entity.wither.death hostile @a ~ ~ ~ 2 0.7

kill @e[tag=sh_part,tag=!sh_main, distance=..70]

execute as @e[type=warden,distance=..64] at @s run function sculk_hive:behavior/general/kill_warden
function sculk_hive:behavior/general/shrieker_off

effect clear @e[tag=sh_atk, distance=..64] wither
effect clear @e[tag=sh_atk, distance=..64] darkness
effect clear @e[tag=sh_atk, distance=..64] slowness
effect clear @e[tag=sh_atk, distance=..64] mining_fatigue
effect clear @e[tag=sh_atk, distance=..64] weakness

particle minecraft:sculk_soul ~ ~ ~ 2 2 2 0.00001 200 force
particle minecraft:soul_fire_flame ~ ~ ~ 5 5 5 1 200 force
particle minecraft:soul_fire_flame ~ ~ ~ 1.5 1.5 1.5 0.0000001 100 force

scoreboard players set @s sh_dth_cd 0
function sculk_hive:behavior/despawn/defeat/reset_cd

tag @s add sh_dth