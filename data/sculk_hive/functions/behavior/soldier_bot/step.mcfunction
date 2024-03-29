scoreboard players set @s sh_x 0
scoreboard players set @s sh_z 0

execute store result score @s sh_x run data get entity @s Pos[0]
execute store result score @s sh_z run data get entity @s Pos[2]

scoreboard players set @s sh_bot_xp 0
scoreboard players set @s sh_bot_xn 0
scoreboard players set @s sh_bot_zp 0
scoreboard players set @s sh_bot_zn 0

execute if score @s sh_x > @e[tag=sh_main,limit=1, sort=nearest] sh_x run scoreboard players set @s sh_bot_xp 2
execute if score @s sh_x < @e[tag=sh_main,limit=1, sort=nearest] sh_x run scoreboard players set @s sh_bot_xn 2
execute if score @s sh_z > @e[tag=sh_main,limit=1, sort=nearest] sh_z run scoreboard players set @s sh_bot_zp 2
execute if score @s sh_z < @e[tag=sh_main,limit=1, sort=nearest] sh_z run scoreboard players set @s sh_bot_zn 2
execute if score @s sh_x = @e[tag=sh_main,limit=1, sort=nearest] sh_x run scoreboard players set @s sh_bot_xp 1
execute if score @s sh_x = @e[tag=sh_main,limit=1, sort=nearest] sh_x run scoreboard players set @s sh_bot_xn 1
execute if score @s sh_z = @e[tag=sh_main,limit=1, sort=nearest] sh_z run scoreboard players set @s sh_bot_zp 1
execute if score @s sh_z = @e[tag=sh_main,limit=1, sort=nearest] sh_z run scoreboard players set @s sh_bot_zn 1

scoreboard players operation @s sh_cat_span_diff = @s sh_cat_span_max
scoreboard players operation @s sh_cat_span_diff -= @s sh_cat_span

execute at @s if score @s sh_cat_span matches 1.. if score @s sh_cat_span_diff matches ..0 run function sculk_hive:behavior/soldier_bot/rotation/begin
execute at @s if score @s sh_cat_span matches 1.. if score @s sh_cat_span_diff matches 1.. unless score @s sh_cat_span matches ..2 run function sculk_hive:behavior/soldier_bot/rotation/onmyway
execute at @s if score @s sh_cat_span matches 1.. if score @s sh_cat_span matches ..2 run function sculk_hive:behavior/soldier_bot/rotation/almost

execute at @s run function sculk_hive:behavior/soldier_bot/move/move
execute at @s run function sculk_hive:behavior/soldier_bot/move/move

execute at @s run function sculk_hive:behavior/soldier_bot/move/special/decide

execute if predicate sculk_hive:chance/06 at @s run function sculk_hive:behavior/soldier_bot/move/move
execute if predicate sculk_hive:chance/02 at @s run tp @s ~ ~ ~ ~90 ~
execute if predicate sculk_hive:chance/02 at @s run tp @s ~ ~ ~ ~-90 ~
execute if predicate sculk_hive:chance/04 at @s run function sculk_hive:behavior/soldier_bot/move/move

playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 4 1

scoreboard players set @s sh_bot_last 0
execute store result score @s sh_bot_last run data get entity @s Rotation[0]

scoreboard players remove @s sh_cat_span 1

function sculk_hive:behavior/soldier_bot/reset_ttl