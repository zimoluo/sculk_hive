execute if block ~ ~ ~ #sculk_hive:non-full positioned ~ ~-1 ~ run function sculk_hive:behavior/cat_bot/move/vein/locate
execute unless block ~ ~ ~ #sculk_hive:non-full unless block ~ ~1 ~ #sculk_hive:non-full positioned ~ ~1 ~ run function sculk_hive:behavior/cat_bot/move/vein/locate

execute unless block ~ ~ ~ #sculk_hive:non-full if block ~ ~1 ~ #sculk_hive:non-full unless block ~ ~ ~ #sculk_hive:non-full_top_surface unless block ~ ~ ~ #sculk_hive:sculk_full if entity @e[tag=sh_main,distance=..36] run function sculk_hive:behavior/cat_bot/move/vein/place