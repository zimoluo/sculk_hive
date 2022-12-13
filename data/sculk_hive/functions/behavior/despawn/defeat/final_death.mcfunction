
particle minecraft:sculk_charge_pop ~ ~ ~ 1 1 1 0.0001 200 force
particle minecraft:sculk_soul ~ ~ ~ 1 1 1 0.0001 100 force

particle minecraft:sculk_soul ~ ~ ~ 3 1 3 0.0001 500 force

summon experience_orb ~0.1 ~1.5 ~ {Count:1, Value:100s}
summon experience_orb ~ ~1.5 ~0.1 {Count:1, Value:100s}
summon experience_orb ~-0.1 ~1.5 ~-0.1 {Count:1, Value:50s}
summon experience_orb ~-0.1 ~1.5 ~ {Count:1, Value:25s}
summon experience_orb ~ ~1.5 ~-0.1 {Count:1, Value:25s}

effect clear @a[tag=sh_atk, distance=..64] darkness
effect clear @a[tag=sh_eff, distance=..64] darkness

effect clear @e[tag=sh_atk, distance=..64] wither
effect clear @e[tag=sh_atk, distance=..64] darkness
effect clear @e[tag=sh_atk, distance=..64] slowness
effect clear @e[tag=sh_atk, distance=..64] mining_fatigue
effect clear @e[tag=sh_atk, distance=..64] weakness

tag @s add sh_temp_8
execute as @e[tag=sh_corrupted,distance=..256] at @s unless entity @e[tag=sh_main,tag=!sh_temp_8] run function sculk_hive:behavior/vestige/purification/purify
execute as @e[tag=sh_guard_corrupted,distance=..256, tag=!sh_guard_despawn] at @s unless entity @e[tag=sh_main,tag=!sh_temp_8] run function sculk_hive:behavior/vestige/purification/purify
tag @s remove sh_temp_8

execute as @a[distance=..32] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 4.5

advancement grant @a[distance=..32,advancements={adventure/kill_sculk_hive=false}] only adventure/kill_sculk_hive
scoreboard players add @a[distance=..32] sh_boss_beaten 1

execute as @a[distance=..32] if score @s sh_boss_beaten matches 30.. unless entity @s[advancements={adventure/sculk_dedication=true}] run advancement grant @s only adventure/sculk_dedication

fill ~ ~ ~ ~ ~ ~ air replace sculk_shrieker[waterlogged=false]
fill ~ ~ ~ ~ ~ ~ water replace sculk_shrieker[waterlogged=true]

execute positioned ~ ~-2 ~ run function sculk_hive:behavior/general/shrieker_destroy
execute positioned ~15 ~-2 ~ run function sculk_hive:behavior/general/shrieker_destroy
execute positioned ~-15 ~-2 ~ run function sculk_hive:behavior/general/shrieker_destroy
execute positioned ~ ~-2 ~15 run function sculk_hive:behavior/general/shrieker_destroy
execute positioned ~ ~-2 ~-15 run function sculk_hive:behavior/general/shrieker_destroy
execute positioned ~15 ~-2 ~15 run function sculk_hive:behavior/general/shrieker_destroy
execute positioned ~-15 ~-2 ~15 run function sculk_hive:behavior/general/shrieker_destroy
execute positioned ~15 ~-2 ~-15 run function sculk_hive:behavior/general/shrieker_destroy
execute positioned ~-15 ~-2 ~-15 run function sculk_hive:behavior/general/shrieker_destroy

execute positioned ~ ~-2 ~ run function sculk_hive:behavior/general/sensor_destroy
execute positioned ~15 ~-2 ~ run function sculk_hive:behavior/general/sensor_destroy
execute positioned ~-15 ~-2 ~ run function sculk_hive:behavior/general/sensor_destroy
execute positioned ~ ~-2 ~15 run function sculk_hive:behavior/general/sensor_destroy
execute positioned ~ ~-2 ~-15 run function sculk_hive:behavior/general/sensor_destroy
execute positioned ~15 ~-2 ~15 run function sculk_hive:behavior/general/sensor_destroy
execute positioned ~-15 ~-2 ~15 run function sculk_hive:behavior/general/sensor_destroy
execute positioned ~15 ~-2 ~-15 run function sculk_hive:behavior/general/sensor_destroy
execute positioned ~-15 ~-2 ~-15 run function sculk_hive:behavior/general/sensor_destroy

