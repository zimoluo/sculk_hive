execute if block ~ ~ ~ #sculk_hive:non-full positioned ~ ~-1 ~ run function sculk_hive:behavior/soldier_bot/move/special/locate
execute unless block ~ ~ ~ #sculk_hive:non-full unless block ~ ~1 ~ #sculk_hive:non-full positioned ~ ~1 ~ run function sculk_hive:behavior/soldier_bot/move/special/locate

execute unless block ~ ~ ~ #sculk_hive:non-full if block ~ ~1 ~ #sculk_hive:non-full if block ~ ~2 ~ #sculk_hive:non-full if block ~ ~ ~ #sculk_hive:sculk_full unless block ~ ~1 ~ sculk_vein run function sculk_hive:behavior/soldier_bot/move/special/place
execute unless block ~ ~ ~ #sculk_hive:non-full if block ~ ~1 ~ #sculk_hive:non-full if block ~ ~2 ~ #sculk_hive:non-full unless block ~ ~ ~ #sculk_hive:sculk_full if block ~ ~1 ~ sculk_vein run function sculk_hive:behavior/soldier_bot/move/special/place
execute unless block ~ ~ ~ #sculk_hive:non-full if block ~ ~1 ~ #sculk_hive:non-full if block ~ ~2 ~ #sculk_hive:non-full if block ~ ~ ~ #sculk_hive:sculk_full if block ~ ~1 ~ sculk_vein run function sculk_hive:behavior/soldier_bot/move/special/place