execute store result score @s sh_arrow_dx run data get entity @s Motion[0] 10000
execute store result score @s sh_arrow_dy run data get entity @s Motion[1] 10000
execute store result score @s sh_arrow_dz run data get entity @s Motion[2] 10000

execute if score @s sh_arrow_dx matches ..0 run scoreboard players operation @s sh_arrow_dx *= -1 sh_constant
execute if score @s sh_arrow_dy matches ..0 run scoreboard players operation @s sh_arrow_dy *= -1 sh_constant
execute if score @s sh_arrow_dz matches ..0 run scoreboard players operation @s sh_arrow_dz *= -1 sh_constant

scoreboard players set @s sh_arrow_score 0

execute if score @s sh_arrow_dx > @s sh_arrow_dy if score @s sh_arrow_dx > @s sh_arrow_dz run scoreboard players set @s sh_arrow_score 0
execute if score @s sh_arrow_dy > @s sh_arrow_dx if score @s sh_arrow_dy > @s sh_arrow_dz run scoreboard players set @s sh_arrow_score 2
execute if score @s sh_arrow_dz > @s sh_arrow_dx if score @s sh_arrow_dz > @s sh_arrow_dy run scoreboard players set @s sh_arrow_score 4

execute store result score @s sh_arrow_dx run data get entity @s Motion[0] 10000
execute store result score @s sh_arrow_dy run data get entity @s Motion[1] 10000
execute store result score @s sh_arrow_dz run data get entity @s Motion[2] 10000

execute if score @s sh_arrow_score matches 0 if score @s sh_arrow_dx matches ..0 run scoreboard players add @s sh_arrow_score 1
execute if score @s sh_arrow_score matches 2 if score @s sh_arrow_dy matches ..0 run scoreboard players add @s sh_arrow_score 1
execute if score @s sh_arrow_score matches 4 if score @s sh_arrow_dz matches ..0 run scoreboard players add @s sh_arrow_score 1

execute if score @s sh_arrow_score matches 0 positioned ~1 ~ ~ run function sculk_hive:behavior/midas/arrow/create_gold
execute if score @s sh_arrow_score matches 1 positioned ~-1 ~ ~ run function sculk_hive:behavior/midas/arrow/create_gold
execute if score @s sh_arrow_score matches 2 positioned ~ ~1 ~ run function sculk_hive:behavior/midas/arrow/create_gold
execute if score @s sh_arrow_score matches 3 positioned ~ ~-1 ~ run function sculk_hive:behavior/midas/arrow/create_gold
execute if score @s sh_arrow_score matches 4 positioned ~ ~ ~1 run function sculk_hive:behavior/midas/arrow/create_gold
execute if score @s sh_arrow_score matches 5 positioned ~ ~ ~-1 run function sculk_hive:behavior/midas/arrow/create_gold