execute positioned ~ ~ ~ run function sculk_hive:behavior/general/shrieker_destroy
execute positioned ~15 ~ ~ run function sculk_hive:behavior/general/shrieker_destroy
execute positioned ~-15 ~ ~ run function sculk_hive:behavior/general/shrieker_destroy
execute positioned ~ ~ ~15 run function sculk_hive:behavior/general/shrieker_destroy
execute positioned ~ ~ ~-15 run function sculk_hive:behavior/general/shrieker_destroy
execute positioned ~15 ~ ~15 run function sculk_hive:behavior/general/shrieker_destroy
execute positioned ~-15 ~ ~15 run function sculk_hive:behavior/general/shrieker_destroy
execute positioned ~15 ~ ~-15 run function sculk_hive:behavior/general/shrieker_destroy
execute positioned ~-15 ~ ~-15 run function sculk_hive:behavior/general/shrieker_destroy

execute positioned ~ ~ ~ run function sculk_hive:behavior/general/sensor_destroy
execute positioned ~15 ~ ~ run function sculk_hive:behavior/general/sensor_destroy
execute positioned ~-15 ~ ~ run function sculk_hive:behavior/general/sensor_destroy
execute positioned ~ ~ ~15 run function sculk_hive:behavior/general/sensor_destroy
execute positioned ~ ~ ~-15 run function sculk_hive:behavior/general/sensor_destroy
execute positioned ~15 ~ ~15 run function sculk_hive:behavior/general/sensor_destroy
execute positioned ~-15 ~ ~15 run function sculk_hive:behavior/general/sensor_destroy
execute positioned ~15 ~ ~-15 run function sculk_hive:behavior/general/sensor_destroy
execute positioned ~-15 ~ ~-15 run function sculk_hive:behavior/general/sensor_destroy

execute positioned ~ ~-4 ~ run function sculk_hive:behavior/general/shrieker_destroy
execute positioned ~15 ~-4 ~ run function sculk_hive:behavior/general/shrieker_destroy
execute positioned ~-15 ~-4 ~ run function sculk_hive:behavior/general/shrieker_destroy
execute positioned ~ ~-4 ~15 run function sculk_hive:behavior/general/shrieker_destroy
execute positioned ~ ~-4 ~-15 run function sculk_hive:behavior/general/shrieker_destroy
execute positioned ~15 ~-4 ~15 run function sculk_hive:behavior/general/shrieker_destroy
execute positioned ~-15 ~-4 ~15 run function sculk_hive:behavior/general/shrieker_destroy
execute positioned ~15 ~-4 ~-15 run function sculk_hive:behavior/general/shrieker_destroy
execute positioned ~-15 ~-4 ~-15 run function sculk_hive:behavior/general/shrieker_destroy

execute positioned ~ ~-4 ~ run function sculk_hive:behavior/general/sensor_destroy
execute positioned ~15 ~-4 ~ run function sculk_hive:behavior/general/sensor_destroy
execute positioned ~-15 ~-4 ~ run function sculk_hive:behavior/general/sensor_destroy
execute positioned ~ ~-4 ~15 run function sculk_hive:behavior/general/sensor_destroy
execute positioned ~ ~-4 ~-15 run function sculk_hive:behavior/general/sensor_destroy
execute positioned ~15 ~-4 ~15 run function sculk_hive:behavior/general/sensor_destroy
execute positioned ~-15 ~-4 ~15 run function sculk_hive:behavior/general/sensor_destroy
execute positioned ~15 ~-4 ~-15 run function sculk_hive:behavior/general/sensor_destroy
execute positioned ~-15 ~-4 ~-15 run function sculk_hive:behavior/general/sensor_destroy

execute if block ~ ~ ~ air run setblock ~ ~ ~ chest[facing=south,type=single,waterlogged=false]{CustomName:'{"color":"#006F75","text":"Sculk Hive","italic": false}',LootTable:"sculk_hive:chests/loot"}
execute if block ~ ~ ~ water run setblock ~ ~ ~ chest[facing=south,type=single,waterlogged=true]{CustomName:'{"color":"#006F75","text":"Sculk Hive","italic": false}',LootTable:"sculk_hive:chests/loot"}

execute as @e[tag=sh_atk, distance=..64] at @s run function sculk_hive:behavior/general/reset_atk_scoreboard

tag @a[tag=sh_eff, distance=..64] remove sh_eff
tag @e[tag=sh_atk, distance=..64] remove sh_atk
tag @e[tag=sh_boomed, distance=..64] remove sh_boomed
tag @e[tag=sh_bite, distance=..64] remove sh_bite
tag @e[tag=sh_snk, distance=..64] remove sh_snk
tag @e[tag=sh_sta, distance=..64] remove sh_sta
tag @e[tag=sh_atk_normal, distance=..64] remove sh_atk_normal
tag @e[tag=sh_atk_undead, distance=..64] remove sh_atk_undead

kill @s