execute positioned ~2 ~-1 ~ run summon marker ~ ~ ~ {Tags:["sh_bot", "sh_bot_raw", "sh_part"]}
execute positioned ~-2 ~-1 ~ run summon marker ~ ~ ~ {Tags:["sh_bot", "sh_bot_raw", "sh_part"]}
execute positioned ~ ~-1 ~2 run summon marker ~ ~ ~ {Tags:["sh_bot", "sh_bot_raw", "sh_part"]}
execute positioned ~ ~-1 ~-2 run summon marker ~ ~ ~ {Tags:["sh_bot", "sh_bot_raw", "sh_part"]}

execute positioned ~2 ~-1 ~ run summon marker ~ ~ ~ {Tags:["sh_bot", "sh_bot_raw", "sh_part"]}
execute positioned ~-2 ~-1 ~ run summon marker ~ ~ ~ {Tags:["sh_bot", "sh_bot_raw", "sh_part"]}
execute positioned ~ ~-1 ~2 run summon marker ~ ~ ~ {Tags:["sh_bot", "sh_bot_raw", "sh_part"]}
execute positioned ~ ~-1 ~-2 run summon marker ~ ~ ~ {Tags:["sh_bot", "sh_bot_raw", "sh_part"]}

execute positioned ~2 ~-1 ~ run summon marker ~ ~ ~ {Tags:["sh_bot", "sh_bot_raw", "sh_part"]}
execute positioned ~-2 ~-1 ~ run summon marker ~ ~ ~ {Tags:["sh_bot", "sh_bot_raw", "sh_part"]}
execute positioned ~ ~-1 ~2 run summon marker ~ ~ ~ {Tags:["sh_bot", "sh_bot_raw", "sh_part"]}
execute positioned ~ ~-1 ~-2 run summon marker ~ ~ ~ {Tags:["sh_bot", "sh_bot_raw", "sh_part"]}

execute positioned ~2 ~-1 ~ run summon marker ~ ~ ~ {Tags:["sh_bot", "sh_bot_raw", "sh_part"]}
execute positioned ~-2 ~-1 ~ run summon marker ~ ~ ~ {Tags:["sh_bot", "sh_bot_raw", "sh_part"]}
execute positioned ~ ~-1 ~2 run summon marker ~ ~ ~ {Tags:["sh_bot", "sh_bot_raw", "sh_part"]}
execute positioned ~ ~-1 ~-2 run summon marker ~ ~ ~ {Tags:["sh_bot", "sh_bot_raw", "sh_part"]}

execute if predicate sculk_hive:chance/04 positioned ~2 ~-1 ~ run summon marker ~ ~ ~ {Tags:["sh_bot", "sh_bot_raw", "sh_part"]}
execute if predicate sculk_hive:chance/04 positioned ~-2 ~-1 ~ run summon marker ~ ~ ~ {Tags:["sh_bot", "sh_bot_raw", "sh_part"]}
execute if predicate sculk_hive:chance/04 positioned ~ ~-1 ~2 run summon marker ~ ~ ~ {Tags:["sh_bot", "sh_bot_raw", "sh_part"]}
execute if predicate sculk_hive:chance/04 positioned ~ ~-1 ~-2 run summon marker ~ ~ ~ {Tags:["sh_bot", "sh_bot_raw", "sh_part"]}

execute if predicate sculk_hive:chance/04 positioned ~2 ~-1 ~ run summon marker ~ ~ ~ {Tags:["sh_bot", "sh_bot_raw", "sh_part"]}
execute if predicate sculk_hive:chance/04 positioned ~-2 ~-1 ~ run summon marker ~ ~ ~ {Tags:["sh_bot", "sh_bot_raw", "sh_part"]}
execute if predicate sculk_hive:chance/04 positioned ~ ~-1 ~2 run summon marker ~ ~ ~ {Tags:["sh_bot", "sh_bot_raw", "sh_part"]}
execute if predicate sculk_hive:chance/04 positioned ~ ~-1 ~-2 run summon marker ~ ~ ~ {Tags:["sh_bot", "sh_bot_raw", "sh_part"]}

execute as @e[tag=sh_bot_raw] at @s run function sculk_hive:behavior/cat_bot/init_super

particle minecraft:sculk_soul ~ ~ ~ 2 2 2 0.00001 100 force
particle minecraft:soul_fire_flame ~ ~ ~ 2 2 2 0.00001 100 force
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 4.5 1.5
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 4.5 0.8
playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 4.5 1.2
playsound minecraft:entity.warden.roar hostile @a ~ ~ ~ 4.5 0.8