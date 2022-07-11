scoreboard players reset @s sh_boom_cd

tp @s ^ ^ ^1

execute unless entity @e[tag=sh_main,distance=..64] run kill @s

particle minecraft:sonic_boom ^ ^ ^ 0.0001 0.0001 0.0001 1 1 force
particle minecraft:sonic_boom ^1.75 ^ ^ 0.0001 0.0001 0.0001 1 1 force
particle minecraft:sonic_boom ^-1.75 ^ ^ 0.0001 0.0001 0.0001 1 1 force

execute positioned ~-1.75 ~-1 ~-1.75 as @e[tag=sh_atk, dx=2.5, dz=2.5, dy=1] at @s run effect give @s darkness 20 0 true
execute positioned ~-1.75 ~-1 ~-1.75 as @e[tag=sh_atk, dx=2.5, dz=2.5, dy=1] at @s run effect give @s wither 25 1
execute positioned ~-1.75 ~-1 ~-1.75 as @e[tag=sh_atk, dx=2.5, dz=2.5, dy=1] at @s run effect give @s weakness 10 1
execute positioned ~-1.75 ~-1 ~-1.75 as @e[tag=sh_atk, dx=2.5, dz=2.5, dy=1] at @s run effect give @s slowness 10 1
execute positioned ~-1.75 ~-1 ~-1.75 as @e[tag=sh_atk, dx=2.5, dz=2.5, dy=1] at @s if entity @s[tag=sh_atk_undead] run effect give @s instant_health 1 1 true
execute positioned ~-1.75 ~-1 ~-1.75 as @e[tag=sh_atk, dx=2.5, dz=2.5, dy=1] at @s if entity @s[tag=sh_atk_normal] run effect give @s instant_damage 1 1 true
execute positioned ~-1.75 ~-1 ~-1.75 as @e[tag=sh_atk, dx=2.5, dz=2.5, dy=1] at @s if entity @s[type=armor_stand] run function sculk_hive:behavior/general/de_armor


execute unless entity @e[tag=sh_spr_tgt,distance=..1.6] at @s run function sculk_hive:behavior/laser/beam
execute if entity @e[tag=sh_spr_tgt,distance=..1.6] as @e[tag=sh_main, limit=1, sort=nearest] at @s run function sculk_hive:behavior/laser/contact
execute if entity @e[tag=sh_spr_tgt,distance=..1.6] run kill @s

