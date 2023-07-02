execute if predicate sculk_hive:chance/03 positioned ~1 ~ ~ run function sculk_hive:behavior/cat_bot/move/place_vertical/check_perimeter
execute if predicate sculk_hive:chance/03 positioned ~ ~ ~ run function sculk_hive:behavior/cat_bot/move/place_vertical/check_perimeter
execute if predicate sculk_hive:chance/03 positioned ~ ~ ~1 run function sculk_hive:behavior/cat_bot/move/place_vertical/check_perimeter
execute if predicate sculk_hive:chance/03 positioned ~ ~ ~-1 run function sculk_hive:behavior/cat_bot/move/place_vertical/check_perimeter
execute if predicate sculk_hive:chance/03 positioned ~-1 ~ ~ run function sculk_hive:behavior/cat_bot/move/place_vertical/check_perimeter
execute if predicate sculk_hive:chance/03 positioned ~1 ~ ~1 run function sculk_hive:behavior/cat_bot/move/place_vertical/check_perimeter
execute if predicate sculk_hive:chance/03 positioned ~-1 ~ ~1 run function sculk_hive:behavior/cat_bot/move/place_vertical/check_perimeter
execute if predicate sculk_hive:chance/03 positioned ~-1 ~ ~-1 run function sculk_hive:behavior/cat_bot/move/place_vertical/check_perimeter
execute if predicate sculk_hive:chance/03 positioned ~1 ~ ~-1 run function sculk_hive:behavior/cat_bot/move/place_vertical/check_perimeter

execute positioned ~1 ~ ~ run function sculk_hive:behavior/cat_bot/move/place_vertical/check_vein
execute positioned ~ ~ ~ run function sculk_hive:behavior/cat_bot/move/place_vertical/check_vein
execute positioned ~ ~ ~1 run function sculk_hive:behavior/cat_bot/move/place_vertical/check_vein
execute positioned ~ ~ ~-1 run function sculk_hive:behavior/cat_bot/move/place_vertical/check_vein
execute positioned ~-1 ~ ~ run function sculk_hive:behavior/cat_bot/move/place_vertical/check_vein
execute positioned ~1 ~ ~1 run function sculk_hive:behavior/cat_bot/move/place_vertical/check_vein
execute positioned ~-1 ~ ~1 run function sculk_hive:behavior/cat_bot/move/place_vertical/check_vein
execute positioned ~-1 ~ ~-1 run function sculk_hive:behavior/cat_bot/move/place_vertical/check_vein
execute positioned ~1 ~ ~-1 run function sculk_hive:behavior/cat_bot/move/place_vertical/check_vein