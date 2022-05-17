scoreboard players set @s sh_cat_count 0

execute as @e[tag=sh_cat] run scoreboard players add @e[tag=sh_main] sh_cat_count 1
execute as @e[tag=sh_kck] run scoreboard players add @e[tag=sh_main] sh_cat_count 1