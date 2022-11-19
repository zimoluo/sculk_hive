setblock ~ ~1 ~ air
playsound block.fire.extinguish hostile @a ~ ~1 ~ 0.5
execute if block ~ ~ ~ #soul_fire_base_blocks run setblock ~ ~ ~ sculk
kill @s