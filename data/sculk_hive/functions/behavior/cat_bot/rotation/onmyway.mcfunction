execute if entity @e[tag=sh_main,distance=..3.5] run kill @s
execute if score @s sh_cat_span matches 1.. unless entity @e[tag=sh_main,distance=..32] run kill @s

tp @s ~ ~ ~ ~60 ~
execute if predicate sculk_hive:chance/05 run tp @s ~ ~ ~ ~-60 ~
execute if predicate sculk_hive:chance/025 run tp @s ~ ~ ~ ~ ~

execute at @s if predicate sculk_hive:chance/033 run tp @s ~ ~ ~ ~45 ~
execute at @s if predicate sculk_hive:chance/033 run tp @s ~ ~ ~ ~45 ~
execute at @s if predicate sculk_hive:chance/033 run tp @s ~ ~ ~ ~60 ~
execute at @s if predicate sculk_hive:chance/033 run tp @s ~ ~ ~ ~15 ~
execute at @s if predicate sculk_hive:chance/033 run tp @s ~ ~ ~ ~15 ~
execute at @s if predicate sculk_hive:chance/033 run tp @s ~ ~ ~ ~15 ~
execute at @s if predicate sculk_hive:chance/033 run tp @s ~ ~ ~ ~30 ~
execute at @s if predicate sculk_hive:chance/033 run tp @s ~ ~ ~ ~-45 ~
execute at @s if predicate sculk_hive:chance/033 run tp @s ~ ~ ~ ~-45 ~
execute at @s if predicate sculk_hive:chance/033 run tp @s ~ ~ ~ ~-60 ~
execute at @s if predicate sculk_hive:chance/033 run tp @s ~ ~ ~ ~-15 ~
execute at @s if predicate sculk_hive:chance/033 run tp @s ~ ~ ~ ~-15 ~
execute at @s if predicate sculk_hive:chance/033 run tp @s ~ ~ ~ ~-15 ~
execute at @s if predicate sculk_hive:chance/033 run tp @s ~ ~ ~ ~-30 ~