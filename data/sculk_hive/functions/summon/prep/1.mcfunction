fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 air replace soul_fire

execute as @a[tag=sh_eff, distance=..64] at @s anchored eyes run particle minecraft:flash ^ ^ ^ 0.2 0.2 0.2 0.0001 10 force @s
particle minecraft:flash ~ ~ ~ 0.5 0.5 0.5 0.0001 25 force
playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~ 4.5
playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~ 4.5
playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~ 4.5