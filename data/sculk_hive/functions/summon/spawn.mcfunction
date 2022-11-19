tag @s remove sh_smn
tag @s add sh_smn_cd

bossbar set sculk_hive:health value 0
bossbar set sculk_hive:health max 100

scoreboard players set @s sh_cd 0

function sculk_hive:behavior/general/shrieker_off

fill ~ ~ ~ ~ ~ ~ sculk_shrieker[can_summon=false, shrieking=true, waterlogged=false] replace sculk_shrieker[waterlogged=false]
fill ~ ~ ~ ~ ~ ~ sculk_shrieker[can_summon=false, shrieking=true, waterlogged=true] replace sculk_shrieker[waterlogged=true]

execute as @e[tag=sh_smn_item,distance=..5] at @s run function sculk_hive:summon/structure_special/item_disappear

execute as @a[tag=sh_eff, distance=..64] at @s anchored eyes run particle minecraft:flash ^ ^ ^ 0.2 0.2 0.2 0.0001 10 force @s
particle minecraft:flash ~ ~ ~ 0.5 0.5 0.5 0.0001 25 force
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 4.5 0.7
effect clear @a[tag=sh_eff, distance=..64] minecraft:darkness
effect give @a[tag=sh_eff, distance=..64] minecraft:darkness 19 0 true
