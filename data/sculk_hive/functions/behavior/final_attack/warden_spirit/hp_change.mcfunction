execute if score @s sh_max_hp matches 200.. run scoreboard players set @s sh_max_hp 200
execute if score @s sh_hp matches 200.. run scoreboard players set @s sh_hp 200

scoreboard players operation @s sh_max_hp = @s sh_hp