fill ~ ~ ~ ~ ~ ~ air replace sculk_shrieker[waterlogged=false]
fill ~ ~ ~ ~ ~ ~ water replace sculk_shrieker[waterlogged=true]
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 air replace soul_fire

particle minecraft:sculk_charge_pop ~ ~ ~ 2 2 2 0.0001 200 force
particle minecraft:sculk_soul ~ ~ ~ 2 2 2 0.0001 100 force

effect clear @a[tag=sh_atk, distance=..64] darkness
effect clear @a[tag=sh_eff, distance=..64] darkness
effect clear @a[distance=..32] darkness
playsound minecraft:entity.elder_guardian.curse hostile @a ~ ~ ~ 4.5 0.8
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 4.5 1.3

fill ~1 ~-2 ~1 ~1 ~-2 ~1 soul_sand replace sculk
fill ~-1 ~-2 ~1 ~-1 ~-2 ~1 soul_sand replace sculk
fill ~1 ~-2 ~-1 ~1 ~-2 ~-1 soul_sand replace sculk
fill ~-1 ~-2 ~-1 ~-1 ~-2 ~-1 soul_sand replace sculk

function sculk_hive:behavior/general/shrieker_on

tag @a[tag=sh_eff, distance=..64] remove sh_eff
tag @e[tag=sh_atk, distance=..64] remove sh_atk
tag @e[tag=sh_atk_normal, distance=..64] remove sh_atk_normal
tag @e[tag=sh_atk_undead, distance=..64] remove sh_atk_undead

tag @s add sh_smn
tag @s remove sh_smn_cd
scoreboard players set @s sh_cd -1
scoreboard players reset @s sh_highest_max_hp

tag @s add sh_smn_interrupted

kill @e[tag=sh_part, tag=!sh_main, tag=!sh_smn, distance=..70]