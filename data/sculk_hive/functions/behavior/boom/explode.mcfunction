playsound minecraft:entity.warden.sonic_boom hostile @a ~ ~ ~ 3.5 1.5

execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[tag=sh_atk, dx=4, dz=4, dy=4] at @s unless entity @s[type=armor_stand] run function sculk_hive:behavior/damage/boom_1
execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[tag=sh_atk, dx=4, dz=4, dy=4] at @s if entity @s[type=armor_stand] run function sculk_hive:behavior/general/de_armor

execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[tag=sh_atk, dx=4, dz=4, dy=4] at @s run effect give @s darkness 10 0 true
execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[tag=sh_atk, dx=4, dz=4, dy=4] at @s run effect give @s wither 6
execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[tag=sh_atk, dx=4, dz=4, dy=4] at @s run effect give @s weakness 6

particle minecraft:sonic_boom ~ ~ ~ 0.8 0.8 0.8 1 10 force

kill @s