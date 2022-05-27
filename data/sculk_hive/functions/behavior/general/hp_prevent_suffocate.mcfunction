execute positioned ~1 ~ ~ unless block ~ ~ ~ #sculk_hive:non-full unless block ~ ~ ~ #sculk_hive:immune_place_body run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~ ~ unless block ~ ~ ~ #sculk_hive:non-full unless block ~ ~ ~ #sculk_hive:immune_place_body run setblock ~ ~ ~ air destroy
execute positioned ~ ~ ~1 unless block ~ ~ ~ #sculk_hive:non-full unless block ~ ~ ~ #sculk_hive:immune_place_body run setblock ~ ~ ~ air destroy
execute positioned ~ ~ ~-1 unless block ~ ~ ~ #sculk_hive:non-full unless block ~ ~ ~ #sculk_hive:immune_place_body run setblock ~ ~ ~ air destroy
execute positioned ~1 ~ ~1 unless block ~ ~ ~ #sculk_hive:non-full unless block ~ ~ ~ #sculk_hive:immune_place_body run setblock ~ ~ ~ air destroy
execute positioned ~1 ~ ~-1 unless block ~ ~ ~ #sculk_hive:non-full unless block ~ ~ ~ #sculk_hive:immune_place_body run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~ ~1 unless block ~ ~ ~ #sculk_hive:non-full unless block ~ ~ ~ #sculk_hive:immune_place_body run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~ ~-1 unless block ~ ~ ~ #sculk_hive:non-full unless block ~ ~ ~ #sculk_hive:immune_place_body run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~ unless block ~ ~ ~ #sculk_hive:non-full unless block ~ ~ ~ #sculk_hive:immune_place_body run setblock ~ ~ ~ air destroy
execute positioned ~1 ~1 ~ unless block ~ ~ ~ #sculk_hive:non-full unless block ~ ~ ~ #sculk_hive:immune_place_body run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~1 unless block ~ ~ ~ #sculk_hive:non-full unless block ~ ~ ~ #sculk_hive:immune_place_body run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~1 ~ unless block ~ ~ ~ #sculk_hive:non-full unless block ~ ~ ~ #sculk_hive:immune_place_body run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~-1 unless block ~ ~ ~ #sculk_hive:non-full unless block ~ ~ ~ #sculk_hive:immune_place_body run setblock ~ ~ ~ air destroy
execute positioned ~1 ~1 ~1 unless block ~ ~ ~ #sculk_hive:non-full unless block ~ ~ ~ #sculk_hive:immune_place_body run setblock ~ ~ ~ air destroy
execute positioned ~1 ~1 ~-1 unless block ~ ~ ~ #sculk_hive:non-full unless block ~ ~ ~ #sculk_hive:immune_place_body run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~1 ~1 unless block ~ ~ ~ #sculk_hive:non-full unless block ~ ~ ~ #sculk_hive:immune_place_body run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~1 ~-1 unless block ~ ~ ~ #sculk_hive:non-full unless block ~ ~ ~ #sculk_hive:immune_place_body run setblock ~ ~ ~ air destroy

execute positioned ~ ~-1 ~ if block ~ ~ ~ moving_piston run setblock ~ ~ ~ air destroy
execute positioned ~1 ~-1 ~ if block ~ ~ ~ moving_piston run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ moving_piston run setblock ~ ~ ~ air destroy
execute positioned ~ ~-1 ~1 if block ~ ~ ~ moving_piston run setblock ~ ~ ~ air destroy
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ moving_piston run setblock ~ ~ ~ air destroy
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ moving_piston run setblock ~ ~ ~ air destroy
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ moving_piston run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ moving_piston run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ moving_piston run setblock ~ ~ ~ air destroy

data merge entity @s {Motion:[0.0d, 0.0d, 0.0d]}