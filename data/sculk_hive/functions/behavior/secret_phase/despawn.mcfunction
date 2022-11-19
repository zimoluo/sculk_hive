execute as @e[tag=sh_fire_trap, distance=..64] at @s run function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/fire/fire_trap/vanish

kill @e[tag=sh_part, tag=!sh_main, distance=..70]

effect clear @e[tag=sh_atk, distance=..64] wither
effect clear @e[tag=sh_atk, distance=..64] darkness
effect clear @e[tag=sh_atk, distance=..64] blindness
effect clear @e[tag=sh_atk, distance=..64] slowness
effect clear @e[tag=sh_atk, distance=..64] mining_fatigue
effect clear @e[tag=sh_atk, distance=..64] weakness

particle minecraft:sculk_charge_pop ~ ~ ~ 2 2 2 0.0001 200 force
particle minecraft:sculk_soul ~ ~ ~ 2 2 2 0.0001 100 force

playsound minecraft:entity.elder_guardian.curse hostile @a ~ ~ ~ 4.5 0.8
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 4.5 1.3

execute as @e[tag=sh_atk, distance=..64] at @s run function sculk_hive:behavior/general/reset_atk_scoreboard

tag @a[tag=sh_eff, distance=..64] remove sh_eff
tag @e[tag=sh_atk, distance=..64] remove sh_atk
tag @e[tag=sh_boomed, distance=..64] remove sh_boomed
tag @e[tag=sh_bite, distance=..64] remove sh_bite
tag @e[tag=sh_snk, distance=..64] remove sh_snk
tag @e[tag=sh_sta, distance=..64] remove sh_sta
tag @e[tag=sh_atk_normal, distance=..64] remove sh_atk_normal
tag @e[tag=sh_atk_undead, distance=..64] remove sh_atk_undead
execute as @e[tag=sh_attracted, distance=..64] at @s run function sculk_hive:behavior/secret_phase/chibaku_tensei/tractor_beam/release

fill ~ ~ ~ ~ ~ ~ air replace sculk_shrieker[waterlogged=false]
fill ~ ~ ~ ~ ~ ~ water replace sculk_shrieker[waterlogged=true]

summon marker ~ ~ ~ {Tags:["sh_smn"]}

kill @s