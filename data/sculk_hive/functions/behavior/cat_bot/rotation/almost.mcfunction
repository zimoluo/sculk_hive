execute if entity @e[tag=sh_main,distance=..3.5] run kill @s
execute if score @s sh_cat_span matches 1.. unless entity @e[tag=sh_main,distance=..32] run kill @s

tp @s ~ ~ ~ ~45 ~
execute if predicate sculk_hive:chance/05 run tp @s ~ ~ ~ ~-45 ~
execute if predicate sculk_hive:chance/03 run tp @s ~ ~ ~ ~ ~

execute at @s if predicate sculk_hive:chance/05 run tp @s ~ ~ ~ ~45 ~
execute at @s if predicate sculk_hive:chance/05 run tp @s ~ ~ ~ ~45 ~
execute at @s if predicate sculk_hive:chance/05 run tp @s ~ ~ ~ ~45 ~
execute at @s if predicate sculk_hive:chance/05 run tp @s ~ ~ ~ ~90 ~
execute at @s if predicate sculk_hive:chance/05 run tp @s ~ ~ ~ ~-45 ~
execute at @s if predicate sculk_hive:chance/05 run tp @s ~ ~ ~ ~-45 ~
execute at @s if predicate sculk_hive:chance/05 run tp @s ~ ~ ~ ~-45 ~
execute at @s if predicate sculk_hive:chance/05 run tp @s ~ ~ ~ ~-90 ~