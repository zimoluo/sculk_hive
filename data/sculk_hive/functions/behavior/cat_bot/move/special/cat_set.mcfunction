execute unless block ~ ~1 ~ water run setblock ~ ~1 ~ sculk_catalyst destroy
execute if block ~ ~1 ~ water run setblock ~ ~1 ~ sculk_catalyst
summon marker ~ ~1 ~ {Tags:["sh_part", "sh_cat", "sh_cat_raw"]}

execute as @e[tag=sh_cat_raw] at @s run function sculk_hive:behavior/cat/init