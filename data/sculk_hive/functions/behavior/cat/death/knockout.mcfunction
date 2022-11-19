particle soul_fire_flame ~ ~0.7 ~ 0.8 0.8 0.8 0.1 30 force
particle crit ~ ~0.7 ~ 0.8 0.8 0.8 0.1 50 force

playsound block.sculk_shrieker.shriek hostile @a ~ ~ ~ 3.5 1.2

tag @s remove sh_cat
tag @s add sh_kck

function sculk_hive:behavior/sentry/knocked/init