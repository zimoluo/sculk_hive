playsound minecraft:entity.illusioner.cast_spell player @a ~ ~ ~ 2 1.18
playsound minecraft:entity.splash_potion.break player @a ~ ~ ~ 2 1.3

particle entity_effect ~0.031 ~ ~-0.766 78 147 49 0.352 0 force
particle entity_effect ~-0.676 ~ ~1.093 78 147 49 0.352 0 force
particle entity_effect ~1.457 ~ ~0.624 78 147 49 0.352 0 force
particle entity_effect ~1.134 ~ ~-1.495 78 147 49 0.352 0 force
particle entity_effect ~-0.848 ~ ~-0.215 78 147 49 0.352 0 force
particle entity_effect ~0.014 ~ ~0.01 78 147 49 0.352 0 force
particle entity_effect ~0.55 ~ ~0.214 78 147 49 0.352 0 force
particle entity_effect ~0.892 ~ ~0.783 78 147 49 0.352 0 force
particle entity_effect ~0.003 ~ ~-0.081 78 147 49 0.352 0 force
particle entity_effect ~-0.021 ~ ~-0.11 78 147 49 0.352 0 force
particle entity_effect ~1.695 ~ ~-0.764 78 147 49 0.352 0 force
particle entity_effect ~0.224 ~ ~-0.513 78 147 49 0.352 0 force
particle entity_effect ~-1.594 ~ ~0.97 78 147 49 0.352 0 force
particle entity_effect ~-0.179 ~ ~2.218 78 147 49 0.352 0 force
particle entity_effect ~-0.089 ~ ~-0.032 78 147 49 0.352 0 force
particle entity_effect ~-0.866 ~ ~0.228 78 147 49 0.352 0 force
particle entity_effect ~-0.358 ~ ~0.055 78 147 49 0.352 0 force
particle entity_effect ~0.06 ~ ~1.845 78 147 49 0.352 0 force
particle entity_effect ~-1.149 ~ ~0.868 78 147 49 0.352 0 force
particle entity_effect ~-0.407 ~ ~-0.109 78 147 49 0.352 0 force
particle entity_effect ~0.319 ~ ~-0.265 78 147 49 0.352 0 force
particle entity_effect ~1.248 ~ ~0.878 78 147 49 0.352 0 force
particle entity_effect ~-0.043 ~ ~0.395 78 147 49 0.352 0 force
particle entity_effect ~0.34 ~ ~-1.011 78 147 49 0.352 0 force
particle entity_effect ~-1.458 ~ ~1.693 78 147 49 0.352 0 force
particle entity_effect ~0.305 ~ ~-0.61 78 147 49 0.352 0 force
particle entity_effect ~-0.05 ~ ~0.993 78 147 49 0.352 0 force
particle entity_effect ~-0.566 ~ ~-1.297 78 147 49 0.352 0 force
particle entity_effect ~0.114 ~ ~2.025 78 147 49 0.352 0 force
particle entity_effect ~0.92 ~ ~-1.298 78 147 49 0.352 0 force
particle entity_effect ~-0.29 ~ ~0.456 78 147 49 0.352 0 force
particle entity_effect ~-0.01 ~ ~0.007 78 147 49 0.352 0 force
particle entity_effect ~0.745 ~ ~0.865 78 147 49 0.352 0 force
particle entity_effect ~0.336 ~ ~0.159 78 147 49 0.352 0 force
particle entity_effect ~0.543 ~ ~0.049 78 147 49 0.352 0 force
particle entity_effect ~1.016 ~ ~-0.33 78 147 49 0.352 0 force
particle entity_effect ~-0.337 ~ ~-1.074 78 147 49 0.352 0 force
particle entity_effect ~0.134 ~ ~-0.979 78 147 49 0.352 0 force
particle entity_effect ~0.013 ~ ~-0.006 78 147 49 0.352 0 force
particle entity_effect ~-0.797 ~ ~-0.619 78 147 49 0.352 0 force

particle dust 0.686 1 0.373 1 ~ ~ ~ 0.8 0.18 0.8 0.0001 40

execute positioned ~-2.25 ~-0.5 ~-2.25 as @e[tag=sh_victim,dx=3.5,dy=0,dz=3.5] run effect give @s poison 8 0 false