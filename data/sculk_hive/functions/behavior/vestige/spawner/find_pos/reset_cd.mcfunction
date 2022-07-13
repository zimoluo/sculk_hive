scoreboard players set @s sh_cd 800
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_cd 20
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_cd 20
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_cd 20
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_cd 20
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_cd 20
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_cd 5
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_cd 5
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_cd 5
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_cd 5
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_cd 5
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_cd 1
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_cd 1
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_cd 1
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_cd 1
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_cd 1
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_cd 1
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_cd 1
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_cd 1
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_cd 1
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_cd 1
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_cd 1
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_cd 1
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_cd 1

execute if data storage sculk_hive:data {world:{difficulty: 1}} run scoreboard players operation @s sh_cd *= 13 sh_constant
execute if data storage sculk_hive:data {world:{difficulty: 1}} run scoreboard players operation @s sh_cd /= 10 sh_constant
execute if data storage sculk_hive:data {world:{difficulty: 3}} run scoreboard players operation @s sh_cd /= 5 sh_constant
execute if data storage sculk_hive:data {world:{difficulty: 3}} run scoreboard players operation @s sh_cd *= 4 sh_constant