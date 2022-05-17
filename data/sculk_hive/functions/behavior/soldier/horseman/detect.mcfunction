execute if entity @s[type=skeleton_horse] unless entity @e[tag=sh_rdr,distance=..1] run kill @s

execute if entity @s[type=skeleton_horse] unless data entity @s {HurtTime:0s} at @s as @e[type=skeleton,tag=sh_rdr,limit=1,sort=nearest] at @s run data modify entity @s Health set from entity @e[type=skeleton_horse,tag=sh_sdr,limit=1,sort=nearest] Health