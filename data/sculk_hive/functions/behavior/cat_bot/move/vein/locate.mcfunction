execute if block ~ ~ ~ #sculk_hive:non-full positioned ~ ~-1 ~ run function sculk_hive:behavior/cat_bot/move/vein/locate
execute unless block ~ ~ ~ #sculk_hive:non-full unless block ~ ~1 ~ #sculk_hive:non-full positioned ~ ~1 ~ run function sculk_hive:behavior/cat_bot/move/vein/locate

execute unless block ~ ~ ~ #sculk_hive:non-full if block ~ ~1 ~ #sculk_hive:non-full run function sculk_hive:behavior/cat_bot/move/vein/place