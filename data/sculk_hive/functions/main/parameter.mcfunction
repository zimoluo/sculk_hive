data merge storage sculk_hive:data {world:{difficulty:0}}

execute store result storage sculk_hive:data world.difficulty int 1 run difficulty

execute if data storage sculk_hive:data {sculkHiveState:{present: 1b}} run bossbar set sculk_hive:health visible true
execute unless data storage sculk_hive:data {sculkHiveState:{present: 1b}} run bossbar set sculk_hive:health visible false