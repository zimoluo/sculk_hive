execute unless entity @e[tag=sh_beam_target, distance=..0.8] if predicate sculk_hive:chance/033 run particle soul_fire_flame ~ ~ ~ 0.13 0.13 0.13 0.0001 1 force
execute unless entity @e[tag=sh_beam_target, distance=..0.8] if predicate sculk_hive:chance/01 run particle sculk_soul ~ ~ ~ 0.13 0.13 0.13 0.0001 1 force
execute unless entity @e[tag=sh_beam_target, distance=..0.8] run tp @s ^ ^ ^0.5
execute unless entity @e[tag=sh_beam_target, distance=..0.8] at @s run function sculk_hive:behavior/secret_phase/chibaku_tensei/connector/move
execute if entity @e[tag=sh_beam_target, distance=..0.8] run function sculk_hive:behavior/secret_phase/chibaku_tensei/connector/clear