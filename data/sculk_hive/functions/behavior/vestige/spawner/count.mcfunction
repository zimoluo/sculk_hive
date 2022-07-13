scoreboard players set @s sh_sdr_count 0
execute as @e[tag=sh_guard,distance=..120] run scoreboard players add @e[tag=sh_vestige_spawn_center,limit=1,sort=nearest] sh_sdr_count 1

scoreboard players set @s sh_max_spawn 0
execute as @e[tag=sh_vestige_spawn_bot,distance=..120] run scoreboard players add @e[tag=sh_vestige_spawn_center,limit=1,sort=nearest] sh_max_spawn 1
scoreboard players operation @s sh_max_spawn /= 2 sh_constant

execute if data storage sculk_hive:data {world:{difficulty: 3}} run scoreboard players operation @s sh_max_spawn *= 6 sh_constant
execute if data storage sculk_hive:data {world:{difficulty: 3}} run scoreboard players operation @s sh_max_spawn /= 5 sh_constant
execute if data storage sculk_hive:data {world:{difficulty: 1}} run scoreboard players operation @s sh_max_spawn /= 5 sh_constant
execute if data storage sculk_hive:data {world:{difficulty: 1}} run scoreboard players operation @s sh_max_spawn *= 4 sh_constant