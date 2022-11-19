fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 sculk replace #soul_fire_base_blocks

execute as @a[tag=sh_eff, distance=..64] at @s anchored eyes run particle minecraft:flash ^ ^ ^ 0.2 0.2 0.2 0.0001 10 force @s
particle minecraft:flash ~ ~ ~ 0.5 0.5 0.5 0.0001 25 force
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 4.5 1

summon marker ~ ~-2 ~ {Tags:["sh_part", "sh_shd"]}