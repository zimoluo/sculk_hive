scoreboard players add @s sh_cd 1

execute if score @s sh_cd matches 160.. run function sculk_hive:behavior/sword/prep_ctrl/get_smn

particle minecraft:sculk_soul ~ ~2 ~ 0.5 0.5 0.5 0.00001 5 force
