scoreboard players set @s sh_pos_score 0
execute if predicate sculk_hive:chance/04 run scoreboard players set @s sh_pos_score 1

execute if score @s sh_pos_score matches 0 run summon zombie
execute if score @s sh_pos_score matches 1 run summon skeleton

tag @e[tag=sh_vestige_spawn_bot,limit=1,sort=nearest] add sh_vestige_spawn_done
kill @s