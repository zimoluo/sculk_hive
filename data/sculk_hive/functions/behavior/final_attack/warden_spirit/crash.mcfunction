execute store result score @s sh_hp run data get entity @e[tag=sh_final_hp,limit=1,sort=nearest] Health
execute store result score @s sh_max_hp run data get entity @e[tag=sh_final_hp,limit=1,sort=nearest] Attributes[{Name:"minecraft:generic.max_health"}].Base

scoreboard players add @s sh_hp 20
execute if score @s sh_hp >= @s sh_max_hp run function sculk_hive:behavior/final_attack/warden_spirit/hp_change
execute if score @s sh_max_hp matches 200.. run scoreboard players set @s sh_max_hp 200
execute if score @s sh_hp matches 200.. run scoreboard players set @s sh_hp 200
execute store result entity @e[tag=sh_final_hp,limit=1,sort=nearest] Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run scoreboard players get @s sh_max_hp
execute store result entity @e[tag=sh_final_hp,limit=1,sort=nearest] Health float 1 run scoreboard players get @s sh_hp



playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 2 1.2
particle minecraft:happy_villager ~ ~0.8 ~ 0.5 0.5 0.5 1 20 force