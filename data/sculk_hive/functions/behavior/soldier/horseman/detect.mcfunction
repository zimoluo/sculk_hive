scoreboard players set @s sh_riding_test 0

execute store result score @s sh_riding_test on passengers run data get entity @s DeathTime
execute unless score @s sh_riding_test matches 0 run kill @s

execute if data entity @s {HurtTime:10s} on passengers at @s run data modify entity @s Health set from entity @e[type=skeleton_horse,tag=sh_sdr,limit=1,sort=nearest] Health