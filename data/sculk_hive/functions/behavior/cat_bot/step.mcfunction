scoreboard players operation @s sh_cat_span_diff = @s sh_cat_span_max
scoreboard players operation @s sh_cat_span_diff -= @s sh_cat_span

execute at @s run function sculk_hive:behavior/cat_bot/rotation/decide_rotate

execute at @s run function sculk_hive:behavior/cat_bot/move/move
execute at @s run function sculk_hive:behavior/cat_bot/move/move

execute at @s if score @e[tag=sh_main,limit=1, sort=nearest] sh_bossfight matches 0..1200 if predicate sculk_hive:chance/02 run function sculk_hive:behavior/cat_bot/move/special/decide
execute at @s if score @e[tag=sh_main,limit=1, sort=nearest] sh_bossfight matches 1201.. if predicate sculk_hive:chance/01 run function sculk_hive:behavior/cat_bot/move/special/decide

execute if predicate sculk_hive:chance/06 at @s run function sculk_hive:behavior/cat_bot/move/move

execute at @s run function sculk_hive:behavior/cat_bot/rotation/decide_rotate

execute if predicate sculk_hive:chance/04 at @s run function sculk_hive:behavior/cat_bot/move/move

playsound minecraft:block.sculk.charge hostile @a ~ ~ ~ 4
playsound minecraft:block.sculk_catalyst.bloom hostile @a ~ ~ ~ 4
playsound minecraft:block.sculk.spread hostile @a ~ ~ ~ 4
particle minecraft:sculk_charge_pop ~ ~ ~ 1.2 0.4 1.2 0.00001 30 force

scoreboard players remove @s sh_cat_span 1

function sculk_hive:behavior/cat_bot/reset_ttl