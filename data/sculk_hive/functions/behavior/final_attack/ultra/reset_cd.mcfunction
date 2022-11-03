execute unless entity @e[tag=sh_secret,distance=..64] run scoreboard players operation @s sh_boom_cd = ULTRA sh_constant
execute if entity @e[tag=sh_secret,distance=..64] run scoreboard players operation @s sh_boom_cd = ULTRA_SECRET sh_constant
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_boom_cd 10
execute if predicate sculk_hive:chance/03 run scoreboard players add @s sh_boom_cd 10