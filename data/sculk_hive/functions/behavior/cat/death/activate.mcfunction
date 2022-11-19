particle sculk_soul ~ ~0.7 ~ 0.8 0.8 0.8 0.000001 30 force
particle soul_fire_flame ~ ~0.7 ~ 0.8 0.8 0.8 0.1 30 force

playsound block.sculk_shrieker.shriek hostile @a ~ ~ ~ 3.5 1.2
playsound minecraft:entity.warden.death hostile @a ~ ~ ~ 3.5 1.3

setblock ~ ~ ~ air destroy

particle block sculk_catalyst ~ ~0.8 ~ 0.7 0.7 0.7 0.00001 50 force

summon experience_orb ~0.1 ~0.5 ~ {Count:1, Value:15s}
summon experience_orb ~ ~0.5 ~0.1 {Count:1, Value:10s}
summon experience_orb ~-0.1 ~0.5 ~-0.1 {Count:1, Value:5s}

execute unless block ~ ~-1 ~ #sculk_hive:immune_spread run setblock ~ ~-1 ~ sculk
execute if block ~ ~-1 ~ #sculk_hive:immune_spread unless block ~ ~-1 ~ #sculk_hive:non-full unless block ~ ~-1 ~ #sculk_hive:non-full_top_surface unless block ~ ~-1 ~ #sculk_hive:sculk_full run setblock ~ ~ ~ sculk_vein[down=true,east=true,north=true,south=true,up=true,west=true]

kill @s