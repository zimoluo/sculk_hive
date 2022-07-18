data merge storage sculk_hive:data {world:{difficulty:0, doMobSpawning:0b, mobGriefing:0b}}

execute store result storage sculk_hive:data world.difficulty int 1 run difficulty
execute store result storage sculk_hive:data world.doMobSpawning byte 1 run gamerule doMobSpawning
execute store result storage sculk_hive:data world.mobGriefing byte 1 run gamerule mobGriefing

function sculk_hive:behavior/general/dynamic_difficulty

function sculk_hive:behavior/general/tag