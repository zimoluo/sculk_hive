playsound minecraft:entity.warden.attack_impact hostile @a ~ ~ ~ 2 1.4
particle sculk_soul ~ ~ ~ 0.8 0.18 0.8 0.0001 15 force
particle soul_fire_flame ~ ~ ~ 0.8 0.18 0.8 0.0001 8 force

execute positioned ~-2.25 ~-0.5 ~-2.25 as @e[tag=sh_victim,dx=3.5,dy=0,dz=3.5] run effect give @s wither 3 1 false
execute positioned ~-2.25 ~-0.5 ~-2.25 as @e[tag=sh_victim,dx=3.5,dy=0,dz=3.5] run effect give @s weakness 2 0 false
execute positioned ~-2.25 ~-0.5 ~-2.25 as @e[tag=sh_victim,dx=3.5,dy=0,dz=3.5] run effect give @s slowness 3 1 false