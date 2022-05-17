scoreboard players set @s sh_sdr_cd 0
execute if predicate sculk_hive:chance/05 run scoreboard players add @s sh_sdr_cd 1
execute if predicate sculk_hive:chance/05 run scoreboard players add @s sh_sdr_cd 1
execute if predicate sculk_hive:chance/05 run scoreboard players add @s sh_sdr_cd 1

execute if score @s sh_sdr_cd matches 0 run summon marker ~2 ~ ~ {Tags:["sh_part","sh_sdr_bot","sh_sdr_bot_raw"]}
execute if score @s sh_sdr_cd matches 1 run summon marker ~-2 ~ ~ {Tags:["sh_part","sh_sdr_bot","sh_sdr_bot_raw"]}
execute if score @s sh_sdr_cd matches 2 run summon marker ~ ~ ~2 {Tags:["sh_part","sh_sdr_bot","sh_sdr_bot_raw"]}
execute if score @s sh_sdr_cd matches 3 run summon marker ~ ~ ~-2 {Tags:["sh_part","sh_sdr_bot","sh_sdr_bot_raw"]}



execute as @e[tag=sh_sdr_bot_raw] at @s run function sculk_hive:behavior/soldier_bot/init
scoreboard players set @s sh_sdr_cd 0