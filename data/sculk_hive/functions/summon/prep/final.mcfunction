execute as @a[tag=sh_eff, distance=..64] at @s anchored eyes run particle minecraft:flash ^ ^ ^ 0.2 0.2 0.2 0.0001 10 force @s
particle minecraft:flash ~ ~ ~ 0.5 0.5 0.5 0.0001 25 force
execute if data storage sculk_hive:data {world:{globalSoundEvents: 0b}} run playsound minecraft:item.totem.use hostile @a ~ ~ ~ 4.5 2
execute if data storage sculk_hive:data {world:{globalSoundEvents: 1b}} as @a at @s anchored eyes run playsound minecraft:item.totem.use hostile @s ^ ^ ^ 1 2
execute if data storage sculk_hive:data {world:{globalSoundEvents: 0b}} run playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 4.5 1.2
execute if data storage sculk_hive:data {world:{globalSoundEvents: 1b}} as @a at @s anchored eyes run playsound minecraft:block.sculk_shrieker.shriek hostile @s ^ ^ ^ 1 1.2

particle minecraft:sculk_charge_pop ~ ~ ~ 2 2 2 0.0001 400 force
particle minecraft:sculk_soul ~ ~ ~ 2 2 2 0.0001 200 force

scoreboard players set @s sh_cd -1

fill ~ ~ ~ ~ ~ ~ sculk_shrieker[can_summon=true, shrieking=false, waterlogged=false] replace sculk_shrieker[waterlogged=false]
fill ~ ~ ~ ~ ~ ~ sculk_shrieker[can_summon=true, shrieking=false, waterlogged=true] replace sculk_shrieker[waterlogged=true]

function sculk_hive:behavior/general/shrieker_on

tag @s add sh_main
tag @s add sh_part
tag @s remove sh_smn_cd

function sculk_hive:behavior/general/tag

summon marker ~2 ~-1 ~ {Tags:["sh_part", "sh_cat", "sh_cat_top", "sh_cat_raw"]}
summon marker ~-2 ~-1 ~ {Tags:["sh_part", "sh_cat", "sh_cat_top", "sh_cat_raw"]}
summon marker ~ ~-1 ~2 {Tags:["sh_part", "sh_cat", "sh_cat_top", "sh_cat_raw"]}
summon marker ~ ~-1 ~-2 {Tags:["sh_part", "sh_cat", "sh_cat_top", "sh_cat_raw"]}

summon marker ~ ~1.2 ~ {Tags:["sh_part","sh_spr_tgt"]}

execute as @e[tag=sh_cat_raw] at @s run function sculk_hive:summon/cat_init_top

advancement grant @a[distance=..32,advancements={adventure/summon_sculk_hive=false}] only adventure/summon_sculk_hive

execute as @e[type=warden,distance=..64] at @s run function sculk_hive:behavior/general/kill_warden

scoreboard players set @s sh_bossfight 0

bossbar set sculk_hive:health style progress

function sculk_hive:behavior/general/shrieker_on