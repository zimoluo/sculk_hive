execute unless block ~1 ~1 ~1 #sculk_hive:sculk_special unless block ~1 ~1 ~-1 #sculk_hive:sculk_special unless block ~-1 ~1 ~1 #sculk_hive:sculk_special unless block ~-1 ~1 ~-1 #sculk_hive:sculk_special unless block ~1 ~1 ~ #sculk_hive:sculk_special unless block ~-1 ~1 ~ #sculk_hive:sculk_special unless block ~ ~1 ~1 #sculk_hive:sculk_special unless block ~ ~1 ~-1 #sculk_hive:sculk_special unless block ~ ~1 ~ #sculk_hive:immune_place_special if block ~1 ~1 ~ #sculk_hive:non-full if block ~-1 ~1 ~ #sculk_hive:non-full if block ~ ~1 ~1 #sculk_hive:non-full if block ~ ~1 ~-1 #sculk_hive:non-full if block ~1 ~1 ~1 #sculk_hive:non-full if block ~1 ~1 ~-1 #sculk_hive:non-full if block ~-1 ~1 ~1 #sculk_hive:non-full if block ~-1 ~1 ~-1 #sculk_hive:non-full if entity @e[tag=sh_main,distance=..32] run function sculk_hive:behavior/cat_bot/move/special/cat_set