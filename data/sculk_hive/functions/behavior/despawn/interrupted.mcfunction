setblock ~ ~ ~ air
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 air replace soul_fire

particle minecraft:sculk_charge_pop ~ ~ ~ 1 1 1 0.0001 200 force
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.0001 100 force

data merge storage sculk_hive:data {sculkHiveState:{present:0b}}

effect clear @a[tag=sh_atk] darkness
effect clear @a[tag=sh_eff] darkness
effect clear @a[distance=..32] darkness
playsound minecraft:entity.elder_guardian.curse hostile @a ~ ~ ~ 2 0.8
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 2 1.3

setblock ~1 ~-2 ~1 soul_sand
setblock ~-1 ~-2 ~1 soul_sand
setblock ~1 ~-2 ~-1 soul_sand
setblock ~-1 ~-2 ~-1 soul_sand

tag @a[tag=sh_eff] remove sh_eff
tag @e[tag=sh_atk] remove sh_atk
tag @e[tag=sh_atk_normal] remove sh_atk_normal
tag @e[tag=sh_atk_undead] remove sh_atk_undead

tag @s add sh_smn
tag @s remove sh_smn_cd
scoreboard players set @s sh_cd -1
scoreboard players reset @s sh_last_max_hp