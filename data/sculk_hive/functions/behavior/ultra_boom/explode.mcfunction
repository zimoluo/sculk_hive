playsound minecraft:entity.warden.sonic_boom hostile @a ~ ~ ~ 4 1.5
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 4 0.8

execute positioned ~-3 ~-2.5 ~-3 as @e[tag=sh_atk, dx=6, dz=6, dy=4] at @s if entity @s[tag=sh_atk_normal] run effect give @s instant_damage 1 1 true
execute positioned ~-3 ~-2.5 ~-3 as @e[tag=sh_atk, dx=6, dz=6, dy=4] at @s if entity @s[tag=sh_atk_undead] run effect give @s instant_health 1 1 true
execute positioned ~-3 ~-2.5 ~-3 as @e[tag=sh_atk, dx=6, dz=6, dy=4] at @s if entity @s[type=armor_stand] run function sculk_hive:behavior/general/de_armor

execute positioned ~-3 ~-2.5 ~-3 as @e[tag=sh_atk, dx=6, dz=6, dy=4] at @s run effect give @s darkness 20 0 true
execute positioned ~-3 ~-2.5 ~-3 as @e[tag=sh_atk, dx=6, dz=6, dy=4] at @s run effect give @s wither 25 1
execute positioned ~-3 ~-2.5 ~-3 as @e[tag=sh_atk, dx=6, dz=6, dy=4] at @s run effect give @s weakness 10 1
execute positioned ~-3 ~-2.5 ~-3 as @e[tag=sh_atk, dx=6, dz=6, dy=4] at @s run effect give @s slowness 10 1

particle minecraft:sonic_boom ~ ~ ~ 1.5 0.8 1.5 1 25 force
particle minecraft:sculk_soul ~ ~ ~ 1.5 0.8 1.5 0.0001 150 force
particle minecraft:soul_fire_flame ~ ~ ~ 1.5 0.8 1.5 0.1 150 force


kill @s