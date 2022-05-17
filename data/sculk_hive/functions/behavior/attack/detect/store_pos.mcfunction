scoreboard players set @s sh_x 0
scoreboard players set @s sh_z 0
scoreboard players set @s sh_y 0

execute store result score @s sh_x run data get entity @s Pos[0]
execute store result score @s sh_y run data get entity @s Pos[1]
execute store result score @s sh_z run data get entity @s Pos[2]