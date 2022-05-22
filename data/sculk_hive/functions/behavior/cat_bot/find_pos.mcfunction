execute unless entity @e[tag=sh_main,distance=..32] run kill @s

execute if block ~ ~-1 ~ #sculk_hive:non-full positioned ~ ~-1 ~ run function sculk_hive:behavior/cat_bot/find_pos

execute unless block ~ ~ ~ #sculk_hive:non-full positioned ~ ~1 ~ run function sculk_hive:behavior/cat_bot/find_pos

execute unless block ~ ~-1 ~ #sculk_hive:non-full if block ~ ~ ~ #sculk_hive:non-full run tp @s ~ ~ ~