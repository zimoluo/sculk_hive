setblock ~ ~ ~ sculk
execute if block ~ ~1 ~ sculk_vein[waterlogged=true] run setblock ~ ~1 ~ water
execute if block ~ ~1 ~ sculk_vein[waterlogged=false] run setblock ~ ~1 ~ air
particle sculk_charge_pop ~ ~1 ~ 0.2 0.1 0.2 0.0001 6 force
playsound minecraft:block.sculk.charge hostile @a ~ ~ ~ 4
playsound minecraft:block.sculk_catalyst.bloom hostile @a ~ ~ ~ 4
playsound minecraft:block.sculk.spread hostile @a ~ ~ ~ 4
execute positioned ~1 ~ ~ run function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/fire/place_vein
execute positioned ~-1 ~ ~ run function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/fire/place_vein
execute positioned ~ ~ ~1 run function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/fire/place_vein
execute positioned ~ ~ ~-1 run function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/fire/place_vein
execute positioned ~ ~ ~ run function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/fire/place_vein
execute positioned ~1 ~1 ~ run function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/fire/place_vein
execute positioned ~-1 ~1 ~ run function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/fire/place_vein
execute positioned ~ ~1 ~1 run function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/fire/place_vein
execute positioned ~ ~1 ~-1 run function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/fire/place_vein
execute positioned ~1 ~-1 ~ run function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/fire/place_vein
execute positioned ~-1 ~-1 ~ run function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/fire/place_vein
execute positioned ~ ~-1 ~1 run function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/fire/place_vein
execute positioned ~ ~-1 ~-1 run function sculk_hive:behavior/secret_phase/chibaku_tensei/parabola/fire/place_vein