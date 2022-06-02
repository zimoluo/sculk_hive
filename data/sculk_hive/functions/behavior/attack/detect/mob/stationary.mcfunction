function sculk_hive:behavior/attack/detect/mob/store_pos

execute if score @s sh_x = @s sh_last_x if score @s sh_z = @s sh_last_z if score @s sh_y = @s sh_last_y run tag @s add sh_sta


execute unless score @s sh_x = @s sh_last_x run tag @s remove sh_sta
execute unless score @s sh_y = @s sh_last_y run tag @s remove sh_sta
execute unless score @s sh_z = @s sh_last_z run tag @s remove sh_sta

execute unless score @s sh_sta_ttl matches 0..20 run scoreboard players set @s sh_sta_ttl 0
scoreboard players add @s sh_sta_ttl 1
execute if score @s sh_sta_ttl matches 21.. run scoreboard players operation @s sh_last_x = @s sh_x
execute if score @s sh_sta_ttl matches 21.. run scoreboard players operation @s sh_last_y = @s sh_y
execute if score @s sh_sta_ttl matches 21.. run scoreboard players operation @s sh_last_z = @s sh_z