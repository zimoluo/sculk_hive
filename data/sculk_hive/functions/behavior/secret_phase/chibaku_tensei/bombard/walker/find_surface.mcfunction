execute if block ~ ~ ~ #sculk_hive:non-full positioned ~ ~-1 ~ run function sculk_hive:behavior/secret_phase/chibaku_tensei/bombard/walker/find_surface
execute unless block ~ ~ ~ #sculk_hive:non-full unless block ~ ~1 ~ #sculk_hive:non-full positioned ~ ~1 ~ run function sculk_hive:behavior/cat_bot/move/check/locate

execute unless block ~ ~ ~ #sculk_hive:non-full if block ~ ~1 ~ #sculk_hive:non-full if entity @e[tag=sh_chit,distance=..50] run tp @s ~ ~ ~