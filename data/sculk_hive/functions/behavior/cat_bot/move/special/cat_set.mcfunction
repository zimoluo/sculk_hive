execute unless block ~ ~1 ~ #sculk_hive:silent_break run setblock ~ ~1 ~ sculk_catalyst destroy
execute if block ~ ~1 ~ #sculk_hive:silent_break unless block ~ ~ ~ snow run setblock ~ ~1 ~ sculk_catalyst
execute if block ~ ~ ~ snow[layers=1] run setblock ~ ~1 ~ sculk_catalyst
execute if block ~ ~ ~ snow unless block ~ ~ ~ snow[layers=1] run setblock ~ ~1 ~ sculk_catalyst destroy
summon marker ~ ~1 ~ {Tags:["sh_part", "sh_cat", "sh_cat_raw"]}

execute as @e[tag=sh_cat_raw] at @s run function sculk_hive:behavior/cat/init