scoreboard players set @s sh_cat_span 2
execute if predicate sculk_hive:chance/05 run scoreboard players add @s sh_cat_span 1
execute if predicate sculk_hive:chance/05 run scoreboard players add @s sh_cat_span 1

scoreboard players operation @s sh_cat_span_max = @s sh_cat_span

function sculk_hive:behavior/soldier_bot/reset_ttl

tag @s remove sh_sdr_bot_raw