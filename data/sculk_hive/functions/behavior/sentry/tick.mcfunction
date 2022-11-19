execute if score @s sh_boom_cd matches 0.. run scoreboard players remove @s sh_boom_cd 1

execute if score @s sh_boom_cd matches 51..120 positioned ~ ~1.2 ~ if entity @e[tag=sh_atk, distance=..10] run function sculk_hive:behavior/sentry/shoot_prep_minor
execute if score @s sh_boom_cd matches 30 positioned ~ ~1.2 ~ if entity @e[tag=sh_atk, distance=..10] run playsound minecraft:entity.warden.sonic_charge hostile @a ~ ~ ~ 3.5 1.8
execute if score @s sh_boom_cd matches 1..60 positioned ~ ~1.2 ~ if entity @e[tag=sh_atk, distance=..10] run function sculk_hive:behavior/sentry/shoot_prep
execute if score @s sh_boom_cd matches 0 positioned ~ ~0.8 ~ if entity @e[tag=sh_atk, distance=..10] run function sculk_hive:behavior/sentry/shoot
execute if score @s sh_boom_cd matches 0 run function sculk_hive:behavior/sentry/reset_cd

execute positioned ~ ~0.8 ~ unless entity @e[tag=sh_atk, distance=..10] run function sculk_hive:behavior/sentry/reset_cd