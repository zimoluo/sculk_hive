tag @s add sh_midas_arrow_expired

function sculk_hive:behavior/midas/arrow/get_block_inside

playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 1.0 1.3
playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 1.0 1.5

data merge entity @s {life:600s}