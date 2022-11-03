execute unless block ~ ~ ~ #soul_fire_base_blocks run setblock ~ ~ ~ soul_soil
setblock ~ ~1 ~ soul_fire
summon marker ~ ~ ~ {Tags:["sh_part", "sh_fire_trap", "sh_temp"]}

scoreboard players set @e[tag=sh_temp] sh_cd 100
execute if predicate sculk_hive:chance/04 run scoreboard players add @e[tag=sh_temp] sh_cd 10
execute if predicate sculk_hive:chance/04 run scoreboard players add @e[tag=sh_temp] sh_cd 10
execute if predicate sculk_hive:chance/04 run scoreboard players add @e[tag=sh_temp] sh_cd 10
execute if predicate sculk_hive:chance/04 run scoreboard players add @e[tag=sh_temp] sh_cd 10
execute if predicate sculk_hive:chance/04 run scoreboard players add @e[tag=sh_temp] sh_cd 10
execute if data storage sculk_hive:data {world:{difficulty:2}} run scoreboard players add @e[tag=sh_temp] sh_cd 40
execute if data storage sculk_hive:data {world:{difficulty:3}} run scoreboard players add @e[tag=sh_temp] sh_cd 100

scoreboard players operation @e[tag=sh_temp] sh_hp = @e[tag=sh_temp,limit=1] sh_cd
scoreboard players operation @e[tag=sh_temp] sh_hp -= 20 sh_constant

tag @e[tag=sh_temp] remove sh_temp