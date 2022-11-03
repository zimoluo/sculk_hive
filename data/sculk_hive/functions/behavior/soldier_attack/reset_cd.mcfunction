scoreboard players set @s sh_sdr_cd 300
execute if predicate sculk_hive:chance/05 run scoreboard players add @s sh_sdr_cd 20
execute if predicate sculk_hive:chance/05 run scoreboard players add @s sh_sdr_cd 20
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_sdr_cd 40
execute if predicate sculk_hive:chance/04 run scoreboard players add @s sh_sdr_cd 1
execute if predicate sculk_hive:chance/04 run scoreboard players add @s sh_sdr_cd 1
execute if predicate sculk_hive:chance/04 run scoreboard players add @s sh_sdr_cd 1
execute if predicate sculk_hive:chance/04 run scoreboard players add @s sh_sdr_cd 1
execute if predicate sculk_hive:chance/04 run scoreboard players add @s sh_sdr_cd 1
execute if predicate sculk_hive:chance/04 run scoreboard players add @s sh_sdr_cd 1
execute if predicate sculk_hive:chance/04 run scoreboard players add @s sh_sdr_cd 1
execute if predicate sculk_hive:chance/04 run scoreboard players add @s sh_sdr_cd 1
execute if predicate sculk_hive:chance/04 run scoreboard players add @s sh_sdr_cd 1
execute if predicate sculk_hive:chance/04 run scoreboard players add @s sh_sdr_cd 1
execute if predicate sculk_hive:chance/04 run scoreboard players add @s sh_sdr_cd 1
execute if predicate sculk_hive:chance/04 run scoreboard players add @s sh_sdr_cd 1

execute if data storage sculk_hive:data {world:{difficulty:1}} run scoreboard players operation @s sh_sdr_cd *= 6 sh_constant
execute if data storage sculk_hive:data {world:{difficulty:1}} run scoreboard players operation @s sh_sdr_cd /= 5 sh_constant
execute if data storage sculk_hive:data {world:{difficulty:3}} run scoreboard players operation @s sh_sdr_cd /= 5 sh_constant
execute if data storage sculk_hive:data {world:{difficulty:3}} run scoreboard players operation @s sh_sdr_cd *= 4 sh_constant

execute if entity @s[tag=sh_secret] run scoreboard players operation @s sh_sdr_cd /= 4 sh_constant
execute if entity @s[tag=sh_secret] run scoreboard players operation @s sh_sdr_cd *= 3 sh_constant