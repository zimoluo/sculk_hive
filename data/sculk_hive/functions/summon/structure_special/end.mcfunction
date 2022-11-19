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

execute positioned ~-1 ~ ~-1 if predicate sculk_hive:chance/06 run fill ~ ~ ~ ~ ~ ~ air replace soul_fire
execute positioned ~1 ~ ~-1 if predicate sculk_hive:chance/06 run fill ~ ~ ~ ~ ~ ~ air replace soul_fire
execute positioned ~-1 ~ ~1 if predicate sculk_hive:chance/06 run fill ~ ~ ~ ~ ~ ~ air replace soul_fire
execute positioned ~1 ~ ~1 if predicate sculk_hive:chance/06 run fill ~ ~ ~ ~ ~ ~ air replace soul_fire

execute positioned ~2 ~1.3 ~ run summon item ~ ~ ~ {Tags:["sh_smn_item"], Age:-18000s, Health:32767s, NoGravity:1b, Invulnerable:1b, PickupDelay:20s, Item:{id:"sculk_shrieker", Count:1b}}
execute positioned ~-2 ~1.3 ~ run summon item ~ ~ ~ {Tags:["sh_smn_item"], Age:-18000s, Health:32767s, NoGravity:1b, Invulnerable:1b, PickupDelay:20s, Item:{id:"flint_and_steel", Count:1b, tag:{Damage:0}}}
execute if entity @a[gamemode=!spectator, gamemode=!creative, distance=..32] positioned ~ ~1.3 ~2 run summon item ~ ~ ~ {Tags:["sh_smn_item"], Age:-18000s, Health:32767s, NoGravity:1b, Invulnerable:1b, PickupDelay:20s, Item:{id:"enchanted_golden_apple", Count:3b}}
execute if entity @a[gamemode=!spectator, gamemode=!creative, distance=..32] positioned ~ ~1.3 ~-2 run summon item ~ ~ ~ {Tags:["sh_smn_item"], Age:-18000s, Health:32767s, NoGravity:1b, Invulnerable:1b, PickupDelay:20s, Item:{id:"totem_of_undying", Count:1b}}

kill @s