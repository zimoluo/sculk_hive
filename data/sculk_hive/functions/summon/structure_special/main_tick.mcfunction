scoreboard players remove @s sh_cd 1

execute if score @s sh_cd matches ..0 run function sculk_hive:summon/structure_special/end

execute positioned ~-2 ~1 ~ if block ~ ~-1 ~ chiseled_stone_bricks if block ~ ~ ~ #sculk_hive:fire_replaceables run setblock ~ ~ ~ fire[age=0]
execute positioned ~2 ~1 ~ if block ~ ~-1 ~ chiseled_stone_bricks if block ~ ~ ~ #sculk_hive:fire_replaceables run setblock ~ ~ ~ fire[age=0]
execute positioned ~ ~1 ~2 if block ~ ~-1 ~ chiseled_stone_bricks if block ~ ~ ~ #sculk_hive:fire_replaceables run setblock ~ ~ ~ fire[age=0]
execute positioned ~ ~1 ~-2 if block ~ ~-1 ~ chiseled_stone_bricks if block ~ ~ ~ #sculk_hive:fire_replaceables run setblock ~ ~ ~ fire[age=0]
execute positioned ~ ~2 ~ if block ~ ~-1 ~ chiseled_stone_bricks if block ~ ~ ~ #sculk_hive:fire_replaceables run setblock ~ ~ ~ fire[age=0]

execute positioned ~ ~1.5 ~ if predicate sculk_hive:chance/07 run particle flame ~ ~0.3 ~ 0.55 0.55 0.55 0.00001 3 force