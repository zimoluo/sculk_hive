execute if score @s sh_chit_timer matches 1.. run scoreboard players remove @s sh_chit_timer 1
tp @s ~ ~0.1 ~

execute positioned ~ ~ ~ unless block ~ ~ ~ #sculk_hive:immune_beam run function sculk_hive:behavior/secret_phase/chibaku_tensei/destroy_block
execute positioned ~1 ~ ~ unless block ~ ~ ~ #sculk_hive:immune_beam run function sculk_hive:behavior/secret_phase/chibaku_tensei/destroy_block
execute positioned ~-1 ~ ~ unless block ~ ~ ~ #sculk_hive:immune_beam run function sculk_hive:behavior/secret_phase/chibaku_tensei/destroy_block
execute positioned ~ ~ ~1 unless block ~ ~ ~ #sculk_hive:immune_beam run function sculk_hive:behavior/secret_phase/chibaku_tensei/destroy_block
execute positioned ~ ~ ~-1 unless block ~ ~ ~ #sculk_hive:immune_beam run function sculk_hive:behavior/secret_phase/chibaku_tensei/destroy_block
execute positioned ~1 ~ ~1 unless block ~ ~ ~ #sculk_hive:immune_beam run function sculk_hive:behavior/secret_phase/chibaku_tensei/destroy_block
execute positioned ~-1 ~ ~1 unless block ~ ~ ~ #sculk_hive:immune_beam run function sculk_hive:behavior/secret_phase/chibaku_tensei/destroy_block
execute positioned ~1 ~ ~-1 unless block ~ ~ ~ #sculk_hive:immune_beam run function sculk_hive:behavior/secret_phase/chibaku_tensei/destroy_block
execute positioned ~-1 ~ ~-1 unless block ~ ~ ~ #sculk_hive:immune_beam run function sculk_hive:behavior/secret_phase/chibaku_tensei/destroy_block
execute positioned ~ ~1 ~ unless block ~ ~ ~ #sculk_hive:immune_beam run function sculk_hive:behavior/secret_phase/chibaku_tensei/destroy_block
execute positioned ~1 ~1 ~ unless block ~ ~ ~ #sculk_hive:immune_beam run function sculk_hive:behavior/secret_phase/chibaku_tensei/destroy_block
execute positioned ~-1 ~1 ~ unless block ~ ~ ~ #sculk_hive:immune_beam run function sculk_hive:behavior/secret_phase/chibaku_tensei/destroy_block
execute positioned ~ ~1 ~1 unless block ~ ~ ~ #sculk_hive:immune_beam run function sculk_hive:behavior/secret_phase/chibaku_tensei/destroy_block
execute positioned ~ ~1 ~-1 unless block ~ ~ ~ #sculk_hive:immune_beam run function sculk_hive:behavior/secret_phase/chibaku_tensei/destroy_block
execute positioned ~1 ~1 ~1 unless block ~ ~ ~ #sculk_hive:immune_beam run function sculk_hive:behavior/secret_phase/chibaku_tensei/destroy_block
execute positioned ~-1 ~1 ~1 unless block ~ ~ ~ #sculk_hive:immune_beam run function sculk_hive:behavior/secret_phase/chibaku_tensei/destroy_block
execute positioned ~1 ~1 ~-1 unless block ~ ~ ~ #sculk_hive:immune_beam run function sculk_hive:behavior/secret_phase/chibaku_tensei/destroy_block
execute positioned ~-1 ~1 ~-1 unless block ~ ~ ~ #sculk_hive:immune_beam run function sculk_hive:behavior/secret_phase/chibaku_tensei/destroy_block

execute if predicate sculk_hive:chance/08 run particle soul_fire_flame ~ ~ ~ 0.22 0.22 0.22 0.000001 5

execute if score @s sh_chit_timer matches 0 run function sculk_hive:behavior/secret_phase/chibaku_tensei/ready_for_stage2