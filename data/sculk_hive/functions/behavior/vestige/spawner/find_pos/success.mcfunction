scoreboard players set @s sh_pos_score 0
execute if predicate sculk_hive:chance/04 run scoreboard players set @s sh_pos_score 1

execute if score @s sh_pos_score matches 0 run summon zombie ~ ~ ~ {Tags:["sh_temp_1"]}
execute if score @s sh_pos_score matches 1 run summon skeleton ~ ~ ~ {Tags:["sh_temp_1"]}

execute as @e[tag=sh_temp_1] at @s run function sculk_hive:behavior/vestige/transform
execute if predicate sculk_hive:chance/05 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ -180 ~
execute if predicate sculk_hive:chance/025 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ -90 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ 90 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~
execute if predicate sculk_hive:chance/01 as @e[tag=sh_temp_1] at @s run tp @s ~ ~ ~ ~-10 ~

tag @e[tag=sh_temp_1] remove sh_temp_1

scoreboard players add @e[tag=sh_vestige_spawn_center,limit=1,sort=nearest,distance=..120] sh_sdr_count 1
execute if data storage sculk_hive:data {world:{difficulty: 2}} as @e[tag=sh_vestige_spawn_bot, distance=..12] run function sculk_hive:behavior/vestige/spawner/find_pos/reset_cd
execute if data storage sculk_hive:data {world:{difficulty: 1}} as @e[tag=sh_vestige_spawn_bot, distance=..18] run function sculk_hive:behavior/vestige/spawner/find_pos/reset_cd
execute if data storage sculk_hive:data {world:{difficulty: 3}} as @e[tag=sh_vestige_spawn_bot, distance=..8] run function sculk_hive:behavior/vestige/spawner/find_pos/reset_cd

tag @e[tag=sh_vestige_spawn_bot,limit=1,sort=nearest] add sh_vestige_spawn_done
kill @s