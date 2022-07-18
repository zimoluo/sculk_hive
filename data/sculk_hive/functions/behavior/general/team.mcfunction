team join sculk_hive @e[tag=sh_part,team=!sculk_hive]

execute as @e[type=warden] at @s if entity @e[tag=sh_main, distance=..64] run team join sculk_hive @s
execute as @e[type=warden] at @s unless entity @e[tag=sh_main, distance=..64] run team leave @s

execute as @e[tag=sh_guard] at @s if entity @e[tag=sh_main, distance=..64] run team join sculk_hive @s
execute as @e[tag=sh_guard] at @s unless entity @e[tag=sh_main, distance=..64] run team leave @s