playsound minecraft:entity.warden.attack_impact hostile @a ~ ~ ~ 2 1.4
particle sculk_soul ~ ~ ~ 0.8 0.2 0.8 0.0001 15 force
particle soul_fire_flame ~ ~ ~ 0.8 0.2 0.8 0.0001 8 force

execute positioned ~-2.25 ~-1 ~-2.25 as @e[type=#sculk_hive:monster,dx=3.5,dy=1,dz=3.5] run effect give @s wither 5 1 false
execute positioned ~-2.25 ~-1 ~-2.25 as @e[type=#sculk_hive:monster,dx=3.5,dy=1,dz=3.5] run effect give @s weakness 4 0 false
execute positioned ~-2.25 ~-1 ~-2.25 as @e[type=#sculk_hive:monster,dx=3.5,dy=1,dz=3.5] run effect give @s slowness 5 1 false