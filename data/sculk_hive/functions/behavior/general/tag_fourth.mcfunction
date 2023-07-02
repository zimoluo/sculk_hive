execute as @a[gamemode=!creative,gamemode=!spectator] at @s if entity @e[tag=sh_fourth, distance=..40] if entity @e[tag=sh_chit, distance=..50] run tag @s add sh_atk

execute as @e[type=!player, type=!#sculk_hive:non-attack] at @s if entity @e[tag=sh_fourth,distance=..40] if entity @e[tag=sh_chit,distance=..50] run tag @s add sh_atk


execute as @e[tag=sh_atk] at @s if data entity @s {NoGravity:1b} if entity @e[tag=sh_fourth,distance=..40, scores={sh_dth_cd=120..}] run tag @s remove sh_atk
execute as @e[tag=sh_atk] at @s unless entity @e[tag=sh_fourth,distance=..40] unless entity @e[tag=sh_main,distance=..40] run tag @s remove sh_atk
