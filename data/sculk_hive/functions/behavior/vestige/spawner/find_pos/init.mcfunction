summon marker ~ ~ ~ {Tags:["sh_temp"]}
tp @e[tag=sh_temp] ~ ~ ~ ~ ~

scoreboard players set @s sh_pos_score 0
function sculk_hive:behavior/vestige/spawner/find_pos/forward

scoreboard players set @s sh_pos_score 0
function sculk_hive:behavior/vestige/spawner/find_pos/side

execute as @e[tag=sh_temp] at @s run tp @s ~ ~2 ~
execute as @e[tag=sh_temp] at @s if block ~ ~ ~ #sculk_hive:allow_spawn if block ~ ~1 ~ #sculk_hive:allow_spawn if block ~ ~-1 ~ #sculk_hive:vestige_floor if predicate sculk_hive:vestige/in_vestige run function sculk_hive:behavior/vestige/spawner/find_pos/success

execute as @e[tag=sh_temp] at @s run tp @s ~ ~-1 ~
execute as @e[tag=sh_temp] at @s if block ~ ~ ~ #sculk_hive:allow_spawn if block ~ ~1 ~ #sculk_hive:allow_spawn if block ~ ~-1 ~ #sculk_hive:vestige_floor if predicate sculk_hive:vestige/in_vestige run function sculk_hive:behavior/vestige/spawner/find_pos/success

execute as @e[tag=sh_temp] at @s run tp @s ~ ~-1 ~
execute as @e[tag=sh_temp] at @s if block ~ ~ ~ #sculk_hive:allow_spawn if block ~ ~1 ~ #sculk_hive:allow_spawn if block ~ ~-1 ~ #sculk_hive:vestige_floor if predicate sculk_hive:vestige/in_vestige run function sculk_hive:behavior/vestige/spawner/find_pos/success

execute as @e[tag=sh_temp] at @s run tp @s ~ ~-1 ~
execute as @e[tag=sh_temp] at @s if block ~ ~ ~ #sculk_hive:allow_spawn if block ~ ~1 ~ #sculk_hive:allow_spawn if block ~ ~-1 ~ #sculk_hive:vestige_floor if predicate sculk_hive:vestige/in_vestige run function sculk_hive:behavior/vestige/spawner/find_pos/success

execute as @e[tag=sh_temp] at @s run tp @s ~ ~-1 ~
execute as @e[tag=sh_temp] at @s if block ~ ~ ~ #sculk_hive:allow_spawn if block ~ ~1 ~ #sculk_hive:allow_spawn if block ~ ~-1 ~ #sculk_hive:vestige_floor if predicate sculk_hive:vestige/in_vestige run function sculk_hive:behavior/vestige/spawner/find_pos/success

kill @e[tag=sh_temp]