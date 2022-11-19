particle minecraft:explosion_emitter ~ ~0.8 ~ 0.001 0.001 0.001 0.0001 1 force
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 4.5 0.8
playsound minecraft:entity.vex.death hostile @a ~ ~ ~ 4.5 0.6
execute if predicate sculk_hive:chance/05 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 4.5

particle end_rod ~ ~1.1 ~ 0.85 0.85 0.85 0.35 15 force
particle soul_fire_flame ~ 1.1 ~ 0.85 0.85 0.85 0.35 15 force