scoreboard players set @s sh_fire_cd 0
execute store result score @s sh_fire_cd run data get entity @s Fire

execute if score @s sh_fire_cd matches ..200 run data merge entity @s {Fire:200s}