playsound minecraft:entity.warden.sonic_boom hostile @a ~ ~ ~ 2 1.5

execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[tag=sh_atk, dx=4, dz=4, dy=4] at @s if entity @s[tag=sh_atk_normal] run effect give @s instant_damage 1 1 true 
execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[tag=sh_atk, dx=4, dz=4, dy=4] at @s if entity @s[tag=sh_atk_undead] run effect give @s instant_health 1 1 true

execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[tag=sh_atk, dx=4, dz=4, dy=4] at @s run effect give @s darkness 15 0 true
execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[tag=sh_atk, dx=4, dz=4, dy=4] at @s run effect give @s wither 8 1
execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[tag=sh_atk, dx=4, dz=4, dy=4] at @s run effect give @s weakness 10 1
execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[tag=sh_atk, dx=4, dz=4, dy=4] at @s run effect give @s slowness 8

particle minecraft:sonic_boom ~ ~ ~ 0.8 0.8 0.8 1 10 force
particle minecraft:sculk_soul ~ ~ ~ 0.8 0.8 0.8 0.0001 50 force

kill @s