particle minecraft:explosion_emitter ~ ~ ~ 0.001 0.001 0.001 0.0001 1 force
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 0.8
execute if predicate sculk_hive:chance/05 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2