execute if data entity @s {data:{mode: 0b}} run particle soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0.0001 10 force
execute if data entity @s {data:{mode: 1b}} run particle soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0.0001 3 force
execute if data entity @s {data:{mode: 1b}} run particle sculk_soul ~ ~ ~ 0.2 0.2 0.2 0.0001 6 force
execute if data entity @s {data:{mode: 1b}} run particle sculk_charge_pop ~ ~ ~ 0.2 0.2 0.2 0.0001 4 force

execute unless entity @e[tag=sh_chit,distance=..4] positioned ~-0.6 ~-0.6 ~-0.6 if entity @e[tag=sh_atk, dx=0.2, dy=0.2, dz=0.2] at @s run function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/hit