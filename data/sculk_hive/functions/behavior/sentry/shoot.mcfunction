summon marker ~ ~1.2 ~ {Tags:["sh_part","sh_boom", "sh_boom_raw"]}
execute positioned ~ ~1.2 ~ run particle soul_fire_flame ~ ~ ~ 0.3 0.3 0.3 0.1 80 force
execute positioned ~ ~1.2 ~ run particle sculk_soul ~ ~ ~ 0.3 0.3 0.3 0.0001 40 force

playsound minecraft:entity.warden.sonic_boom hostile @a ~ ~ ~ 3.5 1.2

execute as @e[tag=sh_boom_raw] at @s run function sculk_hive:behavior/boom/init_2nd