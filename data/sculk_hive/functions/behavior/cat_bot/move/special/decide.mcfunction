scoreboard players set @s sh_bot_special_pos 0
execute if predicate sculk_hive:chance/05 run scoreboard players set @s sh_bot_special_pos 1

execute unless entity @e[tag=sh_main, tag=sh_phs, distance=..64] if score @e[tag=sh_main,limit=1, sort=nearest] sh_bossfight matches 0..1500 run function sculk_hive:behavior/cat_bot/move/special/type_early
execute unless entity @e[tag=sh_main, tag=sh_phs, distance=..64] if score @e[tag=sh_main,limit=1, sort=nearest] sh_bossfight matches 1501.. run function sculk_hive:behavior/cat_bot/move/special/type_late
execute if entity @e[tag=sh_main, tag=sh_phs, distance=..64] run function sculk_hive:behavior/cat_bot/move/special/type_2nd

execute if score @s sh_bot_special_pos matches 0 positioned ^1 ^ ^ run function sculk_hive:behavior/cat_bot/move/special/locate
execute if score @s sh_bot_special_pos matches 1 positioned ^-1 ^ ^ run function sculk_hive:behavior/cat_bot/move/special/locate