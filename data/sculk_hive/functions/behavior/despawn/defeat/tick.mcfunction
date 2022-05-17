scoreboard players add @s sh_dth_cd 1
scoreboard players remove @s sh_dth_eff_cd 1

execute if score @s sh_dth_cd matches 300 run function sculk_hive:behavior/despawn/defeat/final_death

execute if score @s sh_dth_eff_cd matches 0 run function sculk_hive:behavior/despawn/defeat/effect
execute if score @s sh_dth_eff_cd matches 0 run function sculk_hive:behavior/despawn/defeat/reset_cd

execute if predicate sculk_hive:chance/01 run particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.000001 30 force
execute if predicate sculk_hive:chance/01 run particle minecraft:sculk_charge_pop ~ ~ ~ 1 1 1 0.0001 50 force

bossbar set sculk_hive:health max 100
bossbar set sculk_hive:health value 0