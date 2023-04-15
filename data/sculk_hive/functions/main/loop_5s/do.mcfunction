execute as @a[advancements={adventure/find_vestiges=false}] at @s if predicate sculk_hive:vestige/in_vestige run advancement grant @s only adventure/find_vestiges


execute as @e[tag=sh_vestige_spawn_center] at @s run function sculk_hive:behavior/vestige/spawner/count
execute as @e[tag=sh_vestige_spawn_bot] at @s run function sculk_hive:behavior/vestige/spawner/main
execute as @e[tag=sh_vestige_spawn_center] at @s run function sculk_hive:behavior/vestige/spawner/count


execute unless data storage sculk_hive:data {world:{difficulty:0}} as @e[type=#sculk_hive:vestige_vulnerable, tag=!sh_part, tag=!sh_purified, tag=!sh_scheduled_delete] at @s run function sculk_hive:behavior/vestige/corruption/main

execute as @a unless score @s sh_boss_beaten matches 0.. run scoreboard players set @s sh_boss_beaten 0

execute as @e[tag=sh_vestige_spawn_center] at @s if entity @e[tag=sh_smn, tag=!sh_smn_special,distance=..3] run kill @e[tag=sh_smn_fire,distance=..256]