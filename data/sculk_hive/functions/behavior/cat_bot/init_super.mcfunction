scoreboard players set @s sh_cat_span 8
execute if predicate sculk_hive:chance/07 run scoreboard players add @s sh_cat_span 1
execute if predicate sculk_hive:chance/07 run scoreboard players add @s sh_cat_span 1
execute if predicate sculk_hive:chance/07 run scoreboard players add @s sh_cat_span 1

scoreboard players operation @s sh_cat_span_max = @s sh_cat_span

function sculk_hive:behavior/cat_bot/reset_ttl

tag @s remove sh_bot_raw