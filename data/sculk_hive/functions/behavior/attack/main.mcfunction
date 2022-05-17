execute as @e[tag=sh_atk] run function sculk_hive:behavior/attack/detect/stationary

execute if entity @s[tag=!sh_2nd] as @e[tag=sh_sta, tag=!sh_bite] at @s if block ~ ~-1 ~ #sculk_hive:sculk_full run function sculk_hive:behavior/attack/bite/init
execute if entity @s[tag=!sh_2nd] as @e[tag=sh_sta, tag=sh_bite] at @s run function sculk_hive:behavior/attack/bite/cd

execute if entity @s[tag=!sh_2nd] if score @s sh_bossfight matches 800.. as @e[tag=sh_sta, tag=!sh_boomed] at @s unless block ~ ~-1 ~ #sculk_hive:sculk_full run function sculk_hive:behavior/attack/get_boom/init
execute if entity @s[tag=!sh_2nd] if score @s sh_bossfight matches 800.. as @e[tag=sh_sta, tag=sh_boomed] at @s run function sculk_hive:behavior/attack/get_boom/cd

execute if entity @s[tag=!sh_2nd] as @e[tag=sh_bite, tag=!sh_sta] run tag @s remove sh_bite
execute if entity @s[tag=!sh_2nd] as @e[tag=sh_boomed, tag=!sh_sta] run tag @s remove sh_boomed

execute if entity @s[tag=!sh_2nd] as @e[tag=!sh_boomed,tag=sh_atk] run scoreboard players set @s sh_boom_cd 0
execute if entity @s[tag=!sh_2nd] as @e[tag=!sh_bite,tag=sh_atk] run scoreboard players set @s sh_bite_cd 0


execute if entity @s[tag=!sh_2nd] if entity @s[tag=!sh_raged] if entity @e[tag=sh_cat] unless entity @e[tag=sh_cat_top] run function sculk_hive:behavior/attack/rage/trigger