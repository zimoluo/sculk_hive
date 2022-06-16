particle minecraft:sculk_charge_pop ~ ~ ~ 2 2 2 0.0001 200 force
particle minecraft:sculk_soul ~ ~ ~ 2 2 2 0.0001 100 force

effect clear @a[tag=sh_atk, distance=..64] darkness
effect clear @a[tag=sh_eff, distance=..64] darkness

effect clear @e[tag=sh_atk, distance=..64] wither
effect clear @e[tag=sh_atk, distance=..64] darkness
effect clear @e[tag=sh_atk, distance=..64] slowness
effect clear @e[tag=sh_atk, distance=..64] mining_fatigue
effect clear @e[tag=sh_atk, distance=..64] weakness

playsound minecraft:entity.elder_guardian.curse hostile @a ~ ~ ~ 2 0.8
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 2 1.3

fill ~1 ~-2 ~1 ~1 ~-2 ~1 soul_sand replace sculk
fill ~-1 ~-2 ~1 ~-1 ~-2 ~1 soul_sand replace sculk
fill ~1 ~-2 ~-1 ~1 ~-2 ~-1 soul_sand replace sculk
fill ~-1 ~-2 ~-1 ~-1 ~-2 ~-1 soul_sand replace sculk

execute as @e[tag=sh_atk, distance=..64] at @s run function sculk_hive:behavior/general/reset_atk_scoreboard

tag @a[tag=sh_eff, distance=..64] remove sh_eff
tag @e[tag=sh_atk, distance=..64] remove sh_atk
tag @e[tag=sh_boomed, distance=..64] remove sh_boomed
tag @e[tag=sh_bite, distance=..64] remove sh_bite
tag @e[tag=sh_snk, distance=..64] remove sh_snk
tag @e[tag=sh_sta, distance=..64] remove sh_sta
tag @e[tag=sh_atk_normal, distance=..64] remove sh_atk_normal
tag @e[tag=sh_atk_undead, distance=..64] remove sh_atk_undead

function sculk_hive:behavior/general/shrieker_on

fill ~ ~ ~ ~ ~ ~ air replace sculk_shrieker[waterlogged=false]
fill ~ ~ ~ ~ ~ ~ water replace sculk_shrieker[waterlogged=true]

summon marker ~ ~ ~ {Tags:["sh_smn"]}

kill @e[tag=sh_part, distance=..70]
kill @s