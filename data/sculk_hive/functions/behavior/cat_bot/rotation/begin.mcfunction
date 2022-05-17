execute if score @s sh_cat_span matches 1.. unless entity @e[tag=sh_main,distance=..32] run kill @s

execute unless score @s sh_bot_last matches 90 if score @s sh_bot_xn matches 2 run tp @s ~ ~ ~ 90 0
execute unless score @s sh_bot_last matches -90 if score @s sh_bot_xp matches 2 run tp @s ~ ~ ~ -90 0
execute unless score @s sh_bot_last matches 0 if score @s sh_bot_zn matches 2 run tp @s ~ ~ ~ 180 0
execute unless score @s sh_bot_last matches -180 if score @s sh_bot_zp matches 2 run tp @s ~ ~ ~ 0 0

execute unless score @s sh_bot_last matches 90 if predicate sculk_hive:chance/05 if score @s sh_bot_xn matches 2 run tp @s ~ ~ ~ 90 0
execute unless score @s sh_bot_last matches -90 if predicate sculk_hive:chance/05 if score @s sh_bot_xp matches 2 run tp @s ~ ~ ~ -90 0