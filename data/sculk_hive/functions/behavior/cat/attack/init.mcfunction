function sculk_hive:behavior/cat/reset_ttl

summon marker ~ ~ ~ {Tags:["sh_bot", "sh_bot_raw", "sh_part"]}

execute as @e[tag=sh_bot_raw] at @s run function sculk_hive:behavior/cat_bot/init

scoreboard players remove @s sh_cat_span 1