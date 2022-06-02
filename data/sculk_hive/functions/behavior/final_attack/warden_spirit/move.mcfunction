particle minecraft:sculk_soul ~ ~ ~ 0.1 0.1 0.1 0.00001 3 force
particle minecraft:soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.00001 3 force

execute if entity @e[tag=sh_spr_tgt,distance=..2] as @e[tag=sh_main, limit=1,sort=nearest] at @s run function sculk_hive:behavior/final_attack/warden_spirit/crash
execute if entity @e[tag=sh_spr_tgt,distance=..2] run kill @s

tp @s ~ ~ ~ facing entity @e[tag=sh_spr_tgt,limit=1,sort=nearest] feet
execute at @s run tp @s ^ ^ ^0.6