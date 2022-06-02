execute as @e[tag=sh_atk, distance=..64, type=!player] run function sculk_hive:behavior/attack/detect/mob/stationary
execute as @a[tag=sh_atk, distance=..64] run function sculk_hive:behavior/attack/detect/player/moving_detection

execute if entity @s[tag=!sh_2nd] as @e[tag=sh_sta, tag=!sh_bite, distance=..64] at @s if block ~ ~-1 ~ #sculk_hive:sculk_full run function sculk_hive:behavior/attack/bite/init
execute if entity @s[tag=!sh_2nd] as @e[tag=sh_sta, tag=sh_bite, distance=..64] at @s run function sculk_hive:behavior/attack/bite/cd

execute if entity @s[tag=!sh_2nd] if score @s sh_bossfight matches 800.. as @e[tag=sh_sta, tag=!sh_boomed, distance=..64] at @s unless block ~ ~-1 ~ #sculk_hive:sculk_full run function sculk_hive:behavior/attack/get_boom/init
execute if entity @s[tag=!sh_2nd] if score @s sh_bossfight matches 800.. as @e[tag=sh_sta, tag=sh_boomed, distance=..64] at @s run function sculk_hive:behavior/attack/get_boom/cd

execute if entity @s[tag=!sh_2nd] as @e[tag=sh_bite, tag=!sh_sta, distance=..64] run tag @s remove sh_bite
execute if entity @s[tag=!sh_2nd] as @e[tag=sh_boomed, tag=!sh_sta, distance=..64] run tag @s remove sh_boomed

execute if entity @s[tag=!sh_2nd] as @e[tag=!sh_boomed,tag=sh_atk, distance=..64] run scoreboard players set @s sh_boom_cd 0
execute if entity @s[tag=!sh_2nd] as @e[tag=!sh_bite,tag=sh_atk, distance=..64] run scoreboard players set @s sh_bite_cd 0


execute if entity @s[tag=!sh_2nd] if entity @s[tag=!sh_raged] if entity @e[tag=sh_cat, distance=..64] unless entity @e[tag=sh_cat_top, distance=..64] run function sculk_hive:behavior/attack/rage/trigger