setblock ~ ~ ~ air

particle minecraft:sculk_charge_pop ~ ~ ~ 1 1 1 0.0001 200 force
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.0001 100 force

data merge storage sculk_hive:data {sculkHiveState:{present:0b}}

effect clear @a[tag=sh_atk] darkness
effect clear @a[tag=sh_eff] darkness
playsound minecraft:entity.elder_guardian.curse hostile @a ~ ~ ~ 2 0.8
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 2 1.3

setblock ~1 ~-2 ~1 soul_sand
setblock ~-1 ~-2 ~1 soul_sand
setblock ~1 ~-2 ~-1 soul_sand
setblock ~-1 ~-2 ~-1 soul_sand

execute as @e[tag=sh_atk] at @s run function sculk_hive:behavior/general/reset_atk_scoreboard

tag @a[tag=sh_eff] remove sh_eff
tag @e[tag=sh_atk] remove sh_atk
tag @e[tag=sh_boomed] remove sh_boomed
tag @e[tag=sh_bite] remove sh_bite
tag @e[tag=sh_snk] remove sh_snk
tag @e[tag=sh_sta] remove sh_sta
tag @e[tag=sh_atk_normal] remove sh_atk_normal
tag @e[tag=sh_atk_undead] remove sh_atk_undead

execute if data storage sculk_hive:data {world:{doWardenSpawning:{before:0b}}} run gamerule doWardenSpawning false
execute if data storage sculk_hive:data {world:{doWardenSpawning:{before:1b}}} run gamerule doWardenSpawning true

summon marker ~ ~ ~ {Tags:["sh_smn"]}

kill @e[tag=sh_part]
kill @s