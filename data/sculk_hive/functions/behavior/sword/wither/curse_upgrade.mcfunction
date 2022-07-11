playsound minecraft:entity.allay.ambient_with_item hostile @a ~ ~ ~ 2 0.8
playsound minecraft:entity.allay.ambient_with_item hostile @a ~ ~ ~ 2 1.1
particle end_rod ~ ~ ~ 0.9 0.2 0.9 0.0001 15 force
particle enchant ~ ~ ~ 0.9 0.2 0.9 0.0001 15 force
particle enchanted_hit ~ ~ ~ 0.9 0.2 0.9 0.0001 15 force

execute positioned ~-2.4 ~-0.75 ~-2.4 as @e[tag=sh_victim,dx=3.8,dy=0.5,dz=3.8] run effect give @s wither 8 1 false
execute positioned ~-2.4 ~-0.75 ~-2.4 as @e[tag=sh_victim,dx=3.8,dy=0.5,dz=3.8] run effect give @s weakness 7 1 false
execute positioned ~-2.4 ~-0.75 ~-2.4 as @e[tag=sh_victim,dx=3.8,dy=0.5,dz=3.8] run effect give @s slowness 7 2 false