playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 4.5 0.3
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 4.5 0.7
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 4.5 0.9
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 4.5 1.3
playsound minecraft:entity.wither.death hostile @a ~ ~ ~ 4.5 0.7

scoreboard players set @s sh_phase_cd -1

execute as @e[tag=sh_fire_trap, distance=..64] at @s run function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/fire/fire_trap/vanish
kill @e[tag=sh_part,tag=!sh_main, tag=!sh_chit, distance=..70]
execute as @e[type=warden,distance=..64] at @s run function sculk_hive:behavior/general/kill_warden

execute as @e[tag=sh_attracted,distance=..64] at @s run function sculk_hive:behavior/secret_phase/chibaku_tensei/tractor_beam/release
effect clear @e[tag=sh_atk, distance=..64] wither
effect give @a[tag=sh_atk, distance=..64] darkness 10 0 true
effect clear @e[tag=sh_atk, distance=..64] blindness
effect clear @e[tag=sh_atk, distance=..64] slowness
effect clear @e[tag=sh_atk, distance=..64] mining_fatigue
effect clear @e[tag=sh_atk, distance=..64] weakness

particle minecraft:sculk_soul ~ ~ ~ 2 2 2 0.00001 200 force
particle minecraft:soul_fire_flame ~ ~ ~ 5 5 5 1 200 force
particle minecraft:soul_fire_flame ~ ~ ~ 1.5 1.5 1.5 0.0000001 100 force

scoreboard players set @s sh_dth_cd 0
function sculk_hive:behavior/despawn/defeat/reset_cd

tag @s add sh_dth

scoreboard players set @e[tag=sh_chit, distance=..64] sh_chit_stage 4
scoreboard players set @e[tag=sh_chit, distance=..64] sh_chit_timer 120