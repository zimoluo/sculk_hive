playsound entity.wither.hurt hostile @a ~ ~ ~ 4 1.3
playsound entity.evoker.cast_spell hostile @a ~ ~ ~ 4 1.4
playsound entity.illusioner.mirror_move hostile @a ~ ~ ~ 4 1.4
playsound entity.generic.explode hostile @a ~ ~ ~ 4 1.4

particle explosion ~ ~ ~ 1 1 1 0.0001 8 force

particle soul_fire_flame ~ ~ ~ 1 1 1 0.00001 24
particle soul_fire_flame ~ ~ ~ 1 1 1 0.1 40
particle sculk_soul ~ ~ ~ 1 1 1 0.00001 50
particle sculk_charge_pop ~ ~ ~ 1 1 1 0.00001 40
particle end_rod ~ ~ ~ 0.85 0.85 0.85 0.35 15 force

execute if data storage sculk_hive:data {world:{difficulty:2}} positioned ~-2.25 ~-2.25 ~-2.25 as @e[tag=sh_atk,dx=3.5, dy=3.5, dz=3.5] at @s run effect give @s[tag=sh_atk_normal] instant_damage 1 1 true
execute if data storage sculk_hive:data {world:{difficulty:3}} positioned ~-2.5 ~-2.5 ~-2.5 as @e[tag=sh_atk,dx=4, dy=4, dz=4] at @s run effect give @s[tag=sh_atk_normal] instant_damage 1 1 true
execute if data storage sculk_hive:data {world:{difficulty:1}} positioned ~-1.9 ~-1.9 ~-1.9 as @e[tag=sh_atk,dx=2.8, dy=2.8, dz=2.8] at @s run effect give @s[tag=sh_atk_normal] instant_damage 1 0 true
execute if data storage sculk_hive:data {world:{difficulty:2}} positioned ~-2.25 ~-2.25 ~-2.25 as @e[tag=sh_atk,dx=3.5, dy=3.5, dz=3.5] at @s run effect give @s[tag=sh_atk_undead] instant_health 1 1 true
execute if data storage sculk_hive:data {world:{difficulty:3}} positioned ~-2.5 ~-2.5 ~-2.5 as @e[tag=sh_atk,dx=4, dy=4, dz=4] at @s run effect give @s[tag=sh_atk_undead] instant_health 1 1 true
execute if data storage sculk_hive:data {world:{difficulty:1}} positioned ~-1.9 ~-1.9 ~-1.9 as @e[tag=sh_atk,dx=2.8, dy=2.8, dz=2.8] at @s run effect give @s[tag=sh_atk_undead] instant_health 1 0 true
execute if data storage sculk_hive:data {world:{difficulty:2}} positioned ~-2.25 ~-2.25 ~-2.25 as @e[tag=sh_atk,dx=3.5, dy=3.5, dz=3.5, type=armor_stand] at @s run function sculk_hive:behavior/general/de_armor
execute if data storage sculk_hive:data {world:{difficulty:3}} positioned ~-2.5 ~-2.5 ~-2.5 as @e[tag=sh_atk,dx=4, dy=4, dz=4, type=armor_stand] at @s run function sculk_hive:behavior/general/de_armor
execute if data storage sculk_hive:data {world:{difficulty:1}} positioned ~-1.9 ~-1.9 ~-1.9 as @e[tag=sh_atk,dx=2.8, dy=2.8, dz=2.8, type=armor_stand] at @s run function sculk_hive:behavior/general/de_armor

execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[tag=sh_atk,dx=4, dy=4, dz=4] at @s run function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/soul_attack

execute if data storage sculk_hive:data {world:{difficulty:3}} align xyz positioned ~0.5 ~ ~0.5 run function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/fire/soul_init
execute if data storage sculk_hive:data {world:{difficulty:2}} align xyz positioned ~0.5 ~ ~0.5 run function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/fire/soul_init
execute if data storage sculk_hive:data {world:{difficulty:1}} if predicate sculk_hive:chance/08 align xyz positioned ~0.5 ~ ~0.5 run function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/fire/soul_init