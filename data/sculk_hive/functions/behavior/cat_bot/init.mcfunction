scoreboard players set @s sh_cat_span 4
execute if predicate sculk_hive:chance/05 run scoreboard players add @s sh_cat_span 1
execute if predicate sculk_hive:chance/05 run scoreboard players add @s sh_cat_span 1
execute if predicate sculk_hive:chance/05 run scoreboard players add @s sh_cat_span 1
execute if predicate sculk_hive:chance/05 run scoreboard players add @s sh_cat_span 1

scoreboard players operation @s sh_cat_span_max = @s sh_cat_span

function sculk_hive:behavior/cat_bot/reset_ttl

tp @s ~ ~ ~ facing entity @e[tag=sh_main,limit=1,sort=nearest,distance=..40]
execute at @s run tp @s ~ ~ ~ ~180 0

tag @s remove sh_bot_raw