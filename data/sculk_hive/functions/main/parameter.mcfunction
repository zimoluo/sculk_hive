data merge storage sculk_hive:data {world:{difficulty:0}}

execute store result storage sculk_hive:data world.difficulty int 1 run difficulty

function sculk_hive:behavior/general/tag