execute if predicate sculk_hive:chance/02 run tp @s ~ ~1 ~
execute if predicate sculk_hive:chance/02 run tp @s ~ ~2 ~
execute if predicate sculk_hive:chance/02 run tp @s ~ ~-1 ~
execute if predicate sculk_hive:chance/02 run tp @s ~ ~-2 ~

execute at @s run function sculk_hive:behavior/secret_phase/chibaku_tensei/bombard/walker/random_rotate

execute at @s run tp @s ^ ^ ^4.5
execute at @s if predicate sculk_hive:chance/09 run tp @s ^ ^ ^1.8
execute at @s if predicate sculk_hive:chance/09 run tp @s ^ ^ ^0.9
execute at @s if predicate sculk_hive:chance/05 run tp @s ^ ^ ^1.4
execute at @s if predicate sculk_hive:chance/05 run tp @s ^ ^ ^0.9

execute at @s run function sculk_hive:behavior/secret_phase/chibaku_tensei/bombard/walker/offset_rotate

execute at @s if predicate sculk_hive:chance/075 run tp @s ^ ^ ^1.7
execute at @s if predicate sculk_hive:chance/075 run tp @s ^ ^ ^0.9
execute at @s if predicate sculk_hive:chance/06 run tp @s ^ ^ ^1.2
execute at @s if predicate sculk_hive:chance/06 run tp @s ^ ^ ^0.9

execute at @s run function sculk_hive:behavior/secret_phase/chibaku_tensei/bombard/walker/offset_rotate

execute at @s if predicate sculk_hive:chance/067 run tp @s ^ ^ ^1.45
execute at @s if predicate sculk_hive:chance/067 run tp @s ^ ^ ^0.9
execute at @s if predicate sculk_hive:chance/05 run tp @s ^ ^ ^1.35
execute at @s if predicate sculk_hive:chance/05 run tp @s ^ ^ ^0.85

execute at @s run function sculk_hive:behavior/secret_phase/chibaku_tensei/bombard/walker/minor_rotate

execute at @s if predicate sculk_hive:chance/05 run tp @s ^ ^ ^0.8
execute at @s if predicate sculk_hive:chance/05 run tp @s ^ ^ ^0.7
execute at @s if predicate sculk_hive:chance/05 run tp @s ^ ^ ^0.6

execute at @s run function sculk_hive:behavior/secret_phase/chibaku_tensei/bombard/walker/minor_rotate

execute at @s if predicate sculk_hive:chance/05 run tp @s ^ ^ ^0.8
execute at @s if predicate sculk_hive:chance/05 run tp @s ^ ^ ^0.7
execute at @s if predicate sculk_hive:chance/05 run tp @s ^ ^ ^0.6

execute at @s run function sculk_hive:behavior/secret_phase/chibaku_tensei/bombard/walker/minor_rotate

execute at @s if predicate sculk_hive:chance/05 run tp @s ^ ^ ^0.8
execute at @s if predicate sculk_hive:chance/05 run tp @s ^ ^ ^0.7
execute at @s if predicate sculk_hive:chance/05 run tp @s ^ ^ ^0.6

execute at @s run function sculk_hive:behavior/secret_phase/chibaku_tensei/bombard/walker/random_rotate

execute at @s if predicate sculk_hive:chance/09 run tp @s ^ ^ ^0.5
execute at @s if predicate sculk_hive:chance/075 run tp @s ^ ^ ^0.5
execute at @s if predicate sculk_hive:chance/08 run tp @s ^ ^ ^0.5
execute at @s if predicate sculk_hive:chance/08 run tp @s ^ ^ ^0.5
execute at @s if predicate sculk_hive:chance/06 run tp @s ^ ^ ^0.5
execute at @s if predicate sculk_hive:chance/06 run tp @s ^ ^ ^0.5
execute at @s if predicate sculk_hive:chance/08 run tp @s ^ ^ ^0.5
execute at @s if predicate sculk_hive:chance/075 run tp @s ^ ^ ^0.5

execute at @s run function sculk_hive:behavior/secret_phase/chibaku_tensei/bombard/walker/find_surface

execute at @s align y run tp @s ~ ~1.0 ~

execute at @s if predicate sculk_hive:chance/09 run function sculk_hive:behavior/secret_phase/chibaku_tensei/bombard/walker/get_parabola

kill @s