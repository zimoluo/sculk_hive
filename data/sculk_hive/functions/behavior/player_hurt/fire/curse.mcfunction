playsound minecraft:entity.illusioner.cast_spell player @a ~ ~ ~ 2 0.8

particle dust 1 0.757 0.443 1 ~ ~ ~ 0.8 0.18 0.8 0.0001 40
particle flame ~ ~ ~ 0.91 0.2 0.91 0.0001 40
particle smoke ~ ~ ~ 0.91 0.2 0.91 0.0001 10

execute positioned ~-2.4 ~-0.6 ~-2.4 as @e[tag=sh_victim,dx=3.8,dy=0.2,dz=3.8] run function sculk_hive:behavior/player_hurt/fire/give_fire