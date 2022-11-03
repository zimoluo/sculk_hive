execute if entity @s[tag=sh_chit_raw] run function sculk_hive:behavior/secret_phase/chibaku_tensei/setup

execute if entity @e[tag=sh_spr_tgt, distance=..24] run tag @e[tag=sh_spr_tgt,distance=..24] add sh_beam_target
execute if entity @e[tag=sh_spr_tgt, distance=..24] run function sculk_hive:behavior/secret_phase/chibaku_tensei/connector/init

execute if score @s sh_chit_stage matches 1 run function sculk_hive:behavior/secret_phase/chibaku_tensei/stage1
execute if score @s sh_chit_stage matches 2 run function sculk_hive:behavior/secret_phase/chibaku_tensei/stage2
execute if score @s sh_chit_stage matches 3..5 run function sculk_hive:behavior/secret_phase/chibaku_tensei/sphere/init
execute if score @s sh_chit_stage matches 3 run function sculk_hive:behavior/secret_phase/chibaku_tensei/stage3
execute if score @s sh_chit_stage matches 4 run function sculk_hive:behavior/secret_phase/chibaku_tensei/stage4
execute if score @s sh_chit_stage matches 5 run function sculk_hive:behavior/secret_phase/chibaku_tensei/stage5