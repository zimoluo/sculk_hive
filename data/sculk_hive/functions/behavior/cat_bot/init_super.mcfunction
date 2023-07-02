scoreboard players set @s sh_cat_span 12
execute if predicate sculk_hive:chance/07 run scoreboard players add @s sh_cat_span 1
execute if predicate sculk_hive:chance/07 run scoreboard players add @s sh_cat_span 1
execute if predicate sculk_hive:chance/07 run scoreboard players add @s sh_cat_span 1

scoreboard players operation @s sh_cat_span_max = @s sh_cat_span

function sculk_hive:behavior/cat_bot/reset_ttl

tp @s ~ ~ ~ 0 0
execute if predicate sculk_hive:chance/05 run tp @s ~ ~ ~ 180 0
execute at @s if predicate sculk_hive:chance/05 run tp @s ~ ~ ~ ~90 0
execute at @s if predicate sculk_hive:chance/05 run tp @s ~ ~ ~ ~45 0
execute at @s if predicate sculk_hive:chance/05 run tp @s ~ ~ ~ ~22.5 0
execute at @s if predicate sculk_hive:chance/05 run tp @s ~ ~ ~ ~11.25 0
execute at @s if predicate sculk_hive:chance/05 run tp @s ~ ~ ~ ~11.25 0
execute at @s if predicate sculk_hive:chance/05 run tp @s ~ ~ ~ ~5.625 0

tag @s add sh_bot_super
tag @s remove sh_bot_raw