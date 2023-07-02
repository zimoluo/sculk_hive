execute if predicate sculk_hive:chance/033 run particle dust 1 0.843137 0 1 ~ ~0.9 ~ 0.3 0.5 0.3 0.0001 3 force

execute if score @s sh_midas_tick matches 0.. run function sculk_hive:behavior/midas/effect/clear

execute if data entity @s {OnGround:1b} positioned ~ ~-1 ~ unless block ~ ~ ~ #sculk_hive:immune_gold if predicate sculk_hive:behavior/is_exposed run function sculk_hive:behavior/midas/arrow/decide_gold

execute positioned ~-1.5 ~-1 ~-1.5 as @e[tag=!sh_part,tag=!sh_midas,type=!player, dx=2, dz=2, dy=3,type=!#sculk_hive:non-mob] at @s if score @s sh_midas_tick matches 0.. run function sculk_hive:behavior/midas/effect/gain_tick_only
execute positioned ~-1.5 ~-1 ~-1.5 as @e[tag=!sh_part,tag=!sh_midas,type=!player, dx=2, dz=2, dy=3,type=!#sculk_hive:non-mob] at @s unless score @s sh_midas_tick matches 0.. run function sculk_hive:behavior/midas/effect/gain
execute positioned ~-1.5 ~-1 ~-1.5 as @a[gamemode=!creative, gamemode=!spectator, dx=2, dz=2, dy=3] at @s if score @s sh_midas_tick matches 0.. run function sculk_hive:behavior/midas/effect/gain_tick_only
execute positioned ~-1.5 ~-1 ~-1.5 as @a[gamemode=!creative, gamemode=!spectator, dx=2, dz=2, dy=3] at @s unless score @s sh_midas_tick matches 0.. run function sculk_hive:behavior/midas/effect/gain