scoreboard players add @s sh_cd 1

execute if score @s sh_cd matches 120.. align xyz positioned ~0.5 ~ ~0.5 run function sculk_hive:behavior/sword/terminate

particle minecraft:sculk_soul ~ ~ ~ 0.2 0.2 0.2 0.00001 1 force

data merge entity @s {Motion:[0.0d, 0.0d, 0.0d]}