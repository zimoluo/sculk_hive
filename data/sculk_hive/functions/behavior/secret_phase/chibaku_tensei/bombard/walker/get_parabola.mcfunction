scoreboard players add @e[tag=sh_chit,limit=1,sort=nearest,distance=..50] sh_chit_walker_count 1

execute at @e[tag=sh_chit,limit=1,sort=nearest,distance=..50] run particle end_rod ~ ~ ~ 0.85 0.85 0.85 0.35 15 force
execute at @e[tag=sh_chit,limit=1,sort=nearest,distance=..50] run particle soul_fire_flame ~ ~ ~ 0.85 0.85 0.85 0.35 15 force
execute at @e[tag=sh_chit,limit=1,sort=nearest,distance=..50] run summon marker ~ ~ ~ {Tags:["sh_temp_para", "sh_parabola", "sh_parabola_raw", "sh_part"], data:{dt: 60, targetPos: [0d, 0d, 0d], mode: 0b}}

execute if data storage sculk_hive:data {world:{difficulty:1}} run data merge entity @e[tag=sh_temp_para, limit=1] {data: {dt: 80}}
execute if data storage sculk_hive:data {world:{difficulty:2}} run data merge entity @e[tag=sh_temp_para, limit=1] {data: {dt: 70}}

execute if predicate sculk_hive:chance/05 run data merge entity @e[tag=sh_temp_para,limit=1] {data: {mode: 1b}}

data modify entity @e[tag=sh_temp_para, limit=1] data.targetPos set from entity @s Pos

tag @e[tag=sh_temp_para] remove sh_temp_para