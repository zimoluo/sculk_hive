scoreboard players set @s sh_chit_walker_count 0

scoreboard players set TEMP sh_constant 0
execute at @e[tag=sh_main,limit=1,sort=nearest, distance=..24] as @a[tag=sh_atk, limit=3, sort=random, distance=5..31, tag=!sh_attracted, predicate=sculk_hive:behavior/near_ground] run scoreboard players add TEMP sh_constant 1
execute at @e[tag=sh_main,limit=1,sort=nearest, distance=..24] as @a[tag=sh_atk, limit=3, sort=random, distance=5..31, tag=!sh_attracted, predicate=sculk_hive:behavior/near_ground] at @s run summon marker ~ ~ ~ {Tags:["sh_walker"]}
execute if score TEMP sh_constant matches 0 at @e[tag=sh_main,limit=1,sort=nearest, distance=..24] as @e[tag=sh_atk, limit=3, sort=random, distance=5..31, type=!player, tag=!sh_attracted, predicate=sculk_hive:behavior/near_ground] at @s run summon marker ~ ~ ~ {Tags:["sh_walker"]}
execute if score TEMP sh_constant matches 1 at @e[tag=sh_main,limit=1,sort=nearest, distance=..24] as @e[tag=sh_atk, limit=2, sort=random, distance=5..31, type=!player, tag=!sh_attracted, predicate=sculk_hive:behavior/round] at @s run summon marker ~ ~ ~ {Tags:["sh_walker"]}
execute if score TEMP sh_constant matches 2 at @e[tag=sh_main,limit=1,sort=nearest, distance=..24] as @e[tag=sh_atk, limit=1, sort=random, distance=5..31, type=!player, tag=!sh_attracted, predicate=sculk_hive:behavior/near_ground] at @s run summon marker ~ ~ ~ {Tags:["sh_walker"]}

execute as @e[tag=sh_walker] at @s run function sculk_hive:behavior/secret_phase/chibaku_tensei/bombard/walker/atk

execute if score @s sh_chit_walker_count matches ..3 run function sculk_hive:behavior/secret_phase/chibaku_tensei/bombard/get_normal_walker
execute if score @s sh_chit_walker_count matches ..3 run function sculk_hive:behavior/secret_phase/chibaku_tensei/bombard/get_normal_walker
execute if score @s sh_chit_walker_count matches ..3 run function sculk_hive:behavior/secret_phase/chibaku_tensei/bombard/get_normal_walker

function sculk_hive:behavior/secret_phase/chibaku_tensei/bombard/get_normal_walker
function sculk_hive:behavior/secret_phase/chibaku_tensei/bombard/get_normal_walker
function sculk_hive:behavior/secret_phase/chibaku_tensei/bombard/get_normal_walker
execute if data storage sculk_hive:data {world:{difficulty:2}} run function sculk_hive:behavior/secret_phase/chibaku_tensei/bombard/get_normal_walker
execute if data storage sculk_hive:data {world:{difficulty:3}} run function sculk_hive:behavior/secret_phase/chibaku_tensei/bombard/get_normal_walker
execute if data storage sculk_hive:data {world:{difficulty:3}} if predicate sculk_hive:chance/06 run function sculk_hive:behavior/secret_phase/chibaku_tensei/bombard/get_normal_walker
execute if data storage sculk_hive:data {world:{difficulty:3}} if predicate sculk_hive:chance/04 run function sculk_hive:behavior/secret_phase/chibaku_tensei/bombard/get_normal_walker

execute if score @s sh_chit_walker_count matches 1.. run playsound entity.wither.shoot hostile @a ~ ~ ~ 4.5 0.9
execute if score @s sh_chit_walker_count matches 1.. run playsound entity.wither.shoot hostile @a ~ ~ ~ 4.5 1.3