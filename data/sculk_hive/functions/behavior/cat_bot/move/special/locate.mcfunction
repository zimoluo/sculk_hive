execute if block ~ ~ ~ #sculk_hive:immune_special positioned ~ ~-1 ~ run function sculk_hive:behavior/cat_bot/move/special/locate
execute unless block ~ ~ ~ #sculk_hive:immune_special unless block ~ ~1 ~ #sculk_hive:immune_special positioned ~ ~1 ~ run function sculk_hive:behavior/cat_bot/move/special/locate

execute unless block ~ ~ ~ #sculk_hive:immune_special if block ~ ~1 ~ #sculk_hive:immune_special if entity @e[tag=sh_main,distance=..32] run function sculk_hive:behavior/cat_bot/move/special/place