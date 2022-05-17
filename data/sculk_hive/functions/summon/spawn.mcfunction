data merge storage sculk_hive:data {sculkHiveState:{present:1b}}

tag @s remove sh_smn
tag @s add sh_smn_cd

scoreboard players set @s sh_cd 0

setblock ~ ~ ~ air
setblock ~ ~ ~ sculk_shrieker[can_summon=true, shrieking=true, waterlogged=false]

execute at @a[tag=sh_eff] run particle minecraft:flash ~ ~ ~ 0.01 0.01 0.01 0.0001 3 force
execute as @a[tag=sh_eff] at @s anchored eyes run particle minecraft:flash ~ ~ ~ 0.2 0.2 0.2 0.0001 10 force @s
particle minecraft:flash ~ ~ ~ 0.5 0.5 0.5 0.0001 25 force
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 2 0.7
effect clear @a[tag=sh_eff] minecraft:darkness
effect give @a[tag=sh_eff] minecraft:darkness 26 0 true
