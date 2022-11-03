function sculk_hive:behavior/secret_phase/chibaku_tensei/bombard/walker/random_rotate

execute at @s if predicate sculk_hive:chance/09 run tp @s ^ ^ ^0.5
execute at @s if predicate sculk_hive:chance/075 run tp @s ^ ^ ^0.5
execute at @s if data storage sculk_hive:data {world:{difficulty:1}} if predicate sculk_hive:chance/08 run tp @s ^ ^ ^0.5
execute at @s if data storage sculk_hive:data {world:{difficulty:2}} if predicate sculk_hive:chance/08 run tp @s ^ ^ ^0.5
execute at @s if data storage sculk_hive:data {world:{difficulty:1}} if predicate sculk_hive:chance/06 run tp @s ^ ^ ^0.5
execute at @s if data storage sculk_hive:data {world:{difficulty:2}} if predicate sculk_hive:chance/06 run tp @s ^ ^ ^0.5
execute at @s if data storage sculk_hive:data {world:{difficulty:1}} if predicate sculk_hive:chance/08 run tp @s ^ ^ ^0.5
execute at @s if data storage sculk_hive:data {world:{difficulty:1}} if predicate sculk_hive:chance/075 run tp @s ^ ^ ^0.5

execute at @s run function sculk_hive:behavior/secret_phase/chibaku_tensei/bombard/walker/find_surface

execute at @s align y run tp @s ~ ~1.0 ~

execute at @s if data storage sculk_hive:data {world:{difficulty:3}} run function sculk_hive:behavior/secret_phase/chibaku_tensei/bombard/walker/get_parabola
execute at @s if data storage sculk_hive:data {world:{difficulty:2}} if predicate sculk_hive:chance/08 run function sculk_hive:behavior/secret_phase/chibaku_tensei/bombard/walker/get_parabola
execute at @s if data storage sculk_hive:data {world:{difficulty:1}} if predicate sculk_hive:chance/067 run function sculk_hive:behavior/secret_phase/chibaku_tensei/bombard/walker/get_parabola

kill @s