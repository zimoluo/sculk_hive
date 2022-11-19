playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 3.5 0.9
particle minecraft:sculk_soul ~ ~0.8 ~ 1 1 1 0.00001 30 force
particle minecraft:soul_fire_flame ~ ~0.8 ~ 1 1 1 0.00001 30 force

function sculk_hive:behavior/sentry/reset_cd

tag @s remove sh_kck