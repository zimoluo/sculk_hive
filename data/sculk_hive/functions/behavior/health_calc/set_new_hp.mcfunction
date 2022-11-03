execute if entity @s[tag=sh_cat_hp, tag=!sh_cat_top_hp] as @e[tag=sh_main, limit=1, sort=nearest] at @s run function sculk_hive:behavior/health_calc/add_hp/cat
execute if entity @s[tag=sh_cat_top_hp] as @e[tag=sh_main, limit=1, sort=nearest] at @s run function sculk_hive:behavior/health_calc/add_hp/cat_top
execute if entity @s[tag=sh_sey_hp] as @e[tag=sh_main, limit=1, sort=nearest] at @s run function sculk_hive:behavior/health_calc/add_hp/sentry
execute if entity @s[tag=sh_final_hp, tag=!sh_secret_hp] as @e[tag=sh_main, limit=1, sort=nearest] at @s run function sculk_hive:behavior/health_calc/add_hp/final
execute if entity @s[tag=sh_secret_hp] as @e[tag=sh_main, limit=1, sort=nearest] at @s run function sculk_hive:behavior/health_calc/add_hp/secret

tag @s remove sh_hp_raw

execute store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run scoreboard players get @e[tag=sh_main,limit=1, sort=nearest] sh_dynamic_hp_entry
execute store result entity @s Health float 1 run scoreboard players get @e[tag=sh_main,limit=1, sort=nearest] sh_dynamic_hp_entry