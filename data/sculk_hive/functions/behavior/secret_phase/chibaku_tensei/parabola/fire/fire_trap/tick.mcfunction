execute unless block ~ ~ ~ #soul_fire_base_blocks run function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/fire/fire_trap/vanish
execute unless block ~ ~1 ~ soul_fire if block ~ ~1 ~ #sculk_hive:non-full unless block ~ ~1 ~ #sculk_hive:immune_fire_trap run setblock ~ ~1 ~ soul_fire

execute if block ~ ~1 ~ soul_fire if score @s sh_cd <= @s sh_hp positioned ~-0.5 ~1 ~-0.5 if entity @e[tag=sh_atk, dx=0, dy=0, dz=0] at @s positioned ~ ~0.5 ~ run function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/fire/fire_trap/flame
execute if block ~ ~1 ~ soul_fire if score @s sh_cd <= @s sh_hp positioned ~-0.5 ~1 ~-0.5 as @e[tag=sh_atk, dx=0, dy=0, dz=0] at @s run function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/fire/fire_trap/curse

scoreboard players remove @s sh_cd 1
execute if score @s sh_cd matches ..0 run function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/fire/fire_trap/vanish