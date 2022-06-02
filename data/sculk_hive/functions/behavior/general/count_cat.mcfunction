scoreboard players set @s sh_cat_count 0

execute as @e[tag=sh_cat, distance=..64] run scoreboard players add @e[tag=sh_main, limit=1, sort=nearest] sh_cat_count 1
execute as @e[tag=sh_kck, distance=..64] run scoreboard players add @e[tag=sh_main, limit=1, sort=nearest] sh_cat_count 1