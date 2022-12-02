scoreboard players set @s sh_cd 0
execute if predicate sculk_hive:chance/00005 run scoreboard players set @s sh_cd 1

execute if score @s sh_cd matches 0 run summon guardian ~ ~ ~ {Tags:["sh_temp_3"], DeathLootTable: "minecraft:entities/dolphin"}
execute if score @s sh_cd matches 1 run summon elder_guardian ~ ~ ~ {Tags:["sh_temp_3"]}