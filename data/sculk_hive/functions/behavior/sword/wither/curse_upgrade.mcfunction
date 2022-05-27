playsound minecraft:entity.allay.ambient_with_item hostile @a ~ ~ ~ 2 0.8
playsound minecraft:entity.allay.ambient_with_item hostile @a ~ ~ ~ 2 0.8
particle end_rod ~ ~ ~ 1.1 0.2 1.1 0.0001 15 force
particle enchant ~ ~ ~ 1.1 0.2 1.1 0.0001 15 force
particle enchanted_hit ~ ~ ~ 1.1 0.2 1.1 0.0001 15 force
particle flame ~ ~ ~ 1.1 0.2 1.1 0.0001 8 force

execute positioned ~-2.6 ~-1 ~-2.6 as @e[type=#sculk_hive:monster,dx=4.2,dy=1,dz=4.2] run effect give @s wither 8 1 false
execute positioned ~-2.6 ~-1 ~-2.6 as @e[type=#sculk_hive:monster,dx=4.2,dy=1,dz=4.2] run effect give @s weakness 7 1 false
execute positioned ~-2.6 ~-1 ~-2.6 as @e[type=#sculk_hive:monster,dx=4.2,dy=1,dz=4.2] run effect give @s slowness 7 2 false