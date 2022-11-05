scoreboard players add @s sh_dth_cd 1
execute if entity @s[tag=sh_fourth] if score @s sh_dth_cd matches 120.. run scoreboard players remove @s sh_dth_eff_cd 1
execute unless entity @s[tag=sh_fourth] run scoreboard players remove @s sh_dth_eff_cd 1

execute if score @s sh_dth_cd matches 300 unless entity @s[tag=sh_fourth] run function sculk_hive:behavior/despawn/defeat/final_death
execute if score @s sh_dth_cd matches 520 if entity @s[tag=sh_fourth] run function sculk_hive:behavior/secret_phase/death/true_ending

execute if entity @s[tag=sh_fourth] if score @s sh_dth_eff_cd matches 0 run function sculk_hive:behavior/secret_phase/death/effect
execute unless entity @s[tag=sh_fourth] if score @s sh_dth_eff_cd matches 0 run function sculk_hive:behavior/despawn/defeat/effect
execute if score @s sh_dth_eff_cd matches 0 run function sculk_hive:behavior/despawn/defeat/reset_cd

execute if predicate sculk_hive:chance/01 run particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.000001 30 force
execute if predicate sculk_hive:chance/01 run particle minecraft:sculk_charge_pop ~ ~ ~ 1 1 1 0.0001 50 force

execute if entity @s[tag=sh_fourth] if score @s sh_dth_cd matches 120.. run tag @e[tag=sh_atk, distance=..50] add sh_attracted
execute if entity @s[tag=sh_fourth] if score @s sh_dth_cd matches 120.. run tag @e[tag=sh_atk, distance=..50] add sh_attracted_cannot_escape
execute if data storage sculk_hive:data {world:{difficulty:3}} if entity @s[tag=sh_fourth] if score @s sh_dth_cd matches 400.. run tag @e[tag=sh_atk, distance=..50] add sh_attracted_strong

execute if entity @s[tag=sh_fourth] unless entity @a[gamemode=!spectator, distance=..64] run function sculk_hive:behavior/secret_phase/despawn