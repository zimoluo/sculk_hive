scoreboard players set @s sh_bot_special_pos 0
execute if predicate sculk_hive:chance/04 run scoreboard players set @s sh_bot_special_pos 2
execute if predicate sculk_hive:chance/04 run scoreboard players set @s sh_bot_special_pos 1

execute unless entity @e[tag=sh_main, tag=sh_2nd, distance=..64] run function sculk_hive:behavior/soldier_bot/move/special/type_1st
execute if entity @e[tag=sh_main, tag=sh_2nd, distance=..64, tag=!sh_final] run function sculk_hive:behavior/soldier_bot/move/special/type_2nd
execute if entity @e[tag=sh_main, tag=sh_secret, distance=..64] run function sculk_hive:behavior/soldier_bot/move/special/type_secret

execute if score @s sh_bot_special_pos matches 0 positioned ^1 ^ ^ run function sculk_hive:behavior/soldier_bot/move/special/locate
execute if score @s sh_bot_special_pos matches 1 positioned ^-1 ^ ^ run function sculk_hive:behavior/soldier_bot/move/special/locate
execute if score @s sh_bot_special_pos matches 2 positioned ^1 ^ ^ run function sculk_hive:behavior/soldier_bot/move/special/locate
execute if score @s sh_bot_special_pos matches 2 positioned ^-1 ^ ^ run function sculk_hive:behavior/soldier_bot/move/special/locate