scoreboard players set @s sh_riding_test 0

execute store result score @s sh_riding_test on vehicle run data get entity @s DeathTime
execute unless score @s sh_riding_test matches 0 run kill @s

function sculk_hive:behavior/aggro/tick

execute if data entity @s {HurtTime:10s} on vehicle at @s run data modify entity @s Health set from entity @s Passengers[0].Health