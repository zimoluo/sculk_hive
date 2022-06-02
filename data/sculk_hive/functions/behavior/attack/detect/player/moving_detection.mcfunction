tag @s add sh_sta

execute if score @s sh_climb matches 1.. run tag @s remove sh_sta
execute if score @s sh_fall matches 1.. run tag @s remove sh_sta
execute if score @s sh_sprint matches 1.. run tag @s remove sh_sta
execute if score @s sh_fly matches 1.. run tag @s remove sh_sta
execute if score @s sh_swim matches 1.. run tag @s remove sh_sta
execute if score @s sh_walk matches 1.. run tag @s remove sh_sta
execute if score @s sh_walk_water matches 1.. run tag @s remove sh_sta
execute if score @s sh_boat matches 1.. run tag @s remove sh_sta
execute if score @s sh_aviate matches 1.. run tag @s remove sh_sta
execute if score @s sh_horse matches 1.. run tag @s remove sh_sta
execute if score @s sh_minecart matches 1.. run tag @s remove sh_sta
execute if score @s sh_strider matches 1.. run tag @s remove sh_sta
execute if score @s sh_pig matches 1.. run tag @s remove sh_sta
execute if score @s sh_jump matches 1.. run tag @s remove sh_sta

execute if score @s sh_snk matches 1.. run tag @s add sh_sta

function sculk_hive:behavior/attack/detect/player/reset_stats