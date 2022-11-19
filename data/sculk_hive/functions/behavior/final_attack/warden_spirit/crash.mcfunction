execute store result score @s sh_hp run data get entity @e[tag=sh_final_hp,limit=1,sort=nearest] Health
execute store result score @s sh_max_hp run attribute @e[tag=sh_final_hp,limit=1,sort=nearest] generic.max_health get

scoreboard players operation @s sh_hp += @s sh_final_hp_addition
execute if score @s sh_hp >= @s sh_max_hp run scoreboard players operation @s sh_max_hp = @s sh_hp
execute if score @s sh_max_hp >= @s sh_final_hp_max run scoreboard players operation @s sh_max_hp = @s sh_final_hp_max
execute if score @s sh_hp >= @s sh_final_hp_max run scoreboard players operation @s sh_hp = @s sh_final_hp_max

execute store result entity @e[tag=sh_final_hp,limit=1,sort=nearest] Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run scoreboard players get @s sh_max_hp
execute store result entity @e[tag=sh_final_hp,limit=1,sort=nearest] Health float 1 run scoreboard players get @s sh_hp



playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 4 1.2
particle minecraft:happy_villager ~ ~0.8 ~ 0.5 0.5 0.5 1 20 force