execute as @e[tag=sh_smn_fire,distance=..256] at @s run function sculk_hive:summon/structure_special/fire_end

execute positioned ~ ~1.5 ~ run playsound block.fire.extinguish hostile @a ~ ~ ~ 10 1
execute positioned ~ ~1.5 ~ run playsound block.fire.extinguish hostile @a ~ ~ ~ 10 0.9
execute positioned ~ ~1.5 ~ run playsound block.fire.extinguish hostile @a ~ ~ ~ 10 1.1

execute positioned ~-2 ~1 ~ if block ~ ~ ~ fire run setblock ~ ~ ~ air
execute positioned ~2 ~1 ~ if block ~ ~ ~ fire run setblock ~ ~ ~ air
execute positioned ~ ~1 ~2 if block ~ ~ ~ fire run setblock ~ ~ ~ air
execute positioned ~ ~1 ~-2 if block ~ ~ ~ fire run setblock ~ ~ ~ air
execute positioned ~ ~2 ~ if block ~ ~ ~ fire run setblock ~ ~ ~ air

execute positioned ~-2 ~-1 ~-2 run place template sculk_hive:vestige/boss ~ ~ ~

execute positioned ~ ~1.5 ~ run playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 10 1.1

execute positioned ~ ~1.5 ~ run particle sculk_soul ~ ~ ~ 3 1.5 3 0.000001 150 force

execute positioned ~ ~1.3 ~ run summon item ~ ~ ~ {Tags:["sh_smn_item"], Age:-18000s, Health:32767s, NoGravity:1b, Invulnerable:1b, PickupDelay:20s, Item:{id:"sculk_shrieker", Count:1b}}

execute if entity @a[gamemode=!spectator, gamemode=!creative, distance=..128,predicate=sculk_hive:vestige/in_vestige] run function sculk_hive:summon/structure_special/generate_supply

kill @s