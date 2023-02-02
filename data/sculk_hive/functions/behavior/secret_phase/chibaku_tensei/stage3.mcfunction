execute as @e[tag=sh_atk, distance=..64] at @s anchored eyes if entity @e[tag=sh_chit, distance=..5.5] run function sculk_hive:behavior/secret_phase/chibaku_tensei/tractor_beam/sphere_absorb
execute as @e[tag=sh_attracted, tag=sh_atk, type=!player, distance=..64, tag=!sh_scheduled_delete] at @s anchored eyes if entity @e[tag=sh_chit, distance=..1] run function sculk_hive:behavior/secret_phase/chibaku_tensei/tractor_beam/damage_mob
execute as @a[tag=sh_attracted, tag=sh_atk, distance=..64] at @s anchored eyes if entity @e[tag=sh_chit, distance=..3.5] run function sculk_hive:behavior/secret_phase/chibaku_tensei/tractor_beam/damage_player


execute as @e[tag=sh_attracted] at @s run function sculk_hive:behavior/secret_phase/chibaku_tensei/tractor_beam/attract


execute unless score @s sh_chit_timer matches 0.. run function sculk_hive:behavior/secret_phase/chibaku_tensei/reset_bombard
execute if score @s sh_chit_timer matches 0.. run scoreboard players remove @s sh_chit_timer 1

execute if score @s sh_chit_timer matches 0 run function sculk_hive:behavior/secret_phase/chibaku_tensei/bombard/init


execute unless score @s sh_darkness_timer matches 0.. run scoreboard players set @s sh_darkness_timer 80
execute if score @s sh_darkness_timer matches 0.. run scoreboard players remove @s sh_darkness_timer 1
execute if score @s sh_darkness_timer matches 0 as @e[tag=sh_main,limit=1,sort=nearest] at @s as @a[tag=sh_atk, distance=..64, predicate=!sculk_hive:behavior/has_night_vision] run effect give @s darkness 10 0 true
execute as @e[tag=sh_main,limit=1,sort=nearest] at @s as @a[tag=sh_atk, distance=..64, predicate=sculk_hive:behavior/has_night_vision] run effect clear @s darkness

execute as @e[tag=sh_main,limit=1,sort=nearest] at @s if score @s sh_phase_cd matches 311.. as @e[tag=sh_atk, distance=32..64] run function sculk_hive:behavior/secret_phase/chibaku_tensei/prevent_escape